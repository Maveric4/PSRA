#include <iostream>
#include"opencv2/opencv.hpp"
#include"opencv2/core/core.hpp"
#include"opencv2/highgui/highgui.hpp"
#include"opencv2/imgproc/imgproc.hpp"
#include <math.h>
#include <list>

#define iStart 1
#define iEnd 1201
#define iStep 3

typedef cv::Vec<uchar,3> vec_uchar_3;

#define binThresh 90
#define mov_binThresh 50
#define areaThresh 300
#define median_ksize 3
#define ksize 3
#define areaRatioThresh 0.9
#define commonAreaRatioThresh 0.70
#define frameCounterThresh 35

struct recog_object {
    cv::Point2f mc;
    double area = 0.0;
    cv::Rect rect;
    bool isVisible = false;
    int frameCounter = 0;
};

static cv::Rect pointSetBoundingRect( const cv::Mat& points , cv::Mat m);
float calculateCommonRectArea(recog_object act_obj, recog_object prev_obj);
float calculateCommonAreaRatio(float commonArea, recog_object prev_obj);
float calculateAreaRatio(recog_object act_obj, recog_object prev_obj);

int main() {
    char buffer[100];
    cv::Mat inputImage;
    cv::Mat imageToShow;
    cv::Mat inputImage_prev;
    cv::Mat movMask;
    cv::Mat bgModel;

    int sum = 0;
    int mov_sum = 0;

    cv::Mat labels;
    cv::Mat stats;
    cv::Mat centroids;

    std::list<recog_object> prev_list = std::list<recog_object>();
    std::list<recog_object> act_list = std::list<recog_object>();

    for(int iImage = iStart; iImage < iEnd; iImage += iStep) {
        sprintf(buffer, "in%06d.jpg", iImage);
        std::string s_sequencePath = "../pets_2006/";
        inputImage = cv::imread(s_sequencePath + buffer);
        imageToShow = inputImage.clone();
        if(iImage == iStart) {
            bgModel = inputImage.clone();
            inputImage_prev = inputImage.clone();
        }

        //Segmentacja obiektów pierwszoplanowych
        cv::Mat fgMask = cv::Mat::zeros(inputImage.rows, inputImage.cols, CV_8U);
        for(int jj=0; jj < inputImage.rows; jj++) {
            for (int ii = 0; ii < inputImage.cols; ii++) {
                vec_uchar_3 in_pixel = inputImage.at<vec_uchar_3>(jj, ii);
                vec_uchar_3 m_pixel = bgModel.at<vec_uchar_3>(jj, ii);
                sum = 0;
                for (int k = 0; k < 3; k++)
                    sum += cv::abs(in_pixel[k] - m_pixel[k]);

                if (sum > binThresh)
                    fgMask.at<uchar>(jj, ii) = 255;
            }
        }

        //Filtracja medianowa maski obiektów pierwszoplanowych i operacje morfologiczne
//        cv::imshow("Przed", fgMask);
        cv::medianBlur(fgMask, fgMask, median_ksize);
        cv::Mat kernel = cv::getStructuringElement(cv::MORPH_RECT,  cv::Size(ksize, ksize));
        cv::morphologyEx(fgMask, fgMask, cv::MORPH_CLOSE, kernel, cv::Point(-1,-1), 3);
//        cv::morphologyEx(fgMask, fgMask, cv::MORPH_OPEN, kernel);
//        cv::imshow("Po", fgMask);

        //Segmentacja obiektów ruchomych
        movMask = cv::Mat::zeros(inputImage.rows, inputImage.cols, CV_8U);
        for(int jj=0; jj < movMask.rows; jj++) {
            for (int ii = 0; ii < movMask.cols; ii++) {
                vec_uchar_3 in_pixel = inputImage.at<vec_uchar_3>(jj, ii);
                vec_uchar_3 prev_pixel = inputImage_prev.at<vec_uchar_3>(jj, ii);
                mov_sum = 0;
                for (int k = 0; k < 3; k++)
                    mov_sum += cv::abs(in_pixel[k] - prev_pixel[k]);

                if (mov_sum > mov_binThresh){
                    movMask.at<uchar>(jj, ii) = 255;
                }
            }
        }

        //Filtracja medianowa maski obiektów ruchomych i operacje morfologiczne
        cv::medianBlur(movMask, movMask, median_ksize);
        cv::morphologyEx(movMask, movMask, cv::MORPH_CLOSE, kernel, cv::Point(-1,-1), 3);

        //Aktualizacja
        for(int jj=0; jj < inputImage.rows; jj++) {
            for(int ii=0; ii < inputImage.cols; ii++) {
                vec_uchar_3 in_pixel = inputImage.at<vec_uchar_3>(jj,ii);
                vec_uchar_3 m_pixel = bgModel.at<vec_uchar_3>(jj,ii);
                if(fgMask.at<uchar>(jj, ii) == 0 && movMask.at<uchar>(jj, ii) == 0) {
                    for (int k = 0; k < 3; k++) {
                        if (in_pixel[k] - m_pixel[k] > 0)
                            bgModel.at<vec_uchar_3>(jj, ii)[k] += 1;
                        if (in_pixel[k] - m_pixel[k] < 0)
                            bgModel.at<vec_uchar_3>(jj, ii)[k] -= 1;
                    }
                }
            }
        }

//       // Indeksacja I
//        labels_num = cv::connectedComponentsWithStats(fgMask, labels, stats, centroids, 4, CV_16U); //, cv::CCL_DEFAULT );
//
//        for(int i=1; i<stats.rows; i++) {
//            int x = stats.at<int>(cv::Point(0, i));
//            int y = stats.at<int>(cv::Point(1, i));
//            int w = stats.at<int>(cv::Point(2, i));
//            int h = stats.at<int>(cv::Point(3, i));
//            int area = stats.at<int>(cv::Point(4, i));
//            int max = stats.at<int>(cv::Point(5, i));
//            //std::cout << "x=" << x << " y=" << y << " w=" << w << " h=" << h << std::endl;
//            if(area > 300)
//            {
//                cv::Scalar color(255, 0, 0);
//                cv::Rect rect(x, y, w, h);
//                cv::rectangle(inputImage, rect, color);
//            }
//        }

        // Indeksacja II
        std::vector<std::vector<cv::Point>> contours;
        std::vector<cv::Vec4i> hierarchy;
        cv::findContours(fgMask, contours, hierarchy, cv::RETR_CCOMP, cv::CHAIN_APPROX_SIMPLE);

        /// Get the moments, mass centers and areas
        std::vector<cv::Moments> mu(contours.size());
        std::vector<cv::Point2f> mc( contours.size() );
        std::vector<cv::Point> min_max( contours.size() );
        std::vector<double> areas(contours.size());
        for( int i = 0; i < contours.size(); i++ ){
            mu[i] = cv::moments( contours[i], false);
            areas[i] = cv::contourArea(contours[i]);
            mc[i] = cv::Point2f( float(mu[i].m10/mu[i].m00) , float(mu[i].m01/mu[i].m00));
        }

        cv::Rect minRect;
        for( size_t i = 0; i < contours.size(); i++ )
        {
            cv::Scalar color(255, 0, 0);
            recog_object new_obj;

            if(areas[i] > areaThresh) {
                minRect = pointSetBoundingRect(cv::Mat(contours[i]), imageToShow);
                cv::rectangle(imageToShow, minRect, color);
                new_obj.mc = mc[i];
                new_obj.rect = minRect;
                new_obj.area = minRect.width * minRect.height;

                if(iImage == iStart) {
                    prev_list.push_back(new_obj);
                }
                else {
                    act_list.push_back(new_obj);
                }
            }
//            cv::putText(imageToShow, "obj", cv::Point(int(mc[i].x), int(mc[i].y)), cv::FONT_HERSHEY_SIMPLEX, 0.2, color);
        }

        std::list<recog_object>::iterator act_obj;
        std::list<recog_object>::iterator prev_obj;

        for(act_obj=act_list.begin(); act_obj != act_list.end(); act_obj++)
        {
            float commonRectArea = 0;
            float commonAreaRatio = 0;
            float areaRatio = 0;
            float max_commonRectArea = 0;
            std::list<recog_object>::iterator f_obj;
            bool objectFound = false;
            for(prev_obj=prev_list.begin(); prev_obj != prev_list.end(); prev_obj++)
            {
                commonRectArea = calculateCommonRectArea(*act_obj, *prev_obj);
                commonAreaRatio = calculateCommonAreaRatio(commonRectArea, *prev_obj);
                areaRatio = calculateAreaRatio(*act_obj, *prev_obj);
                if(commonRectArea > max_commonRectArea)
                    if(areaRatio > areaRatioThresh and commonAreaRatio > commonAreaRatioThresh) {
                        max_commonRectArea = areaRatio;
                        f_obj = prev_obj;
                        objectFound = true;
                    }
            }
            if(objectFound){
                (*f_obj).area = (*act_obj).area;
                (*f_obj).rect = (*act_obj).rect;
                (*f_obj).frameCounter++;
                (*f_obj).isVisible = true;
            }
            if(not objectFound) {
                prev_list.push_back(*act_obj);
            }
        }

        for(prev_obj=prev_list.begin(); prev_obj != prev_list.end(); prev_obj++)
        {
            if((*prev_obj).frameCounter > frameCounterThresh)
            {
                std::cout << (*prev_obj).frameCounter << std::endl;
                cv::Scalar colorR(0, 0, 255);
                cv::putText(imageToShow, "BOMBA", cv::Point2f((*prev_obj).rect.x,(*prev_obj).rect.y+2*(*prev_obj).rect.height), cv::FONT_HERSHEY_SIMPLEX, 0.5, colorR, 2);
                cv::rectangle(imageToShow, (*prev_obj).rect, colorR);
            }
            if(not (*prev_obj).isVisible)
                prev_list.erase(prev_obj++);
        }

        // Clone actual objects to previous ones
        inputImage_prev = inputImage.clone();
        act_list.clear();

        // Display images
        cv::imshow("bgModel", bgModel);
        cv::imshow("Segmentacja obiektów pierwszoplanowych", fgMask);
        cv::imshow("Segmentacja obiektów ruchomych", movMask);
        cv::imshow("InputImage", imageToShow);

        int k = cv::waitKey(1);
        if( k == int('q'))
            break;
        else if(k == int('p'))
            cv::waitKey(0);

    }
    cv::destroyAllWindows();
    return 0;
}

