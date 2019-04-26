#include <iostream>
#include"opencv2/opencv.hpp"
#include"opencv2/core/core.hpp"
#include"opencv2/highgui/highgui.hpp"
#include"opencv2/imgproc/imgproc.hpp"

#include <iostream>
#include"opencv2/opencv.hpp"
#include"opencv2/core/core.hpp"
#include"opencv2/highgui/highgui.hpp"
#include"opencv2/imgproc/imgproc.hpp"

#define iStart 1
#define iEnd 1201
#define iStep 5

typedef cv::Vec<uchar,3> vec_uchar_3;

#define binThresh 70
#define mov_binThresh 25
#define median_ksize 5
#define ksize 3

int main() {
    std::cout << "Hello, World!" << std::endl;
    char buffer[100];
    cv::Mat inputImage;
    cv::Mat inputImage_prev;
    cv::Mat movMask;
    cv::Mat bgModel;

    int sum = 0;
    int mov_sum = 0;
    int labels_num = 0;

    cv::Mat labels;
    cv::Mat stats;
    cv::Mat centroids;

    bool x1 = true;

    for(int iImage = iStart; iImage < iEnd; iImage += iStep) {
        sprintf(buffer, "in%06d.jpg", iImage);
        std::string s_sequencePath = "../pets_2006/";
        inputImage = cv::imread(s_sequencePath + buffer);
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

        //Filtracja medianowa maski obiektów pierwszoplanowych
        cv::imshow("Przed", fgMask);
        cv::medianBlur(fgMask, fgMask, median_ksize);
        cv::Mat kernel = cv::getStructuringElement(cv::MORPH_RECT,  cv::Size(ksize, ksize));
        cv::morphologyEx(fgMask, fgMask, cv::MORPH_CLOSE, kernel, cv::Point(-1,-1), 3);
//        cv::morphologyEx(fgMask, fgMask, cv::MORPH_OPEN, kernel);
        cv::imshow("Po", fgMask);

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

        //Indeksacja
        labels_num = cv::connectedComponentsWithStats(fgMask, labels, stats, centroids, 4, CV_16U); //, cv::CCL_DEFAULT );
        int max = 0;
        for(int i=1; i<stats.rows; i++) {
            int x = stats.at<int>(cv::Point(0, i));
            int y = stats.at<int>(cv::Point(1, i));
            int w = stats.at<int>(cv::Point(2, i));
            int h = stats.at<int>(cv::Point(3, i));
            int area = stats.at<int>(cv::Point(4, i));
            max = stats.at<int>(cv::Point(5, i));
//            if(x1 && iImage == 100)
                std::cout << max << std::endl;

            //std::cout << "x=" << x << " y=" << y << " w=" << w << " h=" << h << std::endl;

            cv::Scalar color(255, 0, 0);
            cv::Rect rect(x, y, w, h);
            cv::rectangle(inputImage, rect, color);
        }
        if(x1) {

            std::cout << max << std::endl;
            x1 = false;
        }



        inputImage_prev = inputImage.clone();
        cv::imshow("bgModel", bgModel);
//        cv::imshow("Segmentacja obiektów pierwszoplanowych", fgMask);
        cv::imshow("Segmetancja obiektów ruchomych", movMask);
        cv::imshow("Inputimage", inputImage);
        cv::waitKey(1);
    }

    return 0;
}