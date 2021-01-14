////////////////////////////////////////////////////////////////
// ELEX 7825 Template project for BCIT
// Created Sept 9, 2020 by Craig Hennessey
// Last updated Sept 9, 2020
////////////////////////////////////////////////////////////////

#include <ctime>
#include <fstream>
#include <iostream>
#include <math.h>
#include <opencv2/aruco/charuco.hpp>
#include <opencv2/highgui.hpp>
#include <stdio.h>
#include <string>
#include <thread>
#include <tuple>
#include <unistd.h>
#include <vector>
// My own header files
#include "CRobot.hpp"
// OpenCV
#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;

// Class object definitions
Box *BoxParam; // Pointer to class method

//////////////////////////////////////////////////////////////////////////////////////////////////
//

namespace {
const char *about = "Pose estimation using a ChArUco board";
const char *keys =
    "{w        |       | Number of squares in X direction }"
    "{h        |       | Number of squares in Y direction }"
    "{sl       |       | Square side length (in meters) }"
    "{ml       |       | Marker side length (in meters) }"
    "{d        |       | dictionary: DICT_4X4_50=0, DICT_4X4_100=1, "
    "DICT_4X4_250=2,"
    "DICT_4X4_1000=3, DICT_5X5_50=4, DICT_5X5_100=5, DICT_5X5_250=6, "
    "DICT_5X5_1000=7, "
    "DICT_6X6_50=8, DICT_6X6_100=9, DICT_6X6_250=10, DICT_6X6_1000=11, "
    "DICT_7X7_50=12,"
    "DICT_7X7_100=13, DICT_7X7_250=14, DICT_7X7_1000=15, DICT_ARUCO_ORIGINAL = "
    "16}"
    "{c        |       | Output file with calibrated camera parameters }"
    "{v        |       | Input from video file, if ommited, input comes from "
    "camera }"
    "{ci       | 0     | Camera id if input doesnt come from video (-v) }"
    "{dp       |       | File of marker detector parameters }"
    "{rs       |       | Apply refind strategy }"
    "{r        |       | show rejected candidates too }";
} // namespace

/**
 */
static bool readCameraParameters(string filename, Mat &camMatrix,
                                 Mat &distCoeffs) {
  FileStorage fs(filename, FileStorage::READ);
  if (!fs.isOpened())
    return false;
  fs["camera_matrix"] >> camMatrix;
  fs["distortion_coefficients"] >> distCoeffs;
  return true;
}

/**
 */
static bool readDetectorParameters(string filename,
                                   Ptr<aruco::DetectorParameters> &params) {
  FileStorage fs(filename, FileStorage::READ);
  if (!fs.isOpened())
    return false;
  fs["adaptiveThreshWinSizeMin"] >> params->adaptiveThreshWinSizeMin;
  fs["adaptiveThreshWinSizeMax"] >> params->adaptiveThreshWinSizeMax;
  fs["adaptiveThreshWinSizeStep"] >> params->adaptiveThreshWinSizeStep;
  fs["adaptiveThreshConstant"] >> params->adaptiveThreshConstant;
  fs["minMarkerPerimeterRate"] >> params->minMarkerPerimeterRate;
  fs["maxMarkerPerimeterRate"] >> params->maxMarkerPerimeterRate;
  fs["polygonalApproxAccuracyRate"] >> params->polygonalApproxAccuracyRate;
  fs["minCornerDistanceRate"] >> params->minCornerDistanceRate;
  fs["minDistanceToBorder"] >> params->minDistanceToBorder;
  fs["minMarkerDistanceRate"] >> params->minMarkerDistanceRate;
  fs["cornerRefinementMethod"] >> params->cornerRefinementMethod;
  fs["cornerRefinementWinSize"] >> params->cornerRefinementWinSize;
  fs["cornerRefinementMaxIterations"] >> params->cornerRefinementMaxIterations;
  fs["cornerRefinementMinAccuracy"] >> params->cornerRefinementMinAccuracy;
  fs["markerBorderBits"] >> params->markerBorderBits;
  fs["perspectiveRemovePixelPerCell"] >> params->perspectiveRemovePixelPerCell;
  fs["perspectiveRemoveIgnoredMarginPerCell"] >>
      params->perspectiveRemoveIgnoredMarginPerCell;
  fs["maxErroneousBitsInBorderRate"] >> params->maxErroneousBitsInBorderRate;
  fs["minOtsuStdDev"] >> params->minOtsuStdDev;
  fs["errorCorrectionRate"] >> params->errorCorrectionRate;
  return true;
}

void calibrate() {}
void drawPose(Mat &im, Mat T) {}

void end_effector(float L1, float L2, float L3, float L4) {
  Mat T0 = BoxParam->createHT(0, 0, 0, 0, 0, (L1 / 180) * CV_PI);
  Mat T1 = T0 * BoxParam->createHT(200, 0, 0, 0, 0, (L2 / 180) * CV_PI);
  Mat T2 = T1 * BoxParam->createHT(200, 0, 0, CV_PI, 0, (L3 / 180) * CV_PI);
  Mat T3 = T2 * BoxParam->createHT(0, 0, L4, 0, 0, 0);

  cout << setprecision(1) << endl << T3 << endl << endl;
}

void init() {
  float view_angle = 0.2; // 0.2 looks good

  // Vectors
  std::vector<Scalar> colour;
  std::vector<Mat> Box;

  Size image_size = Size(1280, 720);

  cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
  // cv::namedWindow("7825 Project");

  std::vector<Mat> Link0 = BoxParam->createBox(0, 0, 0);
  std::vector<Mat> Link1 = BoxParam->createBox(200, 50, 50);
  std::vector<Mat> Link2 = BoxParam->createBox(200, 50, 50);
  std::vector<Mat> Link3 = BoxParam->createBox(200, 50, 50);

  Mat T0 = BoxParam->createHT(im.size().width / 2, im.size().height / 2, 0,
                              CV_PI + view_angle, 0, 0);
  Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, 0, 0);
  Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
  Mat T3 = T2 * BoxParam->createHT(225, 0, 0, 0, 0, -1 * CV_PI / 2);

  BoxParam->transformBox(Link0, T0);
  BoxParam->transformBox(Link1, T1);
  BoxParam->transformBox(Link2, T2);
  BoxParam->transformBox(Link3, T3);

  colour.push_back(CV_RGB(255, 255, 255));
  colour.push_back(CV_RGB(255, 0, 0));
  colour.push_back(CV_RGB(0, 255, 0));
  colour.push_back(CV_RGB(0, 0, 255));
  BoxParam->updateMan(im, Link0, Link1, Link2, Link3, colour);
  // waitKey(0);
  // waitKey(1);
}