static cv::Rect pointSetBoundingRect( const cv::Mat& points , cv::Mat m)
{
    int npoints = points.checkVector(2);
    int  xmin = 0, ymin = 0, xmax = -1, ymax = -1, i;
    cv::Point ptxmin , ptymin , ptxmax , ptymax;
    if( npoints == 0 )
        return cv::Rect();

    const cv::Point* pts = points.ptr<cv::Point>();
    cv::Point pt = pts[0];

    ptxmin = ptymin = ptxmax = ptymax = pt;
    xmin = xmax = pt.x;
    ymin = ymax = pt.y;

    for( i = 0; i < npoints; i++ )
    {
        pt = pts[i];

        if( xmin > pt.x )
        {
            xmin = pt.x;
            ptxmin = pt;
        }


        if( xmax < pt.x )
        {
            xmax = pt.x;
            ptxmax = pt;
        }

        if( ymin > pt.y )
        {
            ymin = pt.y;
            ptymin = pt;
        }

        if( ymax < pt.y )
        {
            ymax = pt.y;
            ptymax = pt;
        }
    }
    ellipse( m, ptxmin, cv::Size( 3, 3), 0, 0, 360, cv::Scalar( 255, 0, 255 ), 2, 8, 0 );
    ellipse( m, ptxmax, cv::Size( 3, 3), 0, 0, 360, cv::Scalar( 255, 0, 255 ), 2, 8, 0 );
    ellipse( m, ptymin, cv::Size( 3, 3), 0, 0, 360, cv::Scalar( 255, 0, 255 ), 2, 8, 0 );
    ellipse( m, ptymax, cv::Size( 3, 3), 0, 0, 360, cv::Scalar( 255, 0, 255 ), 2, 8, 0 );
    return cv::Rect(xmin, ymin, xmax - xmin + 1, ymax - ymin + 1);
}

