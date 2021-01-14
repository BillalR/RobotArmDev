////////////////////////////////////////////////////////////////
// ELEX 7825 Template project for BCIT
// Created Sept 9, 2020 by Craig Hennessey
// Last updated Sept 9, 2020
////////////////////////////////////////////////////////////////

#include <stdio.h>
#include <string>
#include <iostream>
#include <thread>
#include <unistd.h>
#include <math.h>
#include <vector>
#include <tuple>
#include <opencv2/aruco/charuco.hpp>
#include <opencv2/highgui.hpp>
//My own header files
#include "CRobot.hpp"
// OpenCV
#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;

//Class object definitions
Box *BoxParam; //Pointer to class method

//////////////////////////////////////////////////////////////////////////////////////////////////
//

//void createBoard();
//void detectCharucoBoardWithCalibrationPose();
//void detectCharucoBoardWithoutCalibration();
/*
static bool readCameraParameters(std::string filename, cv::Mat& camMatrix, cv::Mat& distCoeffs)
{
    cv::FileStorage fs(filename, cv::FileStorage::READ);
    if (!fs.isOpened())
        return false;
    fs["camera_matrix"] >> camMatrix;
    fs["distortion_coefficients"] >> distCoeffs;
    return true;
}
void createBoard()
{
    cv::Ptr<cv::aruco::Dictionary> dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::DICT_6X6_250);
    cv::Ptr<cv::aruco::CharucoBoard> board = cv::aruco::CharucoBoard::create(5, 7, 0.04f, 0.02f, dictionary);
    cv::Mat boardImage;
    board->draw(cv::Size(600, 500), boardImage, 10, 1);
    cv::imwrite("BoardImage.jpg", boardImage);
}
void detectCharucoBoardWithCalibrationPose()
{
    cv::VideoCapture inputVideo;
    inputVideo.open(0);
    cv::Mat cameraMatrix, distCoeffs;
    std::string filename = "calib.txt";
    bool readOk = readCameraParameters(filename, cameraMatrix, distCoeffs);
    if (!readOk) {
        std::cerr << "Invalid camera file" << std::endl;
    } else {
        cv::Ptr<cv::aruco::Dictionary> dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::DICT_6X6_250);
        cv::Ptr<cv::aruco::CharucoBoard> board = cv::aruco::CharucoBoard::create(5, 7, 0.04f, 0.02f, dictionary);
        cv::Ptr<cv::aruco::DetectorParameters> params = cv::aruco::DetectorParameters::create();
        while (inputVideo.grab()) {
            cv::Mat image;
            cv::Mat imageCopy;
            inputVideo.retrieve(image);
            image.copyTo(imageCopy);
            std::vector<int> markerIds;
            std::vector<std::vector<cv::Point2f> > markerCorners;
            cv::aruco::detectMarkers(image, board->dictionary, markerCorners, markerIds, params);
            // if at least one marker detected
            if (markerIds.size() > 0) {
                cv::aruco::drawDetectedMarkers(imageCopy, markerCorners, markerIds);
                std::vector<cv::Point2f> charucoCorners;
                std::vector<int> charucoIds;
                cv::aruco::interpolateCornersCharuco(markerCorners, markerIds, image, board, charucoCorners, charucoIds, cameraMatrix, distCoeffs);
                // if at least one charuco corner detected
                if (charucoIds.size() > 0) {
                    cv::Scalar color = cv::Scalar(255, 0, 0);
                    cv::aruco::drawDetectedCornersCharuco(imageCopy, charucoCorners, charucoIds, color);
                    cv::Vec3d rvec, tvec;
                    // cv::aruco::estimatePoseCharucoBoard(charucoCorners, charucoIds, board, cameraMatrix, distCoeffs, rvec, tvec);
                    bool valid = cv::aruco::estimatePoseCharucoBoard(charucoCorners, charucoIds, board, cameraMatrix, distCoeffs, rvec, tvec);
                    // if charuco pose is valid
                    if (valid)
                        cv::aruco::drawAxis(imageCopy, cameraMatrix, distCoeffs, rvec, tvec, 0.1f);
                }
            }
            cv::imshow("out", imageCopy);
            char key = (char)cv::waitKey(30);
            if (key == 27)
                break;
        }
    }
}
void detectCharucoBoardWithoutCalibration()
{
    cv::VideoCapture inputVideo;
    inputVideo.open(0);
    cv::Ptr<cv::aruco::Dictionary> dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::DICT_6X6_250);
    cv::Ptr<cv::aruco::CharucoBoard> board = cv::aruco::CharucoBoard::create(5, 7, 0.04f, 0.02f, dictionary);
    cv::Ptr<cv::aruco::DetectorParameters> params = cv::aruco::DetectorParameters::create();
    params->cornerRefinementMethod = cv::aruco::CORNER_REFINE_NONE;
    while (inputVideo.grab()) {
        cv::Mat image, imageCopy;
        inputVideo.retrieve(image);
        image.copyTo(imageCopy);
        std::vector<int> markerIds;
        std::vector<std::vector<cv::Point2f> > markerCorners;
        cv::aruco::detectMarkers(image, board->dictionary, markerCorners, markerIds, params);
        //or
        //cv::aruco::detectMarkers(image, dictionary, markerCorners, markerIds, params);
        // if at least one marker detected
        if (markerIds.size() > 0) {
            cv::aruco::drawDetectedMarkers(imageCopy, markerCorners, markerIds);
            std::vector<cv::Point2f> charucoCorners;
            std::vector<int> charucoIds;
            cv::aruco::interpolateCornersCharuco(markerCorners, markerIds, image, board, charucoCorners, charucoIds);
            // if at least one charuco corner detected
            if (charucoIds.size() > 0)
                cv::aruco::drawDetectedCornersCharuco(imageCopy, charucoCorners, charucoIds, cv::Scalar(255, 0, 0));
        }
        cv::imshow("out", imageCopy);
        char key = (char)cv::waitKey(30);
        if (key == 27)
            break;
    }
}
*/


