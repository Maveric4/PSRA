#include <iostream>
#include"opencv2/opencv.hpp"
#include"opencv2/core/core.hpp"
#include"opencv2/highgui/highgui.hpp"
#include"opencv2/imgproc/imgproc.hpp"
#include <math.h>

#define iStart 1
#define iEnd 1201
#define iStep 3

typedef cv::Vec<uchar,3> vec_uchar_3;

#define binThresh 70
#define mov_binThresh 30
#define areaThresh 500
#define median_ksize 5
#define ksize 3

static cv::Rect pointSetBoundingRect( const cv::Mat& points , cv::Mat m);
float countPercantegOfMovingPixels(const cv::Mat& points, cv::Mat movMask);

int main() {
    std::cout << "Hello, World!" << std::endl;
    char buffer[100];
    cv::Mat inputImage;
    cv::Mat imageToShow;
    cv::Mat inputImage_prev;
    cv::Mat movMask;
    cv::Mat bgModel;

    int sum = 0;
    int mov_sum = 0;
    int labels_num = 0;

    cv::Mat labels;
    cv::Mat stats;
    cv::Mat centroids;

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
//        sum = 0;
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
//        mov_sum = 0;
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
        cv::morphologyEx(movMask, movMask, cv::MORPH_CLOSE, kernel, cv::Point(-1,-1), 5);

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

//       // Indeksacja
//        labels_num = cv::connectedComponentsWithStats(fgMask, labels, stats, centroids, 4, CV_16U); //, cv::CCL_DEFAULT );
//
//        for(int i=1; i<stats.rows; i++) {
//            int x = stats.at<int>(cv::Point(0, i));
//            int y = stats.at<int>(cv::Point(1, i));
//            int w = stats.at<int>(cv::Point(2, i));
//            int h = stats.at<int>(cv::Point(3, i));
//            int area = stats.at<int>(cv::Point(4, i));
//            int max = stats.at<int>(cv::Point(5, i));
//
//            //std::cout << "x=" << x << " y=" << y << " w=" << w << " h=" << h << std::endl;
//
//            if(area > 300)
//            {
//                cv::Scalar color(255, 0, 0);
//                cv::Rect rect(x, y, w, h);
//                cv::rectangle(inputImage, rect, color);
//            }
//
//        }

        // Indeksacja II
        std::vector<std::vector<cv::Point>> contours;
        std::vector<cv::Vec4i> hierarchy;


        cv::findContours(fgMask, contours, hierarchy, cv::RETR_CCOMP, cv::CHAIN_APPROX_SIMPLE);
//        std::vector<std::vector<cv::Point> > contours0;
//        contours.resize(contours0.size());
//        for( size_t k = 0; k < contours0.size(); k++ )
//            approxPolyDP(cv::Mat(contours0[k]), contours[k], 3, true);

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
        float percentage = 0;
        for( size_t i = 0; i < contours.size(); i++ )
        {
            cv::Scalar color(255, 0, 0);
//            drawContours( inputImage, contours, (int)i, color, 2, 8, hierarchy, 0, cv::Point() );
//            int w = 50;
//            int h = 100;
//            cv::Rect rect(mc[i].x - w/2, mc[i].y - h/2, w, h);
            minRect = pointSetBoundingRect( cv::Mat(contours[i]),imageToShow );
            if(areas[i] > areaThresh) {
                cv::rectangle(imageToShow, minRect, color);
                percentage = countPercantegOfMovingPixels(cv::Mat(contours[i]), movMask);
            }
            cv::putText(imageToShow, "obj", cv::Point(mc[i].x, mc[i].y), cv::FONT_HERSHEY_SIMPLEX, 0.2, color);
        }

        inputImage_prev = inputImage.clone();
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

float countPercantegOfMovingPixels(const cv::Mat& points, cv::Mat movMask)
{
    int npoints = points.checkVector(2);
    const cv::Point* pts = points.ptr<cv::Point>();
    cv::Point pt = pts[0];

    for( int i = 0; i < npoints; i++ ) {
        pt = pts[i];
//        std::cout << "X: " << pt.x << " Y: " << pt.y << std::endl;

    }

}