void animate() {
  // do {
  // Variables

  float view_angle = 0.2; // 0.2 looks good

  // Vectors
  std::vector<Scalar> colour;
  std::vector<Mat> Box;

  Size image_size = Size(1280, 720);

  for (float i = 0; i < 360; i = i + 4) {
    cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
    // cv::namedWindow("7825 Project");

    std::vector<Mat> Link0 = BoxParam->createBox(0, 0, 0);
    std::vector<Mat> Link1 = BoxParam->createBox(200, 50, 50);
    std::vector<Mat> Link2 = BoxParam->createBox(200, 50, 50);
    std::vector<Mat> Link3 = BoxParam->createBox(200, 50, 50);

    std::vector<Mat> xAxes1 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes1 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes1 = BoxParam->createLine(0, 0, 25);

    Mat T0 = BoxParam->createHT(im.size().width / 2, im.size().height / 2, 0,
                                CV_PI + view_angle, 0, 0);
    Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, (i / 180) * CV_PI, 0);
    Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
    Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
    Mat T4 = T3 * BoxParam->createHT(0, 0, 0, 0, 0, -1 * CV_PI / 2);

    BoxParam->transformBox(Link0, T0);
    BoxParam->transformBox(Link1, T1);
    BoxParam->transformBox(Link2, T2);
    BoxParam->transformBox(Link3, T4);

    colour.push_back(CV_RGB(255, 255, 255));
    colour.push_back(CV_RGB(255, 0, 0));
    colour.push_back(CV_RGB(0, 255, 0));
    colour.push_back(CV_RGB(0, 0, 255));

    std::vector<Mat> xAxes2 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes2 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes2 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes2, T1);
    BoxParam->transformBox(yAxes2, T1);
    BoxParam->transformBox(zAxes2, T1);

    BoxParam->drawBox(im, xAxes2, colour[1], 1);
    BoxParam->drawBox(im, yAxes2, colour[2], 1);
    BoxParam->drawBox(im, zAxes2, colour[3], 1);

    std::vector<Mat> xAxes3 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes3 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes3 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes3, T2);
    BoxParam->transformBox(yAxes3, T2);
    BoxParam->transformBox(zAxes3, T2);

    BoxParam->drawBox(im, xAxes3, colour[1], 1);
    BoxParam->drawBox(im, yAxes3, colour[2], 1);
    BoxParam->drawBox(im, zAxes3, colour[3], 1);

    std::vector<Mat> xAxes4 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes4 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes4 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes4, T3);
    BoxParam->transformBox(yAxes4, T3);
    BoxParam->transformBox(zAxes4, T3);

    BoxParam->drawBox(im, xAxes4, colour[1], 1);
    BoxParam->drawBox(im, yAxes4, colour[2], 1);
    BoxParam->drawBox(im, zAxes4, colour[3], 1);

    std::vector<Mat> xAxes5 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes5 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes5 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes5, T4);
    BoxParam->transformBox(yAxes5, T4);
    BoxParam->transformBox(zAxes5, T4);

    BoxParam->drawBox(im, xAxes5, colour[1], 1);
    BoxParam->drawBox(im, yAxes5, colour[2], 1);
    BoxParam->drawBox(im, zAxes5, colour[3], 1);

    BoxParam->updateAuto(im, Link0, Link1, Link2, Link3, colour);
    // usleep(1000);
    waitKey(1);
  }

  for (float i = 0; i < 360; i = i + 4) {
    cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
    // cv::namedWindow("7825 Project");

    std::vector<Mat> Link0 = BoxParam->createBox(0, 0, 0);
    std::vector<Mat> Link1 = BoxParam->createBox(200, 50, 50);
    std::vector<Mat> Link2 = BoxParam->createBox(200, 50, 50);
    std::vector<Mat> Link3 = BoxParam->createBox(200, 50, 50);

    std::vector<Mat> xAxes1 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes1 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes1 = BoxParam->createLine(0, 0, 25);

    Mat T0 = BoxParam->createHT(im.size().width / 2, im.size().height / 2, 0,
                                CV_PI + view_angle, 0, 0);
    Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, 0, 0);
    Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, (i / 180) * CV_PI, 0);
    Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
    Mat T4 = T3 * BoxParam->createHT(0, 0, 0, 0, 0, -1 * CV_PI / 2);

    BoxParam->transformBox(Link0, T0);
    BoxParam->transformBox(Link1, T1);
    BoxParam->transformBox(Link2, T2);
    BoxParam->transformBox(Link3, T4);

    colour.push_back(CV_RGB(255, 255, 255));
    colour.push_back(CV_RGB(255, 0, 0));
    colour.push_back(CV_RGB(0, 255, 0));
    colour.push_back(CV_RGB(0, 0, 255));

    std::vector<Mat> xAxes2 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes2 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes2 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes2, T1);
    BoxParam->transformBox(yAxes2, T1);
    BoxParam->transformBox(zAxes2, T1);

    BoxParam->drawBox(im, xAxes2, colour[1], 1);
    BoxParam->drawBox(im, yAxes2, colour[2], 1);
    BoxParam->drawBox(im, zAxes2, colour[3], 1);

    std::vector<Mat> xAxes3 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes3 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes3 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes3, T2);
    BoxParam->transformBox(yAxes3, T2);
    BoxParam->transformBox(zAxes3, T2);

    BoxParam->drawBox(im, xAxes3, colour[1], 1);
    BoxParam->drawBox(im, yAxes3, colour[2], 1);
    BoxParam->drawBox(im, zAxes3, colour[3], 1);

    std::vector<Mat> xAxes4 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes4 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes4 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes4, T3);
    BoxParam->transformBox(yAxes4, T3);
    BoxParam->transformBox(zAxes4, T3);

    BoxParam->drawBox(im, xAxes4, colour[1], 1);
    BoxParam->drawBox(im, yAxes4, colour[2], 1);
    BoxParam->drawBox(im, zAxes4, colour[3], 1);

    std::vector<Mat> xAxes5 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes5 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes5 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes5, T4);
    BoxParam->transformBox(yAxes5, T4);
    BoxParam->transformBox(zAxes5, T4);

    BoxParam->drawBox(im, xAxes5, colour[1], 1);
    BoxParam->drawBox(im, yAxes5, colour[2], 1);
    BoxParam->drawBox(im, zAxes5, colour[3], 1);

    BoxParam->updateAuto(im, Link0, Link1, Link2, Link3, colour);
    // usleep(1000);
    waitKey(1);
  }

  for (float i = 0; i < 360; i = i + 4) {
    cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
    // cv::namedWindow("7825 Project");

    std::vector<Mat> Link0 = BoxParam->createBox(0, 0, 0);
    std::vector<Mat> Link1 = BoxParam->createBox(200, 50, 50);
    std::vector<Mat> Link2 = BoxParam->createBox(200, 50, 50);
    std::vector<Mat> Link3 = BoxParam->createBox(200, 50, 50);

    std::vector<Mat> xAxes1 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes1 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes1 = BoxParam->createLine(0, 0, 25);

    Mat T0 = BoxParam->createHT(im.size().width / 2, im.size().height / 2, 0,
                                CV_PI + view_angle, 0, 0);
    Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, 0, 0);
    Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
    Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, (i / 180) * CV_PI, 0);
    Mat T4 = T3 * BoxParam->createHT(0, 0, 0, 0, 0, -1 * CV_PI / 2);

    BoxParam->transformBox(Link0, T0);
    BoxParam->transformBox(Link1, T1);
    BoxParam->transformBox(Link2, T2);
    BoxParam->transformBox(Link3, T4);

    colour.push_back(CV_RGB(255, 255, 255));
    colour.push_back(CV_RGB(255, 0, 0));
    colour.push_back(CV_RGB(0, 255, 0));
    colour.push_back(CV_RGB(0, 0, 255));

    std::vector<Mat> xAxes2 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes2 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes2 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes2, T1);
    BoxParam->transformBox(yAxes2, T1);
    BoxParam->transformBox(zAxes2, T1);

    BoxParam->drawBox(im, xAxes2, colour[1], 1);
    BoxParam->drawBox(im, yAxes2, colour[2], 1);
    BoxParam->drawBox(im, zAxes2, colour[3], 1);

    std::vector<Mat> xAxes3 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes3 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes3 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes3, T2);
    BoxParam->transformBox(yAxes3, T2);
    BoxParam->transformBox(zAxes3, T2);

    BoxParam->drawBox(im, xAxes3, colour[1], 1);
    BoxParam->drawBox(im, yAxes3, colour[2], 1);
    BoxParam->drawBox(im, zAxes3, colour[3], 1);

    std::vector<Mat> xAxes4 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes4 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes4 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes4, T3);
    BoxParam->transformBox(yAxes4, T3);
    BoxParam->transformBox(zAxes4, T3);

    BoxParam->drawBox(im, xAxes4, colour[1], 1);
    BoxParam->drawBox(im, yAxes4, colour[2], 1);
    BoxParam->drawBox(im, zAxes4, colour[3], 1);

    std::vector<Mat> xAxes5 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes5 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes5 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes5, T4);
    BoxParam->transformBox(yAxes5, T4);
    BoxParam->transformBox(zAxes5, T4);

    BoxParam->drawBox(im, xAxes5, colour[1], 1);
    BoxParam->drawBox(im, yAxes5, colour[2], 1);
    BoxParam->drawBox(im, zAxes5, colour[3], 1);

    BoxParam->updateAuto(im, Link0, Link1, Link2, Link3, colour);
    // usleep(1000);
    waitKey(1);
  }

  for (float i = 0; i < 40; i = i + 2) {
    cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
    // cv::namedWindow("7825 Project");

    std::vector<Mat> Link0 = BoxParam->createBox(0, 0, 0);
    std::vector<Mat> Link1 = BoxParam->createBox(200, 50, 50);
    std::vector<Mat> Link2 = BoxParam->createBox(200, 50, 50);
    std::vector<Mat> Link3 = BoxParam->createBox(200, 50, 50);

    std::vector<Mat> xAxes1 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes1 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes1 = BoxParam->createLine(0, 0, 25);

    Mat T0 = BoxParam->createHT(im.size().width / 2, im.size().height / 2, 0,
                                CV_PI + view_angle, 0, 0);
    Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, 0, 0);
    Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
    Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
    Mat T4 = T3 * BoxParam->createHT(0, -1 * i, 0, 0, 0, -1 * CV_PI / 2);

    BoxParam->transformBox(Link0, T0);
    BoxParam->transformBox(Link1, T1);
    BoxParam->transformBox(Link2, T2);
    BoxParam->transformBox(Link3, T4);

    colour.push_back(CV_RGB(255, 255, 255));
    colour.push_back(CV_RGB(255, 0, 0));
    colour.push_back(CV_RGB(0, 255, 0));
    colour.push_back(CV_RGB(0, 0, 255));

    std::vector<Mat> xAxes2 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes2 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes2 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes2, T1);
    BoxParam->transformBox(yAxes2, T1);
    BoxParam->transformBox(zAxes2, T1);

    BoxParam->drawBox(im, xAxes2, colour[1], 1);
    BoxParam->drawBox(im, yAxes2, colour[2], 1);
    BoxParam->drawBox(im, zAxes2, colour[3], 1);

    std::vector<Mat> xAxes3 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes3 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes3 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes3, T2);
    BoxParam->transformBox(yAxes3, T2);
    BoxParam->transformBox(zAxes3, T2);

    BoxParam->drawBox(im, xAxes3, colour[1], 1);
    BoxParam->drawBox(im, yAxes3, colour[2], 1);
    BoxParam->drawBox(im, zAxes3, colour[3], 1);

    std::vector<Mat> xAxes4 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes4 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes4 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes4, T3);
    BoxParam->transformBox(yAxes4, T3);
    BoxParam->transformBox(zAxes4, T3);

    BoxParam->drawBox(im, xAxes4, colour[1], 1);
    BoxParam->drawBox(im, yAxes4, colour[2], 1);
    BoxParam->drawBox(im, zAxes4, colour[3], 1);

    std::vector<Mat> xAxes5 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes5 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes5 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes5, T4);
    BoxParam->transformBox(yAxes5, T4);
    BoxParam->transformBox(zAxes5, T4);

    BoxParam->drawBox(im, xAxes5, colour[1], 1);
    BoxParam->drawBox(im, yAxes5, colour[2], 1);
    BoxParam->drawBox(im, zAxes5, colour[3], 1);

    BoxParam->updateAuto(im, Link0, Link1, Link2, Link3, colour);
    // usleep(1000);
    waitKey(1);
  }

  for (float i = 40; i > -40; i = i - 2) {
    cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
    // cv::namedWindow("7825 Project");

    std::vector<Mat> Link0 = BoxParam->createBox(0, 0, 0);
    std::vector<Mat> Link1 = BoxParam->createBox(200, 50, 50);
    std::vector<Mat> Link2 = BoxParam->createBox(200, 50, 50);
    std::vector<Mat> Link3 = BoxParam->createBox(200, 50, 50);

    std::vector<Mat> xAxes1 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes1 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes1 = BoxParam->createLine(0, 0, 25);

    Mat T0 = BoxParam->createHT(im.size().width / 2, im.size().height / 2, 0,
                                CV_PI + view_angle, 0, 0);
    Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, 0, 0);
    Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
    Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
    Mat T4 = T3 * BoxParam->createHT(0, -1 * i, 0, 0, 0, -1 * CV_PI / 2);

    BoxParam->transformBox(Link0, T0);
    BoxParam->transformBox(Link1, T1);
    BoxParam->transformBox(Link2, T2);
    BoxParam->transformBox(Link3, T4);

    colour.push_back(CV_RGB(255, 255, 255));
    colour.push_back(CV_RGB(255, 0, 0));
    colour.push_back(CV_RGB(0, 255, 0));
    colour.push_back(CV_RGB(0, 0, 255));

    std::vector<Mat> xAxes2 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes2 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes2 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes2, T1);
    BoxParam->transformBox(yAxes2, T1);
    BoxParam->transformBox(zAxes2, T1);

    BoxParam->drawBox(im, xAxes2, colour[1], 1);
    BoxParam->drawBox(im, yAxes2, colour[2], 1);
    BoxParam->drawBox(im, zAxes2, colour[3], 1);

    std::vector<Mat> xAxes3 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes3 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes3 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes3, T2);
    BoxParam->transformBox(yAxes3, T2);
    BoxParam->transformBox(zAxes3, T2);

    BoxParam->drawBox(im, xAxes3, colour[1], 1);
    BoxParam->drawBox(im, yAxes3, colour[2], 1);
    BoxParam->drawBox(im, zAxes3, colour[3], 1);

    std::vector<Mat> xAxes4 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes4 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes4 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes4, T3);
    BoxParam->transformBox(yAxes4, T3);
    BoxParam->transformBox(zAxes4, T3);

    BoxParam->drawBox(im, xAxes4, colour[1], 1);
    BoxParam->drawBox(im, yAxes4, colour[2], 1);
    BoxParam->drawBox(im, zAxes4, colour[3], 1);

    std::vector<Mat> xAxes5 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes5 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes5 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes5, T4);
    BoxParam->transformBox(yAxes5, T4);
    BoxParam->transformBox(zAxes5, T4);

    BoxParam->drawBox(im, xAxes5, colour[1], 1);
    BoxParam->drawBox(im, yAxes5, colour[2], 1);
    BoxParam->drawBox(im, zAxes5, colour[3], 1);

    BoxParam->updateAuto(im, Link0, Link1, Link2, Link3, colour);
    // usleep(1000);
    waitKey(1);
  }

  for (float i = -40; i <= 0; i = i + 2) {
    cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
    // cv::namedWindow("7825 Project");

    std::vector<Mat> Link0 = BoxParam->createBox(0, 0, 0);
    std::vector<Mat> Link1 = BoxParam->createBox(200, 50, 50);
    std::vector<Mat> Link2 = BoxParam->createBox(200, 50, 50);
    std::vector<Mat> Link3 = BoxParam->createBox(200, 50, 50);

    std::vector<Mat> xAxes1 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes1 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes1 = BoxParam->createLine(0, 0, 25);

    Mat T0 = BoxParam->createHT(im.size().width / 2, im.size().height / 2, 0,
                                CV_PI + view_angle, 0, 0);
    Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, 0, 0);
    Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
    Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, 0, 0);
    Mat T4 = T3 * BoxParam->createHT(0, -1 * i, 0, 0, 0, -1 * CV_PI / 2);

    BoxParam->transformBox(Link0, T0);
    BoxParam->transformBox(Link1, T1);
    BoxParam->transformBox(Link2, T2);
    BoxParam->transformBox(Link3, T4);

    colour.push_back(CV_RGB(255, 255, 255));
    colour.push_back(CV_RGB(255, 0, 0));
    colour.push_back(CV_RGB(0, 255, 0));
    colour.push_back(CV_RGB(0, 0, 255));

    std::vector<Mat> xAxes2 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes2 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes2 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes2, T1);
    BoxParam->transformBox(yAxes2, T1);
    BoxParam->transformBox(zAxes2, T1);

    BoxParam->drawBox(im, xAxes2, colour[1], 1);
    BoxParam->drawBox(im, yAxes2, colour[2], 1);
    BoxParam->drawBox(im, zAxes2, colour[3], 1);

    std::vector<Mat> xAxes3 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes3 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes3 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes3, T2);
    BoxParam->transformBox(yAxes3, T2);
    BoxParam->transformBox(zAxes3, T2);

    BoxParam->drawBox(im, xAxes3, colour[1], 1);
    BoxParam->drawBox(im, yAxes3, colour[2], 1);
    BoxParam->drawBox(im, zAxes3, colour[3], 1);

    std::vector<Mat> xAxes4 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes4 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes4 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes4, T3);
    BoxParam->transformBox(yAxes4, T3);
    BoxParam->transformBox(zAxes4, T3);

    BoxParam->drawBox(im, xAxes4, colour[1], 1);
    BoxParam->drawBox(im, yAxes4, colour[2], 1);
    BoxParam->drawBox(im, zAxes4, colour[3], 1);

    std::vector<Mat> xAxes5 = BoxParam->createLine(25, 0, 0);
    std::vector<Mat> yAxes5 = BoxParam->createLine(0, 25, 0);
    std::vector<Mat> zAxes5 = BoxParam->createLine(0, 0, 25);

    BoxParam->transformBox(xAxes5, T4);
    BoxParam->transformBox(yAxes5, T4);
    BoxParam->transformBox(zAxes5, T4);

    BoxParam->drawBox(im, xAxes5, colour[1], 1);
    BoxParam->drawBox(im, yAxes5, colour[2], 1);
    BoxParam->drawBox(im, zAxes5, colour[3], 1);

    BoxParam->updateAuto(im, Link0, Link1, Link2, Link3, colour);
    // usleep(1000);
    waitKey(1);
  }
  //} while(waitKey(1) != 'q');
}