void drawPose(Mat &im, Mat T)
{
}

void end_effector(float L1, float L2, float L3, float L4)
{
  Mat T0 = BoxParam->createHT(0, 0, 0, 0 , 0, (L1/180)*CV_PI);
  Mat T1 = T0 * BoxParam->createHT(200, 0, 0, 0, 0, (L2/180)*CV_PI);
  Mat T2 = T1 * BoxParam->createHT(200, 0, 0, CV_PI, 0, (L3/180)*CV_PI);
  Mat T3 = T2 * BoxParam->createHT(0, 0, L4, 0, 0, 0);

  cout << setprecision(1) << endl << T3 << endl << endl;
}

void init()
{
  float view_angle = 0.2; // 0.2 looks good

  //Vectors
  std::vector<Scalar> colour;
  std::vector<Mat> Box;

  Size image_size = Size(1280, 720);

  cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
  //cv::namedWindow("7825 Project");

  std::vector <Mat> Link0 = BoxParam->createBox(0, 0, 0);
  std::vector <Mat> Link1 = BoxParam->createBox(200, 50, 50);
  std::vector <Mat> Link2 = BoxParam->createBox(200, 50, 50);
  std::vector <Mat> Link3 = BoxParam->createBox(200, 50, 50);

  Mat T0 = BoxParam->createHT(im.size().width/2, im.size().height/2, 0, CV_PI + view_angle, 0, 0);
  Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, 0, 0);
  Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
  Mat T3 = T2 * BoxParam->createHT(225, 0, 0, 0, 0, -1*CV_PI/2);

  BoxParam->transformBox(Link0, T0);
  BoxParam->transformBox(Link1, T1);
  BoxParam->transformBox(Link2, T2);
  BoxParam->transformBox(Link3, T3);

  colour.push_back(CV_RGB(255,255,255));
  colour.push_back(CV_RGB(255,0,0));
  colour.push_back(CV_RGB(0,255,0));
  colour.push_back(CV_RGB(0,0,255));
  BoxParam->updateMan(im, Link0, Link1, Link2, Link3, colour);
  //waitKey(0);
  //waitKey(1);
}

