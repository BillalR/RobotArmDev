#include "CRobot.hpp"




//Constructor
Box::Box()
{

}

// Create Homogeneous Transformation Matrix
Mat Box::createHT(float tx, float ty, float tz, float rx, float ry, float rz)
{
  float r11, r12, r13, r21, r22, r23, r31, r32, r33;

  r11 = cos(rz) * cos(ry);
  r12 = cos(rz) * sin(ry) * sin(rx) - sin(rz) * cos(rx);
  r13 = cos(rz) * sin(ry) * cos(rx) + sin(rz) * sin(rx);
  r21 = sin(rz) * cos(ry);
  r22 = sin(rz) * sin(ry) * sin(rx) + cos(rz) * cos(rx);
  r23 = sin(rz) * sin(ry) * cos(rx) - cos(rz) * sin(rx);
  r31 = -1.0 * sin(ry);
  r32 = cos(ry) * sin(rx);
  r33 = cos(ry) * cos(rx);

  return (Mat1f(4, 4) << r11, r12, r13, tx, r21, r22, r23, ty, r31, r32, r33, tz, 0, 0, 0, 1);
}

//Return the box points to draw
std::vector<Mat> Box::createBox(float w, float h, float d)
{
  std::vector <Mat> box;

  // The 8 vertexes, origin at the middle of the box
  box.push_back(Mat((Mat1f(4, 1) << -w / 2, -h / 2, -d / 2, 1)));
  box.push_back(Mat((Mat1f(4, 1) << w/2, - h / 2, -d / 2, 1)));
  box.push_back(Mat((Mat1f(4, 1) << w/2, h/2, -d / 2, 1)));
  box.push_back(Mat((Mat1f(4, 1) << -w/2, h/2, -d / 2, 1)));
  box.push_back(Mat((Mat1f(4, 1) << -w/2, -h/2, d / 2, 1)));
  box.push_back(Mat((Mat1f(4, 1) << w/2, -h/2, d / 2, 1)));
  box.push_back(Mat((Mat1f(4, 1) << w/2, h/2, d / 2, 1)));
  box.push_back(Mat((Mat1f(4, 1) << -w/2, h/2, d / 2, 1)));

  // Move origin to middle of the the left hand face
  Mat T = createHT(w/2, 0, 0, 0, 0, 0);
  for (int i = 0; i < box.size(); i++)
  {
    box.at(i) = T * box.at(i);
  }

  return box;
}

//Return the coordinate system points
std::vector<Mat> Box::createLine(float w, float h, float d)
{
  std::vector <Mat> box;

  // The 8 vertexes, origin at the middle of the box
  box.push_back(Mat((Mat1f(4, 1) << -w / 2, -h , -d, 1)));
  box.push_back(Mat((Mat1f(4, 1) << w/2, 0 , 0, 1)));

  Mat T = createHT(w/2, 0, 0, 0, 0, 0);
  for (int i = 0; i < box.size(); i++)
  {
    box.at(i) = T * box.at(i);
  }

  return box;
}

void Box::transformBox(std::vector<Mat> &box, Mat T)
{
  for (int i = 0; i < box.size(); i++)
  {
    box.at(i) = T * box.at(i);
  }
}


void Box::drawBox(Mat& im, std::vector<Mat> box, Scalar colour, int clr)
{
  // The 12 lines connecting all vertexes
  float draw_box1[] = { 0,1,2,3,4,5,6,7,0,1,2,3 };
  float draw_box2[] = { 1,2,3,0,5,6,7,4,4,5,6,7 };
  float axes[1] = {0};
  float axes2[1] = {1};
  //float draw_box1[] = { 3};
  //float draw_box2[] = { 0};
  float draw_coordinates[] = {1,2,4};
  vector<Scalar> color;
  color.push_back(CV_RGB(255,0,0));
  color.push_back(CV_RGB(0,255,0));
  color.push_back(CV_RGB(0,0,255));
  vector<Mat> tempBox = box;

  if(clr != 1)
  {
  for (int i = 0; i < 12; i++)
  {
    Point pt1 = Point2f(box.at(draw_box1[i]).at<float>(0, 0), box.at(draw_box1[i]).at<float>(1, 0));
    Point pt2 = Point2f(box.at(draw_box2[i]).at<float>(0, 0), box.at(draw_box2[i]).at<float>(1, 0));
    line(im, pt1, pt2, colour, 1);
  }
}else
{
  for (int j = 0; j < 1; j++)
  {
    //cout<<"hi";
    Point pt1 = Point2f(box.at(axes[j]).at<float>(0, 0), box.at(axes[j]).at<float>(1, 0));
    Point pt2 = Point2f(box.at(axes2[j]).at<float>(0, 0), box.at(axes2[j]).at<float>(1, 0));
    line(im, pt1, pt2, colour, 1);
    break;
  }
  }



}