void manual_control() {
  // Manual control of rotation of joints
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

  // Vectors
  std::vector<Scalar> colour;
  std::vector<Mat> Box;

  colour.push_back(CV_RGB(255, 255, 255));
  colour.push_back(CV_RGB(255, 0, 0));
  colour.push_back(CV_RGB(0, 255, 0));
  colour.push_back(CV_RGB(0, 0, 255));

  Size image_size = Size(1280, 720);

  cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
  // cv::namedWindow("7825 Project");

  std::vector<Mat> Link0 = BoxParam->createBox(0, 0, 0);
  std::vector<Mat> Link1 = BoxParam->createBox(200, 50, 50);
  std::vector<Mat> Link2 = BoxParam->createBox(200, 50, 50);
  std::vector<Mat> Link3 = BoxParam->createBox(200, 50, 50);

  std::vector<Mat> xAxes1 = BoxParam->createLine(25, 0, 0);
  std::vector<Mat> yAxes1 = BoxParam->createLine(0, 25, 0);
  std::vector<Mat> zAxes1 = BoxParam->createLine(0, 0, 25);

  Mat T0 = BoxParam->createHT(im.size().width / 2, im.size().height / 2, 0,
                              -1 * CV_PI / 8 + view_angle, 0, 0);
  Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, (L1 / 180) * CV_PI, 0);
  Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, (L2 / 180) * CV_PI, 0);
  Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, (L3 / 180) * CV_PI, 0);
  Mat T4 = T3 * BoxParam->createHT(0, -1 * L4, 0, 0, 0, CV_PI / 2);

  BoxParam->transformBox(Link0, T0);
  BoxParam->transformBox(Link1, T1);
  BoxParam->transformBox(Link2, T2);
  BoxParam->transformBox(Link3, T4);

  std::vector<Mat> xAxes2 = BoxParam->createLine(25, 0, 0);
  std::vector<Mat> yAxes2 = BoxParam->createLine(0, 25, 0);
  std::vector<Mat> zAxes2 = BoxParam->createLine(0, 0, 25);

  BoxParam->transformBox(xAxes2, T1);
  BoxParam->transformBox(yAxes2, T1);
  BoxParam->transformBox(zAxes2, T1);

  BoxParam->drawBox(im, xAxes2, colour[1], 1);
  BoxParam->drawBox(im, yAxes2, colour[2], 1);
  BoxParam->drawBox(im, zAxes2, colour[3], 1);

  std::vector<Mat> xAxes3 = BoxParam->createLine(25, 0, 0);
  std::vector<Mat> yAxes3 = BoxParam->createLine(0, 25, 0);
  std::vector<Mat> zAxes3 = BoxParam->createLine(0, 0, 25);

  BoxParam->transformBox(xAxes3, T2);
  BoxParam->transformBox(yAxes3, T2);
  BoxParam->transformBox(zAxes3, T2);

  BoxParam->drawBox(im, xAxes3, colour[1], 1);
  BoxParam->drawBox(im, yAxes3, colour[2], 1);
  BoxParam->drawBox(im, zAxes3, colour[3], 1);

  std::vector<Mat> xAxes4 = BoxParam->createLine(25, 0, 0);
  std::vector<Mat> yAxes4 = BoxParam->createLine(0, 25, 0);
  std::vector<Mat> zAxes4 = BoxParam->createLine(0, 0, 25);

  BoxParam->transformBox(xAxes4, T3);
  BoxParam->transformBox(yAxes4, T3);
  BoxParam->transformBox(zAxes4, T3);

  BoxParam->drawBox(im, xAxes4, colour[1], 1);
  BoxParam->drawBox(im, yAxes4, colour[2], 1);
  BoxParam->drawBox(im, zAxes4, colour[3], 1);

  std::vector<Mat> xAxes5 = BoxParam->createLine(25, 0, 0);
  std::vector<Mat> yAxes5 = BoxParam->createLine(0, 25, 0);
  std::vector<Mat> zAxes5 = BoxParam->createLine(0, 0, 25);

  BoxParam->transformBox(xAxes5, T4);
  BoxParam->transformBox(yAxes5, T4);
  BoxParam->transformBox(zAxes5, T4);

  BoxParam->drawBox(im, xAxes5, colour[1], 1);
  BoxParam->drawBox(im, yAxes5, colour[2], 1);
  BoxParam->drawBox(im, zAxes5, colour[3], 1);

  BoxParam->updateMan(im, Link0, Link1, Link2, Link3, colour);
  // waitKey(0);
  waitKey(1);

  end_effector(L1, L2, L3, L4);
}