void animate()
{
  //do {
    //Variables

    float view_angle = 0.2; // 0.2 looks good

    //Vectors
    std::vector<Scalar> colour;
    std::vector<Mat> Box;

    Size image_size = Size(1280, 720);

    for(float i = 0; i < 360; i = i + 4)
    {
    cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
    //cv::namedWindow("7825 Project");

    std::vector <Mat> Link0 = BoxParam->createBox(0, 0, 0);
    std::vector <Mat> Link1 = BoxParam->createBox(200, 50, 50);
    std::vector <Mat> Link2 = BoxParam->createBox(200, 50, 50);
    std::vector <Mat> Link3 = BoxParam->createBox(200, 50, 50);

    std::vector<Mat> xAxes1 = BoxParam->createLine(25,0,0);
    std::vector<Mat> yAxes1 = BoxParam->createLine(0,25,0);
    std::vector<Mat> zAxes1 = BoxParam->createLine(0,0,25);

    Mat T0 = BoxParam->createHT(im.size().width/2, im.size().height/2, 0, CV_PI + view_angle, 0, 0);
    Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, (i/180)*CV_PI, 0);
    Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
    Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
    Mat T4 = T3 * BoxParam->createHT(0, 0, 0, 0, 0, -1*CV_PI/2);

    BoxParam->transformBox(Link0, T0);
    BoxParam->transformBox(Link1, T1);
    BoxParam->transformBox(Link2, T2);
    BoxParam->transformBox(Link3, T4);

    colour.push_back(CV_RGB(255,255,255));
    colour.push_back(CV_RGB(255,0,0));
    colour.push_back(CV_RGB(0,255,0));
    colour.push_back(CV_RGB(0,0,255));


    std::vector<Mat> xAxes2 = BoxParam->createLine(25,0,0);
    std::vector<Mat> yAxes2 = BoxParam->createLine(0,25,0);
    std::vector<Mat> zAxes2 = BoxParam->createLine(0,0,25);

    BoxParam->transformBox(xAxes2,T1);
    BoxParam->transformBox(yAxes2,T1);
    BoxParam->transformBox(zAxes2,T1);

    BoxParam->drawBox(im, xAxes2, colour[1], 1);
    BoxParam->drawBox(im, yAxes2, colour[2], 1);
    BoxParam->drawBox(im, zAxes2, colour[3], 1);

    std::vector<Mat> xAxes3 = BoxParam->createLine(25,0,0);
    std::vector<Mat> yAxes3 = BoxParam->createLine(0,25,0);
    std::vector<Mat> zAxes3 = BoxParam->createLine(0,0,25);

    BoxParam->transformBox(xAxes3,T2);
    BoxParam->transformBox(yAxes3,T2);
    BoxParam->transformBox(zAxes3,T2);

    BoxParam->drawBox(im, xAxes3, colour[1], 1);
    BoxParam->drawBox(im, yAxes3, colour[2], 1);
    BoxParam->drawBox(im, zAxes3, colour[3], 1);

    std::vector<Mat> xAxes4 = BoxParam->createLine(25,0,0);
    std::vector<Mat> yAxes4 = BoxParam->createLine(0,25,0);
    std::vector<Mat> zAxes4 = BoxParam->createLine(0,0,25);

    BoxParam->transformBox(xAxes4,T3);
    BoxParam->transformBox(yAxes4,T3);
    BoxParam->transformBox(zAxes4,T3);

    BoxParam->drawBox(im, xAxes4, colour[1], 1);
    BoxParam->drawBox(im, yAxes4, colour[2], 1);
    BoxParam->drawBox(im, zAxes4, colour[3], 1);

    std::vector<Mat> xAxes5 = BoxParam->createLine(25,0,0);
    std::vector<Mat> yAxes5 = BoxParam->createLine(0,25,0);
    std::vector<Mat> zAxes5 = BoxParam->createLine(0,0,25);

    BoxParam->transformBox(xAxes5,T4);
    BoxParam->transformBox(yAxes5,T4);
    BoxParam->transformBox(zAxes5,T4);

    BoxParam->drawBox(im, xAxes5, colour[1], 1);
    BoxParam->drawBox(im, yAxes5, colour[2], 1);
    BoxParam->drawBox(im, zAxes5, colour[3], 1);

    BoxParam->updateAuto(im, Link0, Link1, Link2, Link3, colour);
    //usleep(1000);
    waitKey(1);
  }

  for(float i = 0; i < 360; i = i + 4)
  {
  cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
  //cv::namedWindow("7825 Project");

  std::vector <Mat> Link0 = BoxParam->createBox(0, 0, 0);
  std::vector <Mat> Link1 = BoxParam->createBox(200, 50, 50);
  std::vector <Mat> Link2 = BoxParam->createBox(200, 50, 50);
  std::vector <Mat> Link3 = BoxParam->createBox(200, 50, 50);

  std::vector<Mat> xAxes1 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes1 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes1 = BoxParam->createLine(0,0,25);

  Mat T0 = BoxParam->createHT(im.size().width/2, im.size().height/2, 0, CV_PI + view_angle, 0, 0);
  Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, 0, 0);
  Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, (i/180)*CV_PI, 0);
  Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
  Mat T4 = T3 * BoxParam->createHT(0, 0, 0, 0, 0, -1*CV_PI/2);

  BoxParam->transformBox(Link0, T0);
  BoxParam->transformBox(Link1, T1);
  BoxParam->transformBox(Link2, T2);
  BoxParam->transformBox(Link3, T4);

  colour.push_back(CV_RGB(255,255,255));
  colour.push_back(CV_RGB(255,0,0));
  colour.push_back(CV_RGB(0,255,0));
  colour.push_back(CV_RGB(0,0,255));



  std::vector<Mat> xAxes2 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes2 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes2 = BoxParam->createLine(0,0,25);

  BoxParam->transformBox(xAxes2,T1);
  BoxParam->transformBox(yAxes2,T1);
  BoxParam->transformBox(zAxes2,T1);

  BoxParam->drawBox(im, xAxes2, colour[1], 1);
  BoxParam->drawBox(im, yAxes2, colour[2], 1);
  BoxParam->drawBox(im, zAxes2, colour[3], 1);

  std::vector<Mat> xAxes3 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes3 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes3 = BoxParam->createLine(0,0,25);

  BoxParam->transformBox(xAxes3,T2);
  BoxParam->transformBox(yAxes3,T2);
  BoxParam->transformBox(zAxes3,T2);

  BoxParam->drawBox(im, xAxes3, colour[1], 1);
  BoxParam->drawBox(im, yAxes3, colour[2], 1);
  BoxParam->drawBox(im, zAxes3, colour[3], 1);

  std::vector<Mat> xAxes4 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes4 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes4 = BoxParam->createLine(0,0,25);

  BoxParam->transformBox(xAxes4,T3);
  BoxParam->transformBox(yAxes4,T3);
  BoxParam->transformBox(zAxes4,T3);

  BoxParam->drawBox(im, xAxes4, colour[1], 1);
  BoxParam->drawBox(im, yAxes4, colour[2], 1);
  BoxParam->drawBox(im, zAxes4, colour[3], 1);

  std::vector<Mat> xAxes5 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes5 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes5 = BoxParam->createLine(0,0,25);

  BoxParam->transformBox(xAxes5,T4);
  BoxParam->transformBox(yAxes5,T4);
  BoxParam->transformBox(zAxes5,T4);

  BoxParam->drawBox(im, xAxes5, colour[1], 1);
  BoxParam->drawBox(im, yAxes5, colour[2], 1);
  BoxParam->drawBox(im, zAxes5, colour[3], 1);

  BoxParam->updateAuto(im, Link0, Link1, Link2, Link3, colour);
  //usleep(1000);
  waitKey(1);
}

