#include <stdio.h>
#include <string>
#include <iostream>
#include <thread>
#include <unistd.h>
#include <math.h>
#include <vector>
#include <tuple>
// OpenCV
#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;


////////////////////////////////////////////


class Box
{

public:
    Box();
    ~Box();

    //Variables
    //Polynomial coefficient variables
    //int count = 0;
    //Fucntion definitions
    std::vector<Mat> createBox(float w, float h, float d);
    std::vector<Mat> createLine(float w, float h, float d);
    Mat createHT(float tx, float ty, float tz, float rx, float ry, float rz);
    void transformBox(std::vector<Mat> &box, Mat T);
    void drawBox(Mat& im, std::vector<Mat> box, Scalar colour, int clr);
    void run(Mat& im, std::vector<Mat> Box1, std::vector<Mat> Box2, std::vector<Mat> Box3, std::vector<Scalar> colour);
    void updateMan(Mat& im, std::vector<Mat> ref, std::vector<Mat> Box1, std::vector<Mat> Box2, std::vector<Mat> Box3, std::vector<Scalar> colour);
    void updateAuto(Mat& im, std::vector<Mat> ref, std::vector<Mat> Box1, std::vector<Mat> Box2, std::vector<Mat> Box3, std::vector<Scalar> colour);
    std::vector<float> inverseKinematics(float x, float y);
    std::vector<Point2f> ctrajpos(float xiP, float yiP, float xfP, float yfP, float steps, float xiV, float yiV, float xfV, float yfV);
    std::vector<Point2f> ctrajvel(float xiP, float yiP, float xfP, float yfP, float steps, float xiV, float yiV, float xfV, float yfV);
    std::vector<Point2f> jtrajpos(float xiP, float yiP, float xfP, float yfP, float steps, float xiV, float yiV, float xfV, float yfV);
  

};