void fkine(float p, float theta, float q1, float q2) {
  float view_angle = 0.6; // 0.2 looks good

  // Vectors
  std::vector<Scalar> colour;
  std::vector<Mat> Box;

  colour.push_back(CV_RGB(255, 255, 255));
  colour.push_back(CV_RGB(255, 0, 0));
  colour.push_back(CV_RGB(0, 255, 0));
  colour.push_back(CV_RGB(0, 0, 255));

  Size image_size = Size(1280, 720);

  cv::Mat im = cv::Mat::zeros(image_size, CV_8UC3) + CV_RGB(60, 60, 60);
  // cv::namedWindow("7825 Project");

  std::vector<Mat> Link0 = BoxParam->createBox(0, 0, 0);
  std::vector<Mat> Link1 = BoxParam->createBox(200, 50, 50);
  std::vector<Mat> Link2 = BoxParam->createBox(200, 50, 50);
  std::vector<Mat> Link3 = BoxParam->createBox(200, 50, 50);

  std::vector<Mat> xAxes1 = BoxParam->createLine(25, 0, 0);
  std::vector<Mat> yAxes1 = BoxParam->createLine(0, 25, 0);
  std::vector<Mat> zAxes1 = BoxParam->createLine(0, 0, 25);

  Mat T0 = BoxParam->createHT(im.size().width / 2, im.size().height / 2, 0,
                              -1 * CV_PI / 8 + view_angle, 0, 0);
  Mat T1 = T0 * BoxParam->createHT(0, 0, 0, 0, -q1, 0);
  Mat T2 = T1 * BoxParam->createHT(200, 0, 0, 0, -q2, 0);
  Mat T3 = T2 * BoxParam->createHT(200, 0, 0, 0, theta, 0);
  Mat T4 = T3 * BoxParam->createHT(0, -1 * p, 0, 0, 0, CV_PI / 2);

  BoxParam->transformBox(Link0, T0);
  BoxParam->transformBox(Link1, T1);
  BoxParam->transformBox(Link2, T2);
  BoxParam->transformBox(Link3, T4);

  std::vector<Mat> xAxes2 = BoxParam->createLine(25, 0, 0);
  std::vector<Mat> yAxes2 = BoxParam->createLine(0, 25, 0);
  std::vector<Mat> zAxes2 = BoxParam->createLine(0, 0, 25);

  BoxParam->transformBox(xAxes2, T1);
  BoxParam->transformBox(yAxes2, T1);
  BoxParam->transformBox(zAxes2, T1);

  BoxParam->drawBox(im, xAxes2, colour[1], 1);
  BoxParam->drawBox(im, yAxes2, colour[2], 1);
  BoxParam->drawBox(im, zAxes2, colour[3], 1);

  std::vector<Mat> xAxes3 = BoxParam->createLine(25, 0, 0);
  std::vector<Mat> yAxes3 = BoxParam->createLine(0, 25, 0);
  std::vector<Mat> zAxes3 = BoxParam->createLine(0, 0, 25);

  BoxParam->transformBox(xAxes3, T2);
  BoxParam->transformBox(yAxes3, T2);
  BoxParam->transformBox(zAxes3, T2);

  BoxParam->drawBox(im, xAxes3, colour[1], 1);
  BoxParam->drawBox(im, yAxes3, colour[2], 1);
  BoxParam->drawBox(im, zAxes3, colour[3], 1);

  std::vector<Mat> xAxes4 = BoxParam->createLine(25, 0, 0);
  std::vector<Mat> yAxes4 = BoxParam->createLine(0, 25, 0);
  std::vector<Mat> zAxes4 = BoxParam->createLine(0, 0, 25);

  BoxParam->transformBox(xAxes4, T3);
  BoxParam->transformBox(yAxes4, T3);
  BoxParam->transformBox(zAxes4, T3);

  BoxParam->drawBox(im, xAxes4, colour[1], 1);
  BoxParam->drawBox(im, yAxes4, colour[2], 1);
  BoxParam->drawBox(im, zAxes4, colour[3], 1);

  std::vector<Mat> xAxes5 = BoxParam->createLine(25, 0, 0);
  std::vector<Mat> yAxes5 = BoxParam->createLine(0, 25, 0);
  std::vector<Mat> zAxes5 = BoxParam->createLine(0, 0, 25);

  BoxParam->transformBox(xAxes5, T4);
  BoxParam->transformBox(yAxes5, T4);
  BoxParam->transformBox(zAxes5, T4);

  BoxParam->drawBox(im, xAxes5, colour[1], 1);
  BoxParam->drawBox(im, yAxes5, colour[2], 1);
  BoxParam->drawBox(im, zAxes5, colour[3], 1);

  BoxParam->updateMan(im, Link0, Link1, Link2, Link3, colour);
  // waitKey(0);
  waitKey(1);
}