for(float i = 0; i < 360; i = i + 4)
{
cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
//cv::namedWindow("7825 Project");

std::vector <Mat> Link0 = BoxParam->createBox(0, 0, 0);
std::vector <Mat> Link1 = BoxParam->createBox(200, 50, 50);
std::vector <Mat> Link2 = BoxParam->createBox(200, 50, 50);
std::vector <Mat> Link3 = BoxParam->createBox(200, 50, 50);

std::vector<Mat> xAxes1 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes1 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes1 = BoxParam->createLine(0,0,25);

Mat T0 = BoxParam->createHT(im.size().width/2, im.size().height/2, 0, CV_PI + view_angle, 0, 0);
Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, 0, 0);
Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, (i/180)*CV_PI, 0);
Mat T4 = T3 * BoxParam->createHT(0, 0, 0, 0, 0, -1*CV_PI/2);


BoxParam->transformBox(Link0, T0);
BoxParam->transformBox(Link1, T1);
BoxParam->transformBox(Link2, T2);
BoxParam->transformBox(Link3, T4);

colour.push_back(CV_RGB(255,255,255));
colour.push_back(CV_RGB(255,0,0));
colour.push_back(CV_RGB(0,255,0));
colour.push_back(CV_RGB(0,0,255));


std::vector<Mat> xAxes2 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes2 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes2 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes2,T1);
BoxParam->transformBox(yAxes2,T1);
BoxParam->transformBox(zAxes2,T1);

BoxParam->drawBox(im, xAxes2, colour[1], 1);
BoxParam->drawBox(im, yAxes2, colour[2], 1);
BoxParam->drawBox(im, zAxes2, colour[3], 1);

std::vector<Mat> xAxes3 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes3 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes3 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes3,T2);
BoxParam->transformBox(yAxes3,T2);
BoxParam->transformBox(zAxes3,T2);

BoxParam->drawBox(im, xAxes3, colour[1], 1);
BoxParam->drawBox(im, yAxes3, colour[2], 1);
BoxParam->drawBox(im, zAxes3, colour[3], 1);

std::vector<Mat> xAxes4 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes4 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes4 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes4,T3);
BoxParam->transformBox(yAxes4,T3);
BoxParam->transformBox(zAxes4,T3);

BoxParam->drawBox(im, xAxes4, colour[1], 1);
BoxParam->drawBox(im, yAxes4, colour[2], 1);
BoxParam->drawBox(im, zAxes4, colour[3], 1);

std::vector<Mat> xAxes5 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes5 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes5 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes5,T4);
BoxParam->transformBox(yAxes5,T4);
BoxParam->transformBox(zAxes5,T4);

BoxParam->drawBox(im, xAxes5, colour[1], 1);
BoxParam->drawBox(im, yAxes5, colour[2], 1);
BoxParam->drawBox(im, zAxes5, colour[3], 1);


BoxParam->updateAuto(im, Link0, Link1, Link2, Link3, colour);
//usleep(1000);
waitKey(1);
}

for(float i = 0; i < 40; i = i + 2)
{
cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
//cv::namedWindow("7825 Project");

std::vector <Mat> Link0 = BoxParam->createBox(0, 0, 0);
std::vector <Mat> Link1 = BoxParam->createBox(200, 50, 50);
std::vector <Mat> Link2 = BoxParam->createBox(200, 50, 50);
std::vector <Mat> Link3 = BoxParam->createBox(200, 50, 50);

std::vector<Mat> xAxes1 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes1 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes1 = BoxParam->createLine(0,0,25);

Mat T0 = BoxParam->createHT(im.size().width/2, im.size().height/2, 0, CV_PI + view_angle, 0, 0);
Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, 0, 0);
Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
Mat T4 = T3 * BoxParam->createHT(0, -1*i, 0, 0, 0, -1*CV_PI/2);


BoxParam->transformBox(Link0, T0);
BoxParam->transformBox(Link1, T1);
BoxParam->transformBox(Link2, T2);
BoxParam->transformBox(Link3, T4);

colour.push_back(CV_RGB(255,255,255));
colour.push_back(CV_RGB(255,0,0));
colour.push_back(CV_RGB(0,255,0));
colour.push_back(CV_RGB(0,0,255));


std::vector<Mat> xAxes2 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes2 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes2 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes2,T1);
BoxParam->transformBox(yAxes2,T1);
BoxParam->transformBox(zAxes2,T1);