void Box::updateAuto(Mat& im, std::vector<Mat> ref, std::vector<Mat> Box1, std::vector<Mat> Box2, std::vector<Mat> Box3, std::vector<Scalar> colour)
{
  drawBox(im, ref, colour[0], 0);
  drawBox(im, Box1, colour[1], 0);
  drawBox(im, Box2, colour[2], 0);
  drawBox(im, Box3, colour[3], 0);
  //drawBox(im, Box4, colour[3]);
  imshow("Robot", im);
  waitKey(1);
}

void Box::updateMan(Mat& im, std::vector<Mat> ref, std::vector<Mat> Box1, std::vector<Mat> Box2, std::vector<Mat> Box3, std::vector<Scalar> colour)
{
  //cout << "run2";
  //count = count + 1;
  drawBox(im, ref, colour[0],0);
  drawBox(im, Box1, colour[1],0);
  drawBox(im, Box2, colour[2],0);
  drawBox(im, Box3, colour[3],0);
  //cout << "run3";
  //drawBox(im, Box4, colour[3]);
  imshow("Robot", im);
  //cout << "run4";
  waitKey(1);
}

void Box::run(Mat& im, std::vector<Mat> Box1, std::vector<Mat> Box2, std::vector<Mat> Box3, std::vector<Scalar> colour)
{
  while (waitKey(1) != 'q')	// while 'q' is not pressed
	{
    drawBox(im, Box1, colour[0], 1);
    drawBox(im, Box2, colour[1], 0);
    drawBox(im, Box3, colour[2], 0);
    //drawBox(im, Box4, colour[3]);
    imshow("Robot", im);
    waitKey(0);
	}

}

//Return the coordinate system points
std::vector<float> Box::inverseKinematics(float x, float y)
{
  std::vector<float> q;
  float a1 = 200;
  float a2 = 200;
  float q1;
  float q2;
  float a = -pow(x,4)-2*pow(x,2)*pow(y,2) + 160000*pow(x,2) - pow(y,4) + 160000*pow(y,2);
  float b = -pow(x,2)-pow(y,2)+160000;
  float c = pow(x,2)+pow(y,2);
    //q1 = 2 * atan2((2*a1*y + pow(-pow(a1,4)+2*pow(a2,2)*pow(a1,2)+ 2 * pow(a1, 2) * pow(x, 2)+ 2 * pow(a1, 2) * pow(y, 2)-pow(a2,4)+2*pow(a2,2)*pow(x,2)+ 2 * pow(a2, 2) * pow(y, 2)-pow(x,4)- 2 * pow(x, 2) * pow(y, 2)-pow(y,4),1/2)) , pow(a1,2) + 2*a1*x-pow(a2,2)+pow(x, 2) + pow(y, 2));

    //q2 = acos((pow(x,2)+pow(y,2)-pow(a1,2)-pow(a2,2))/2*a1*a2);
    //q2 = -2 * atan2(pow((-pow(a1, 2) + 2*a1*a2 - pow(a2, 2) + pow(x, 2) + pow(y, 2))*(pow(a1,2) + 2*a1*a2 + pow(a2, 2) - pow(x, 2) - pow(y, 2)),1/2),-pow(a1,2) + 2*a1*a2 - pow(a2,2) + pow(x,2) + pow(y,2));

    q1 = 2*atan2((400*y + sqrt(a)),pow(x,2)+400*x + pow(y,2));
    q2 = -2*atan2(sqrt(b),sqrt(c));
    //q2 = acos((pow(x,2)+pow(y,2)-pow(a1,2)-pow(a2,2))/(2*a1*a2));
    q.push_back(q1);
    q.push_back(q2);

    return q;
}

