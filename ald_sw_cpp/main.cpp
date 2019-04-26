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

#define binThresh 100
#define mov_binThresh 100

int main() {
    std::cout << "Hello, World!" << std::endl;
    char buffer[100];
    cv::Mat inputImage;
    cv::Mat inputImage_prev;
    cv::Mat movMask;
    cv::Mat bgModel;

    int sum = 0;
    int mov_sum = 0;


    for(int iImage = iStart; iImage < iEnd; iImage += iStep) {
        sprintf(buffer, "in%06d.jpg", iImage);
        std::string s_sequencePath = "../pets_2006/";
        inputImage = cv::imread(s_sequencePath + buffer);
        if(iImage == iStart)
            bgModel = inputImage.clone();
            inputImage_prev = inputImage.clone();

        //Segmentacja
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

        //Aktualizacja
        for(int jj=0; jj < inputImage.rows; jj++) {
            for(int ii=0; ii < inputImage.cols; ii++) {
                vec_uchar_3 in_pixel = inputImage.at<vec_uchar_3>(jj,ii);
                vec_uchar_3 m_pixel = bgModel.at<vec_uchar_3>(jj,ii);
                if(fgMask.at<uchar>(jj, ii) == 0) {
                    for (int k = 0; k < 3; k++) {
                        if (in_pixel[k] - m_pixel[k] > 0)
                            bgModel.at<vec_uchar_3>(jj, ii)[k] += 1;
                        if (in_pixel[k] - m_pixel[k] < 0)
                            bgModel.at<vec_uchar_3>(jj, ii)[k] -= 1;
                    }
                }

            }
        }

        //Segmentacja obiektów ruchomych
//        mov_sum = 0;
        movMask = cv::Mat::zeros(inputImage.rows, inputImage.cols, CV_8U);
        for(int jj=0; jj < movMask.rows; jj++) {
            for (int ii = 0; ii < movMask.cols; ii++) {
                vec_uchar_3 in_pixel = inputImage.at<vec_uchar_3>(jj, ii);
                vec_uchar_3 m_pixel = inputImage_prev.at<vec_uchar_3>(jj, ii);
                mov_sum = 0;
                for (int k = 0; k < 3; k++)
                    sum += cv::abs(in_pixel[k] - m_pixel[k]);

                if (sum > binThresh)
                    fgMask.at<uchar>(jj, ii) = 255;
            }
        }

        inputImage_prev = inputImage.clone();
        cv::imshow("bgModel", bgModel);
        cv::imshow("maska", fgMask);
        cv::imshow("Inputimage", inputImage);
        cv::waitKey(1);
    }

    return 0;
}