BoxParam->drawBox(im, xAxes2, colour[1], 1);
BoxParam->drawBox(im, yAxes2, colour[2], 1);
BoxParam->drawBox(im, zAxes2, colour[3], 1);

std::vector<Mat> xAxes3 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes3 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes3 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes3,T2);
BoxParam->transformBox(yAxes3,T2);
BoxParam->transformBox(zAxes3,T2);

BoxParam->drawBox(im, xAxes3, colour[1], 1);
BoxParam->drawBox(im, yAxes3, colour[2], 1);
BoxParam->drawBox(im, zAxes3, colour[3], 1);

std::vector<Mat> xAxes4 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes4 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes4 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes4,T3);
BoxParam->transformBox(yAxes4,T3);
BoxParam->transformBox(zAxes4,T3);

BoxParam->drawBox(im, xAxes4, colour[1], 1);
BoxParam->drawBox(im, yAxes4, colour[2], 1);
BoxParam->drawBox(im, zAxes4, colour[3], 1);

std::vector<Mat> xAxes5 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes5 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes5 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes5,T4);
BoxParam->transformBox(yAxes5,T4);
BoxParam->transformBox(zAxes5,T4);

BoxParam->drawBox(im, xAxes5, colour[1], 1);
BoxParam->drawBox(im, yAxes5, colour[2], 1);
BoxParam->drawBox(im, zAxes5, colour[3], 1);


BoxParam->updateAuto(im, Link0, Link1, Link2, Link3, colour);
//usleep(1000);
waitKey(1);
}

for(float i = 40; i > -40; i = i - 2)
{
cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
//cv::namedWindow("7825 Project");

std::vector <Mat> Link0 = BoxParam->createBox(0, 0, 0);
std::vector <Mat> Link1 = BoxParam->createBox(200, 50, 50);
std::vector <Mat> Link2 = BoxParam->createBox(200, 50, 50);
std::vector <Mat> Link3 = BoxParam->createBox(200, 50, 50);

std::vector<Mat> xAxes1 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes1 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes1 = BoxParam->createLine(0,0,25);

Mat T0 = BoxParam->createHT(im.size().width/2, im.size().height/2, 0, CV_PI + view_angle, 0, 0);
Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, 0, 0);
Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
Mat T4 = T3 * BoxParam->createHT(0, -1*i, 0, 0, 0, -1*CV_PI/2);


BoxParam->transformBox(Link0, T0);
BoxParam->transformBox(Link1, T1);
BoxParam->transformBox(Link2, T2);
BoxParam->transformBox(Link3, T4);

colour.push_back(CV_RGB(255,255,255));
colour.push_back(CV_RGB(255,0,0));
colour.push_back(CV_RGB(0,255,0));
colour.push_back(CV_RGB(0,0,255));


std::vector<Mat> xAxes2 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes2 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes2 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes2,T1);
BoxParam->transformBox(yAxes2,T1);
BoxParam->transformBox(zAxes2,T1);

BoxParam->drawBox(im, xAxes2, colour[1], 1);
BoxParam->drawBox(im, yAxes2, colour[2], 1);
BoxParam->drawBox(im, zAxes2, colour[3], 1);

std::vector<Mat> xAxes3 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes3 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes3 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes3,T2);
BoxParam->transformBox(yAxes3,T2);
BoxParam->transformBox(zAxes3,T2);

BoxParam->drawBox(im, xAxes3, colour[1], 1);
BoxParam->drawBox(im, yAxes3, colour[2], 1);
BoxParam->drawBox(im, zAxes3, colour[3], 1);

std::vector<Mat> xAxes4 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes4 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes4 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes4,T3);
BoxParam->transformBox(yAxes4,T3);
BoxParam->transformBox(zAxes4,T3);

BoxParam->drawBox(im, xAxes4, colour[1], 1);
BoxParam->drawBox(im, yAxes4, colour[2], 1);
BoxParam->drawBox(im, zAxes4, colour[3], 1);

std::vector<Mat> xAxes5 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes5 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes5 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes5,T4);
BoxParam->transformBox(yAxes5,T4);
BoxParam->transformBox(zAxes5,T4);

BoxParam->drawBox(im, xAxes5, colour[1], 1);
BoxParam->drawBox(im, yAxes5, colour[2], 1);
BoxParam->drawBox(im, zAxes5, colour[3], 1);


BoxParam->updateAuto(im, Link0, Link1, Link2, Link3, colour);
//usleep(1000);
waitKey(1);
}

for(float i = -40; i <= 0; i = i + 2)
{
cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
//cv::namedWindow("7825 Project");

std::vector <Mat> Link0 = BoxParam->createBox(0, 0, 0);
std::vector <Mat> Link1 = BoxParam->createBox(200, 50, 50);
std::vector <Mat> Link2 = BoxParam->createBox(200, 50, 50);
std::vector <Mat> Link3 = BoxParam->createBox(200, 50, 50);

std::vector<Mat> xAxes1 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes1 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes1 = BoxParam->createLine(0,0,25);

Mat T0 = BoxParam->createHT(im.size().width/2, im.size().height/2, 0, CV_PI + view_angle, 0, 0);
Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, 0, 0);
Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
Mat T4 = T3 * BoxParam->createHT(0, -1*i, 0, 0, 0, -1*CV_PI/2);