void ikine(float x, float y, float z, float theta) {
  float imHeight = 720;
  float imWidth = 1280;

  std::vector<float> q;
  q = BoxParam->inverseKinematics(x, y);
  // float q1 = BoxParam->inverseKinematics(x,y,1);
  // float q2 = BoxParam->inverseKinematics(x,y,2);
  fkine(z, (-1 * theta + q.at(0) + q.at(1)), q.at(0), q.at(1));
  cout << endl << "q1 angle:" << (q.at(0) / CV_PI) * 180 << endl;
  cout << "q2 angle:" << (q.at(1) / CV_PI) * 180 << endl;
  cout << "q3 angle:" << -1 * theta + q.at(0) + q.at(1) << endl;
  cout << "q4 (prismatic):" << z << endl << endl;
}

void ikine_animate() {

  float imHeight = 720;
  float imWidth = 1280;
  std::vector<float> q;

  for (float x = -100; x <= 100; x++) {
    q = BoxParam->inverseKinematics(x, 50);
    fkine(-50, 0, q.at(0), q.at(1));
  }
}

void ctraj_animate() {
  std::vector<Point2f> position;

  std::vector<float> q;
  position = BoxParam->ctrajpos(200, 100, 150, 150, 50, 0, 0, 5, 5);

  for (int i = 0; i < position.size(); i++) {
    q = BoxParam->inverseKinematics(position[i].x, position[i].y);

    fkine(0, 0, q.at(0), q.at(1));
  }

  position = BoxParam->ctrajpos(150, 150, -100, 200, 50, 0, 0, 5, 5);

  for (int i = 0; i < position.size(); i++) {
    q = BoxParam->inverseKinematics(position[i].x, position[i].y);

    fkine(0, 0, q.at(0), q.at(1));
  }

  position = BoxParam->ctrajpos(-100, 200, 200, 200, 50, 0, 0, 5, 5);

  for (int i = 0; i < position.size(); i++) {
    q = BoxParam->inverseKinematics(position[i].x, position[i].y);

    fkine(0, 0, q.at(0), q.at(1));
  }
}