std::vector<Point2f> Box::ctrajpos(float xiP, float yiP, float xfP, float yfP, float steps, float xiV, float yiV, float xfV, float yfV)
{
  vector<Point2f> points;
  vector<float> xP;
  vector<float> yP;
  vector<float> xV;
  vector<float> yV;
  float tscal = 1;
  vector<float> t;
  vector<Mat> tt;

  for(int i = steps; i >= 0; i--)
  {
    t.push_back((steps-i)/steps);
  }

  xP.push_back(xiP);
  xP.push_back(xfP);

  yP.push_back(yiP);
  yP.push_back(yfP);

  xV.push_back(xiV);
  xV.push_back(xfV);

  yV.push_back(yiV);
  yV.push_back(yfV);

  Mat p1 = (Mat1f(1,2) << xP[0], yP[0]);
  Mat p2 = (Mat1f(1,2) << xP[1], yP[1]);
  Mat v1 = (Mat1f(1,2) << xV[0], yV[0]);
  Mat v2 = (Mat1f(1,2) << xV[1], yV[1]);
  Mat z = (Mat1f(1,2) << 0, 0);

  //Polynomial coefficients
  Mat A = 6*(p2-p1)-3*(v2-v1)*tscal;
  Mat B = -15*(p2-p1) + (8*v1+7*v2)*tscal;
  Mat C = 10*(p2-p1) - (6*v1+4*v2)*tscal;
  Mat E = v1*tscal;
  Mat F = p1;

  for(int i = 0; i <= steps; i++)
  {
    float t1 = pow(t.at(i),5);
    float t2 = pow(t.at(i),4);
    float t3 = pow(t.at(i),3);
    float t4 = pow(t.at(i),2);
    float t5 = pow(t.at(i),1);

    tt.push_back(Mat((Mat1f(1,6) << t1, t2, t3, t4, t5, 1)));
  }

  Mat c = (Mat1f(6,2) << A.at<float>(0,0), A.at<float>(0,1), B.at<float>(0,0), B.at<float>(0,1), C.at<float>(0,0), C.at<float>(0,1), z.at<float>(0,0), z.at<float>(0,1), E.at<float>(0,0), E.at<float>(0,1), F.at<float>(0,0), F.at<float>(0,1));
  //cout << c << endl;
  for(int i = 0; i <= steps; i++)
  {
    Mat Result = tt.at(i)*c;
    points.push_back(Point2f(Result.at<float>(0,0),Result.at<float>(0,1)));
  }

  return points;

}