float calculateCommonRectArea(recog_object act_obj, recog_object prev_obj)
{
    int rect1_right = act_obj.rect.x + act_obj.rect.width;
    int rect2_right = prev_obj.rect.x + prev_obj.rect.width;
    int rect1_left = act_obj.rect.x;
    int rect2_left = prev_obj.rect.x;
    int rect1_bottom = act_obj.rect.y + act_obj.rect.height;
    int rect2_bottom = prev_obj.rect.y + prev_obj.rect.height;
    int rect1_top = act_obj.rect.y;
    int rect2_top = prev_obj.rect.y;

//    std::cout << rect1_right << " " << rect2_right << " " << rect1_left << " " << rect2_left << " " << rect1_bottom << " " << rect2_bottom << " " <<rect1_top << " " << rect2_top << " " << std::endl;

    float x_overlap = std::max(0, std::min(rect1_right, rect2_right) - std::max(rect1_left, rect2_left));
    float y_overlap = std::max(0, std::min(rect1_bottom, rect2_bottom) - std::max(rect1_top, rect2_top));
    return x_overlap * y_overlap;
}

float calculateCommonAreaRatio(float commonArea, recog_object prev_obj)
{
    return commonArea / prev_obj.area;
}

float calculateAreaRatio(recog_object act_obj, recog_object prev_obj)
{
    return act_obj.area / prev_obj.area;
}