BoxParam->transformBox(Link0, T0);
BoxParam->transformBox(Link1, T1);
BoxParam->transformBox(Link2, T2);
BoxParam->transformBox(Link3, T4);

colour.push_back(CV_RGB(255,255,255));
colour.push_back(CV_RGB(255,0,0));
colour.push_back(CV_RGB(0,255,0));
colour.push_back(CV_RGB(0,0,255));


std::vector<Mat> xAxes2 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes2 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes2 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes2,T1);
BoxParam->transformBox(yAxes2,T1);
BoxParam->transformBox(zAxes2,T1);

BoxParam->drawBox(im, xAxes2, colour[1], 1);
BoxParam->drawBox(im, yAxes2, colour[2], 1);
BoxParam->drawBox(im, zAxes2, colour[3], 1);

std::vector<Mat> xAxes3 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes3 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes3 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes3,T2);
BoxParam->transformBox(yAxes3,T2);
BoxParam->transformBox(zAxes3,T2);

BoxParam->drawBox(im, xAxes3, colour[1], 1);
BoxParam->drawBox(im, yAxes3, colour[2], 1);
BoxParam->drawBox(im, zAxes3, colour[3], 1);

std::vector<Mat> xAxes4 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes4 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes4 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes4,T3);
BoxParam->transformBox(yAxes4,T3);
BoxParam->transformBox(zAxes4,T3);

BoxParam->drawBox(im, xAxes4, colour[1], 1);
BoxParam->drawBox(im, yAxes4, colour[2], 1);
BoxParam->drawBox(im, zAxes4, colour[3], 1);

std::vector<Mat> xAxes5 = BoxParam->createLine(25,0,0);
std::vector<Mat> yAxes5 = BoxParam->createLine(0,25,0);
std::vector<Mat> zAxes5 = BoxParam->createLine(0,0,25);

BoxParam->transformBox(xAxes5,T4);
BoxParam->transformBox(yAxes5,T4);
BoxParam->transformBox(zAxes5,T4);

BoxParam->drawBox(im, xAxes5, colour[1], 1);
BoxParam->drawBox(im, yAxes5, colour[2], 1);
BoxParam->drawBox(im, zAxes5, colour[3], 1);


BoxParam->updateAuto(im, Link0, Link1, Link2, Link3, colour);
//usleep(1000);
waitKey(1);
}
  //} while(waitKey(1) != 'q');


}

void manual_control()
{
  //Manual control of rotation of joints
  float L1;
  float L2;
  float L3;
  float L4;

  printf("Joint 1:");
  scanf("%f", &L1);
  printf("\nJoint 2:");
  scanf("%f", &L2);
  printf("\nJoint 3:");
  scanf("%f", &L3);
  printf("\nJoint 4:");
  scanf("%f", &L4);
  printf("\n");

  float view_angle = 0.3; // 0.2 looks good

  //Vectors
  std::vector<Scalar> colour;
  std::vector<Mat> Box;

  colour.push_back(CV_RGB(255,255,255));
  colour.push_back(CV_RGB(255,0,0));
  colour.push_back(CV_RGB(0,255,0));
  colour.push_back(CV_RGB(0,0,255));

  Size image_size = Size(1280, 720);

  cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
  //cv::namedWindow("7825 Project");

  std::vector <Mat> Link0 = BoxParam->createBox(0, 0, 0);
  std::vector <Mat> Link1 = BoxParam->createBox(200, 50, 50);
  std::vector <Mat> Link2 = BoxParam->createBox(200, 50, 50);
  std::vector <Mat> Link3 = BoxParam->createBox(200, 50, 50);

  std::vector<Mat> xAxes1 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes1 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes1 = BoxParam->createLine(0,0,25);

  Mat T0 = BoxParam->createHT(im.size().width/2, im.size().height/2, 0, -1*CV_PI/8+view_angle  , 0, 0);
  Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, (L1/180)*CV_PI, 0);
  Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, (L2/180)*CV_PI, 0);
  Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, (L3/180)*CV_PI, 0);
  Mat T4 = T3 * BoxParam->createHT(0, -1*L4, 0, 0, 0, CV_PI/2);



  BoxParam->transformBox(Link0, T0);
  BoxParam->transformBox(Link1, T1);
  BoxParam->transformBox(Link2, T2);
  BoxParam->transformBox(Link3, T4);

  std::vector<Mat> xAxes2 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes2 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes2 = BoxParam->createLine(0,0,25);

  BoxParam->transformBox(xAxes2,T1);
  BoxParam->transformBox(yAxes2,T1);
  BoxParam->transformBox(zAxes2,T1);

  BoxParam->drawBox(im, xAxes2, colour[1], 1);
  BoxParam->drawBox(im, yAxes2, colour[2], 1);
  BoxParam->drawBox(im, zAxes2, colour[3], 1);

  std::vector<Mat> xAxes3 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes3 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes3 = BoxParam->createLine(0,0,25);

  BoxParam->transformBox(xAxes3,T2);
  BoxParam->transformBox(yAxes3,T2);
  BoxParam->transformBox(zAxes3,T2);

  BoxParam->drawBox(im, xAxes3, colour[1], 1);
  BoxParam->drawBox(im, yAxes3, colour[2], 1);
  BoxParam->drawBox(im, zAxes3, colour[3], 1);

  std::vector<Mat> xAxes4 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes4 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes4 = BoxParam->createLine(0,0,25);

  BoxParam->transformBox(xAxes4,T3);
  BoxParam->transformBox(yAxes4,T3);
  BoxParam->transformBox(zAxes4,T3);

  BoxParam->drawBox(im, xAxes4, colour[1], 1);
  BoxParam->drawBox(im, yAxes4, colour[2], 1);
  BoxParam->drawBox(im, zAxes4, colour[3], 1);

  std::vector<Mat> xAxes5 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes5 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes5 = BoxParam->createLine(0,0,25);

  BoxParam->transformBox(xAxes5,T4);
  BoxParam->transformBox(yAxes5,T4);
  BoxParam->transformBox(zAxes5,T4);

  BoxParam->drawBox(im, xAxes5, colour[1], 1);
  BoxParam->drawBox(im, yAxes5, colour[2], 1);
  BoxParam->drawBox(im, zAxes5, colour[3], 1);


  BoxParam->updateMan(im, Link0, Link1, Link2, Link3, colour);
  //waitKey(0);
  waitKey(1);


  end_effector(L1,L2,L3,L4);

}