void jtraj_animate() {
  std::vector<Point2f> j1;
  std::vector<Point2f> j2;
  std::vector<Point2f> j3;
  std::vector<Point2f> j4;

  j1 = BoxParam->jtrajpos(0, CV_PI / 2, 0, 0, 200, 0, 0, 0, 0);
  j2 = BoxParam->jtrajpos(0, CV_PI / 2, 0, 0, 200, 0, 0, 0, 0);
  j3 = BoxParam->jtrajpos(0, CV_PI / 2, 0, 0, 200, 0, 0, 0, 0);
  j4 = BoxParam->jtrajpos(0, 100, 0, 0, 200, 0, 0, 0, 0);

  for (int i = 0; i < j1.size(); i++) {
    fkine(j4[i].y, j3[i].y, j1[i].y, j2[i].y);
  }

  j1 = BoxParam->jtrajpos(0, 0, 0, CV_PI / 2, 200, 0, 0, 0, 0);
  j2 = BoxParam->jtrajpos(0, 0, 0, CV_PI / 2, 200, 0, 0, 0, 0);
  j3 = BoxParam->jtrajpos(0, 0, 0, CV_PI / 2, 200, 0, 0, 0, 0);
  j4 = BoxParam->jtrajpos(0, 0, 0, 100, 200, 0, 0, 0, 0);

  for (int i = 0; i < j1.size(); i++) {
    fkine(j4[i].y, j3[i].y, j1[i].y, j2[i].y);
  }
}