std::vector<Point2f> Box::ctrajvel(float xiP, float yiP, float xfP, float yfP, float steps, float xiV, float yiV, float xfV, float yfV)
{
  vector<Point2f> points;
  vector<float> xP;
  vector<float> yP;
  vector<float> xV;
  vector<float> yV;
  float tscal = 1;
  vector<float> t;
  vector<Mat> tt;

  for(int i = steps; i >= 0; i--)
  {
    t.push_back((steps-i)/steps);
  }

  xP.push_back(xiP);
  xP.push_back(xfP);

  yP.push_back(yiP);
  yP.push_back(yfP);

  xV.push_back(xiV);
  xV.push_back(xfV);

  yV.push_back(yiV);
  yV.push_back(yfV);

  Mat p1 = (Mat1f(1,2) << xP[0], yP[0]);
  Mat p2 = (Mat1f(1,2) << xP[1], yP[1]);
  Mat v1 = (Mat1f(1,2) << xV[0], yV[0]);
  Mat v2 = (Mat1f(1,2) << xV[1], yV[1]);
  Mat z = (Mat1f(1,2) << 0, 0);

  //Polynomial coefficients
  Mat A = 6*(p2-p1)-3*(v2-v1)*tscal;
  Mat B = -15*(p2-p1) + (8*v1+7*v2)*tscal;
  Mat C = 10*(p2-p1) - (6*v1+4*v2)*tscal;
  Mat E = v1*tscal;
  Mat F = p1;

  for(int i = 0; i <= steps; i++)
  {
    float t1 = pow(t.at(i),5);
    float t2 = pow(t.at(i),4);
    float t3 = pow(t.at(i),3);
    float t4 = pow(t.at(i),2);
    float t5 = pow(t.at(i),1);

    tt.push_back(Mat((Mat1f(1,6) << t1, t2, t3, t4, t5, 1)));
  }

  Mat c = (Mat1f(6,2) << z.at<float>(0,0), z.at<float>(0,1), 5*A.at<float>(0,0), 5*A.at<float>(0,1), 4*B.at<float>(0,0), 4*B.at<float>(0,1), 3*C.at<float>(0,0), 3*C.at<float>(0,1), z.at<float>(0,0), z.at<float>(0,1), E.at<float>(0,0), E.at<float>(0,1));

  for(int i = 0; i <= steps; i++)
  {
    Mat Result = tt.at(i)*c;
    points.push_back(Point2f(Result.at<float>(0,0),Result.at<float>(0,1)));
    //cout << i << endl;
  }


  //cout << points << endl;

  return points;

}

std::vector<Point2f> Box::jtrajpos(float xiP, float yiP, float xfP, float yfP, float steps, float xiV, float yiV, float xfV, float yfV)
{
  vector<Point2f> points;
  vector<float> xP;
  vector<float> yP;
  vector<float> xV;
  vector<float> yV;
  float tscal = 1;
  vector<float> t;
  vector<Mat> tt;

  for(int i = steps; i >= 0; i--)
  {
    t.push_back((steps-i)/steps);
  }

  xP.push_back(xiP);
  xP.push_back(xfP);

  yP.push_back(yiP);
  yP.push_back(yfP);

  xV.push_back(xiV);
  xV.push_back(xfV);

  yV.push_back(yiV);
  yV.push_back(yfV);

  Mat p1 = (Mat1f(1,2) << xP[0], yP[0]);
  Mat p2 = (Mat1f(1,2) << xP[1], yP[1]);
  Mat v1 = (Mat1f(1,2) << xV[0], yV[0]);
  Mat v2 = (Mat1f(1,2) << xV[1], yV[1]);
  Mat z = (Mat1f(1,2) << 0, 0);

  //Polynomial coefficients
  Mat A = 6*(p2-p1)-3*(v2-v1)*tscal;
  Mat B = -15*(p2-p1) + (8*v1+7*v2)*tscal;
  Mat C = 10*(p2-p1) - (6*v1+4*v2)*tscal;
  Mat E = v1*tscal;
  Mat F = p1;

  for(int i = 0; i <= steps; i++)
  {
    float t1 = pow(t.at(i),5);
    float t2 = pow(t.at(i),4);
    float t3 = pow(t.at(i),3);
    float t4 = pow(t.at(i),2);
    float t5 = pow(t.at(i),1);

    tt.push_back(Mat((Mat1f(1,6) << t1, t2, t3, t4, t5, 1)));
  }

  Mat c = (Mat1f(6,2) << A.at<float>(0,0), A.at<float>(0,1), B.at<float>(0,0), B.at<float>(0,1), C.at<float>(0,0), C.at<float>(0,1), z.at<float>(0,0), z.at<float>(0,1), E.at<float>(0,0), E.at<float>(0,1), F.at<float>(0,0), F.at<float>(0,1));
  //cout << c << endl;
  for(int i = 0; i <= steps; i++)
  {
    Mat Result = tt.at(i)*c;
    points.push_back(Point2f(Result.at<float>(0,0),Result.at<float>(0,1)));
  }

  return points;

}