void fkine(float p, float theta, float q1, float q2)
{
  float view_angle = 0.6; // 0.2 looks good


  //Vectors
  std::vector<Scalar> colour;
  std::vector<Mat> Box;

  colour.push_back(CV_RGB(255,255,255));
  colour.push_back(CV_RGB(255,0,0));
  colour.push_back(CV_RGB(0,255,0));
  colour.push_back(CV_RGB(0,0,255));

  Size image_size = Size(1280, 720);

  cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
  //cv::namedWindow("7825 Project");

  std::vector <Mat> Link0 = BoxParam->createBox(0, 0, 0);
  std::vector <Mat> Link1 = BoxParam->createBox(200, 50, 50);
  std::vector <Mat> Link2 = BoxParam->createBox(200, 50, 50);
  std::vector <Mat> Link3 = BoxParam->createBox(200, 50, 50);

  std::vector<Mat> xAxes1 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes1 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes1 = BoxParam->createLine(0,0,25);

  Mat T0 = BoxParam->createHT(im.size().width/2, im.size().height/2, 0, -1*CV_PI/8+view_angle , 0, 0);
  Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, -q1, 0);
  Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, -q2, 0);
  Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, theta, 0);
  Mat T4 = T3 * BoxParam->createHT(0, -1*p, 0, 0, 0, CV_PI/2);

  BoxParam->transformBox(Link0, T0);
  BoxParam->transformBox(Link1, T1);
  BoxParam->transformBox(Link2, T2);
  BoxParam->transformBox(Link3, T4);

  std::vector<Mat> xAxes2 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes2 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes2 = BoxParam->createLine(0,0,25);

  BoxParam->transformBox(xAxes2,T1);
  BoxParam->transformBox(yAxes2,T1);
  BoxParam->transformBox(zAxes2,T1);

  BoxParam->drawBox(im, xAxes2, colour[1], 1);
  BoxParam->drawBox(im, yAxes2, colour[2], 1);
  BoxParam->drawBox(im, zAxes2, colour[3], 1);

  std::vector<Mat> xAxes3 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes3 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes3 = BoxParam->createLine(0,0,25);

  BoxParam->transformBox(xAxes3,T2);
  BoxParam->transformBox(yAxes3,T2);
  BoxParam->transformBox(zAxes3,T2);

  BoxParam->drawBox(im, xAxes3, colour[1], 1);
  BoxParam->drawBox(im, yAxes3, colour[2], 1);
  BoxParam->drawBox(im, zAxes3, colour[3], 1);

  std::vector<Mat> xAxes4 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes4 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes4 = BoxParam->createLine(0,0,25);

  BoxParam->transformBox(xAxes4,T3);
  BoxParam->transformBox(yAxes4,T3);
  BoxParam->transformBox(zAxes4,T3);

  BoxParam->drawBox(im, xAxes4, colour[1], 1);
  BoxParam->drawBox(im, yAxes4, colour[2], 1);
  BoxParam->drawBox(im, zAxes4, colour[3], 1);

  std::vector<Mat> xAxes5 = BoxParam->createLine(25,0,0);
  std::vector<Mat> yAxes5 = BoxParam->createLine(0,25,0);
  std::vector<Mat> zAxes5 = BoxParam->createLine(0,0,25);

  BoxParam->transformBox(xAxes5,T4);
  BoxParam->transformBox(yAxes5,T4);
  BoxParam->transformBox(zAxes5,T4);

  BoxParam->drawBox(im, xAxes5, colour[1], 1);
  BoxParam->drawBox(im, yAxes5, colour[2], 1);
  BoxParam->drawBox(im, zAxes5, colour[3], 1);


  BoxParam->updateMan(im, Link0, Link1, Link2, Link3, colour);
  //waitKey(0);
  waitKey(1);
}