void deepNeuralNet() {

  VideoCapture inputVideo;
  inputVideo.open(0);
  while (inputVideo.grab()) {

    Mat im, imageCopy;
    inputVideo.retrieve(im);
    Size network_input_image_size = Size(416, 416);

    // cv::Mat im = cv::Mat::zeros(network_input_image_size, CV_8UC3) +
    // CV_RGB(60, 60, 60);

    vector<string> output_layer_name;
    // Load vector of class names (objects trained to identify)
    vector<string> classnames;
    string load_str;
    ifstream filename(
        "/Users/billalrahimi/Desktop/Robotics/C_Template/Lab2/coco.names");
    while (std::getline(filename, load_str)) {
      classnames.push_back(load_str);
    }
    // Load YoloV3 DNN configuration and weights
    cv::dnn::Net net = cv::dnn::readNetFromDarknet(
        "/Users/billalrahimi/Desktop/Robotics/C_Template/Lab2/yolov3.cfg",
        "/Users/billalrahimi/Desktop/Robotics/C_Template/Lab2/yolov3.weights");
    net.setPreferableBackend(cv::dnn::DNN_BACKEND_OPENCV);
    net.setPreferableTarget(cv::dnn::DNN_TARGET_CPU);
    // Get layer names and output layer indexes
    vector<string> layer_name = net.getLayerNames();
    vector<int> output_layer_index = net.getUnconnectedOutLayers();
    for (int out_index = 0; out_index < output_layer_index.size();
         out_index++) {
      output_layer_name.push_back(
          layer_name.at(output_layer_index.at(out_index) - 1));
    }
    Mat input_blob;
    vector<Mat> network_output;
    // Setup 4D Tensor - scale and resize input image to fit network trained
    // data
    cv::dnn::blobFromImage(im, input_blob, 1 / 255.0, network_input_image_size,
                           Scalar(0, 0, 0), true, false);
    // Input the image to network
    net.setInput(input_blob);
    // Runs the forward pass
    net.forward(network_output, output_layer_name);
    // Pull out all the found objects with confidence and bounding boxes
    vector<int> id;
    vector<float> conf;
    vector<Rect> bbox;
    float confidence_threshold = 0.6;
    float nms_threshold = 0.35;
    // Loop over each output layer (x3 YOLOv3)
    for (int output_index = 0; output_index < network_output.size();
         output_index++) {
      int detections_in_layer = network_output[output_index].rows;
      int output_data_offset = network_output[output_index].cols;
      // Loop over each detection
      for (int detect_index = 0; detect_index < detections_in_layer;
           detect_index++) {
        Point max_class;
        double max_conf;
        // network_output = bbox (center (x, y), width, height), bbox
        // confidence, 80x class confidence index to a single result
        float *data = (float *)network_output[output_index].data +
                      detect_index * output_data_offset;
        // Get all class scores (confidence per class) (x80 YOLOv3)
        Mat class_conf = network_output[output_index]
                             .row(detect_index)
                             .colRange(5, network_output[output_index].cols);
        // Find class with highest confidence
        minMaxLoc(class_conf, 0, &max_conf, 0, &max_class);
        // If high enough confidence then save
        if (max_conf > confidence_threshold) {
          Point bbox_center;
          Size bbox_size;
          // Rescale bbox to image size in pixels (from 0..1)
          bbox_center.x = (int)(data[0] * im.size().width);
          bbox_center.y = (int)(data[1] * im.size().height);
          bbox_size.width = (int)(data[2] * im.size().width);
          bbox_size.height = (int)(data[3] * im.size().height);
          // save
          id.push_back(max_class.x);
          conf.push_back((float)max_conf);
          bbox.push_back(Rect(bbox_center.x - bbox_size.width / 2,
                              bbox_center.y - bbox_size.height / 2,
                              bbox_size.width, bbox_size.height));
        }
      }
    }
    // Non Maximum Suppression - remove overlapping boxes
    vector<int> found_index;
    dnn::NMSBoxes(bbox, conf, confidence_threshold, nms_threshold, found_index);
    for (int object_index = 0; object_index < found_index.size();
         object_index++) {
      int index = found_index.at(object_index);
      rectangle(im, bbox.at(index), Scalar(255, 255, 0));
      string str = format("%.2f: ", conf.at(index));
      str = str + classnames.at(id.at(index));
      string xCor = to_string(bbox.at(index).x);
      string yCor = to_string(bbox.at(index).y);
      string zCor = to_string((bbox.at(index).x * bbox.at(index).y) / 1000);
      string coordinate =
          "X: " + xCor + " " + "Y: " + yCor + " " + "Z: " + zCor;
      putText(im, str, Point(bbox.at(index).x, bbox.at(index).y - 10),
              FONT_HERSHEY_SIMPLEX, 0.65, Scalar(255, 255, 255), 2);
      putText(im, coordinate, Point(bbox.at(index).x, bbox.at(index).y + 10),
              FONT_HERSHEY_SIMPLEX, 0.65, Scalar(255, 255, 255), 2);
      if (classnames.at(id.at(index)) == "remote" ||
          classnames.at(id.at(index)) == "cell phone") {
        ikine(-1 * bbox.at(index).x, -1 * bbox.at(index).y,
              (bbox.at(index).x * bbox.at(index).y) / 1000, 0);
      }
    }
    // Time per layer and overall time
    vector<double> layer_proc_time;
    double proc_time = net.getPerfProfile(layer_proc_time) / getTickFrequency();
    putText(im, format("Proc Time: %.2f ", proc_time), Point(0, 15),
            FONT_HERSHEY_SIMPLEX, 0.65, Scalar(255, 255, 255), 2);
    imshow("DNN", im);
    waitKey(10);
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////
//

int main(int argc, char *argv[]) {

  // Gibberish
  /*
  CommandLineParser parser(argc, argv, keys);
  parser.about(about);

  if (argc < 6) {
    parser.printMessage();
    return 0;
  }

  int squaresX = parser.get<int>("w");
  int squaresY = parser.get<int>("h");
  float squareLength = parser.get<float>("sl");
  float markerLength = parser.get<float>("ml");
  int dictionaryId = parser.get<int>("d");
  bool showRejected = parser.has("r");
  bool refindStrategy = parser.has("rs");
  int camId = parser.get<int>("ci");

  String video;
  if (parser.has("v")) {
    video = parser.get<String>("v");
  }

  Mat camMatrix, distCoeffs;
  if (parser.has("c")) {
    bool readOk =
        readCameraParameters(parser.get<string>("c"), camMatrix,
  distCoeffs); if (!readOk) { cerr << "Invalid camera file" << endl; return
  0;
    }
  }

  Ptr<aruco::DetectorParameters> detectorParams =
      aruco::DetectorParameters::create();
  if (parser.has("dp")) {
    bool readOk =
        readDetectorParameters(parser.get<string>("dp"), detectorParams);
    if (!readOk) {
      cerr << "Invalid detector parameters file" << endl;
      return 0;
    }
  }

  if (!parser.check()) {
    parser.printErrors();
    return 0;
  }

  Ptr<aruco::Dictionary> dictionary = aruco::getPredefinedDictionary(
      aruco::PREDEFINED_DICTIONARY_NAME(dictionaryId));

  VideoCapture inputVideo;
  int waitTime;
  if (!video.empty()) {
    inputVideo.open(video);
    waitTime = 0;
  } else {
    inputVideo.open(camId);
    waitTime = 10;
  }

  float axisLength = 0.5f * ((float)min(squaresX, squaresY) *
  (squareLength));

  // create charuco board object
  Ptr<aruco::CharucoBoard> charucoboard = aruco::CharucoBoard::create(
      squaresX, squaresY, squareLength, markerLength, dictionary);
  Ptr<aruco::Board> board = charucoboard.staticCast<aruco::Board>();

  double totalTime = 0;
  int totalIterations = 0;
  */

  // Gibberish
  // Initalize Menu
  int exit = 1;
  while (exit != 0) {

    int s;
    cout << "Please Select from the following itemssss:" << endl;
    cout << "(0) Manual Control (Forward Kinematics)" << endl;
    cout << "(1) Animate Fkine" << endl;
    cout << "(2) Fixed Position" << endl;
    cout << "(3) Inverse Kinematics" << endl;
    cout << "(4) Animate Inverse Kinematics" << endl;
    cout << "(5) ctraj" << endl;
    cout << "(6) jtraj" << endl;
    cout << "(7) Calibration" << endl;
    cout << "(8) DNN" << endl;
    cout << "(9) Exit" << endl;
    cout << "Enter Value Option: ";
    cin >> s;

    switch (s) {
    case 0:
      printf("\nManual Control/End Effector\n\n");
      // Lab2
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
      /*
        while (inputVideo.grab()) {
          Mat image, imageCopy;
          inputVideo.retrieve(image);

          double tick = (double)getTickCount();

          vector<int> markerIds, charucoIds;
          vector<vector<Point2f>> markerCorners, rejectedMarkers;
          vector<Point2f> charucoCorners;
          Vec3d rvec, tvec;

          // detect markers
          aruco::detectMarkers(image, dictionary, markerCorners, markerIds,
                               detectorParams, rejectedMarkers);

          // refind strategy to detect more markers
          if (refindStrategy)
            aruco::refineDetectedMarkers(image, board, markerCorners,
        markerIds, rejectedMarkers, camMatrix, distCoeffs);

          // interpolate charuco corners
          int interpolatedCorners = 0;
          if (markerIds.size() > 0)
            interpolatedCorners = aruco::interpolateCornersCharuco(
                markerCorners, markerIds, image, charucoboard,
        charucoCorners, charucoIds, camMatrix, distCoeffs);
          // cout << interpolatedCorners << endl;

          // estimate charuco board pose
          bool validPose = false;
          if (camMatrix.total() != 0)
            validPose = aruco::estimatePoseCharucoBoard(
                charucoCorners, charucoIds, charucoboard, camMatrix,
        distCoeffs, rvec, tvec);

          double currentTime =
              ((double)getTickCount() - tick) / getTickFrequency();
          totalTime += currentTime;
          totalIterations++;
          if (totalIterations % 30 == 0) {
            cout << "Detection Time = " << currentTime * 1000 << " ms "
                 << "(Mean = " << 1000 * totalTime / double(totalIterations)
                 << " ms)" << endl;
          }

          // draw results
          image.copyTo(imageCopy);
          if (markerIds.size() > 0) {
            aruco::drawDetectedMarkers(imageCopy, markerCorners);
          }

          if (showRejected && rejectedMarkers.size() > 0)
            aruco::drawDetectedMarkers(imageCopy, rejectedMarkers,
        noArray(), Scalar(100, 0, 255));

          if (interpolatedCorners > 0) {
            Scalar color;
            color = Scalar(255, 0, 0);
            aruco::drawDetectedCornersCharuco(imageCopy, charucoCorners,
                                              charucoIds, color);
          }

          if (validPose) {
            aruco::drawAxis(imageCopy, camMatrix, distCoeffs, rvec, tvec,
                            axisLength);
            ikine(-1 * (tvec[0] - 800), -1 * (tvec[2] - 2100),
                  -1 * (tvec[1] - 300), 0);
          }

          imshow("out", imageCopy);
          char key = (char)waitKey(waitTime);
          if (key == 27)
          */
      continue;
      break;
      //}
      break;
    case 8:
      deepNeuralNet();
      break;
    case 9:
      exit = 0;
      break;
    }
  }

  return 1;
}