void ikine(float x, float y, float z, float theta)
{
    float imHeight = 720;
    float imWidth = 1280;

    std::vector<float> q;
    q = BoxParam->inverseKinematics(x,y);
    //float q1 = BoxParam->inverseKinematics(x,y,1);
    //float q2 = BoxParam->inverseKinematics(x,y,2);
    fkine(z, (-1*theta + q.at(0) + q.at(1)), q.at(0), q.at(1));
    cout << endl << "q1 angle:" << (q.at(0)/CV_PI)*180 << endl;
    cout << "q2 angle:" << (q.at(1)/CV_PI)*180 << endl;
    cout << "q3 angle:" << -1*theta + q.at(0) + q.at(1) << endl;
    cout << "q4 (prismatic):" << z << endl << endl;
}

void ikine_animate()
{

  float imHeight = 720;
  float imWidth = 1280;
  std::vector<float> q;

  for(float x = -100; x <= 100; x++)
  {
    q = BoxParam->inverseKinematics(x,50);
    fkine(-50, 0, q.at(0),q.at(1));
  }

}

void ctraj_animate()
{
  std::vector<Point2f> position;

  std::vector<float> q;
  position = BoxParam->ctrajpos(200,100,150,150,50,0,0,5,5);

  for(int i = 0; i < position.size(); i++)
  {
    q = BoxParam->inverseKinematics(position[i].x,position[i].y);

    fkine(0, 0, q.at(0),q.at(1));
  }

  position = BoxParam->ctrajpos(150,150,-100,200,50,0,0,5,5);

  for(int i = 0; i < position.size(); i++)
  {
    q = BoxParam->inverseKinematics(position[i].x,position[i].y);

    fkine(0, 0, q.at(0),q.at(1));
  }

  position = BoxParam->ctrajpos(-100,200,200,200,50,0,0,5,5);

  for(int i = 0; i < position.size(); i++)
  {
    q = BoxParam->inverseKinematics(position[i].x,position[i].y);

    fkine(0, 0, q.at(0),q.at(1));
  }

}

void jtraj_animate()
{
  std::vector<Point2f> j1;
  std::vector<Point2f> j2;
  std::vector<Point2f> j3;
  std::vector<Point2f> j4;

  j1 = BoxParam->jtrajpos(0,CV_PI/2,0,0,200,0,0,0,0);
  j2 = BoxParam->jtrajpos(0,CV_PI/2,0,0,200,0,0,0,0);
  j3 = BoxParam->jtrajpos(0,CV_PI/2,0,0,200,0,0,0,0);
  j4 = BoxParam->jtrajpos(0,100,0,0,200,0,0,0,0);

  for(int i = 0; i < j1.size(); i++)
  {
    fkine(j4[i].y, j3[i].y, j1[i].y,j2[i].y);
  }

  j1 = BoxParam->jtrajpos(0,0,0,CV_PI/2,200,0,0,0,0);
  j2 = BoxParam->jtrajpos(0,0,0,CV_PI/2,200,0,0,0,0);
  j3 = BoxParam->jtrajpos(0,0,0,CV_PI/2,200,0,0,0,0);
  j4 = BoxParam->jtrajpos(0,0,0,100,200,0,0,0,0);

  for(int i = 0; i < j1.size(); i++)
  {
    fkine(j4[i].y, j3[i].y, j1[i].y,j2[i].y);
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////
//

int main(int argc, char* argv[])
{

//Initalize Menu
int exit = 1;
while (exit != 0)
{

  int s;
  cout << "Please Select from the following itemssss:" << endl;
  cout << "(0) Manual Control (Forward Kinematics)" << endl;
  cout << "(1) Animate Fkine" << endl;
  cout << "(2) Fixed Position" << endl;
  cout << "(3) Inverse Kinematics" << endl;
  cout << "(4) Animate Inverse Kinematics" << endl;
  cout << "(5) ctraj" << endl;
  cout << "(6) jtraj" << endl;
  cout << "(7) Exit" << endl;
  cout << "Enter Value Option: ";
  cin >> s;

  switch(s)
  {
    case 0:
      printf("\nManual Control/End Effector\n\n");
      //Lab2
      manual_control();
      break;
    case 1:
      printf("\nAnimating\n\n");
      animate();
      break;
    case 2:
      printf("\nFixed Pose\n\n");
      fkine(-40, 45, 20, 30);
      break;
    case 3:
      float x;
      float y;
      float z;
      float theta;

      printf("X:");
      scanf("%f", &x);
      printf("\nY:");
      scanf("%f", &y);
      printf("\nZ:");
      scanf("%f", &z);
      printf("\nTheta:");
      scanf("%f", &theta);
      printf("\n");

      ikine(x, y, z, theta);
      break;
    case 4:
      ikine_animate();
      break;
    case 5:
      ctraj_animate();
      break;
    case 6:
      jtraj_animate();
      break;
    case 7:
      exit = 0;
      break;
  }

}


  return 1;
}
