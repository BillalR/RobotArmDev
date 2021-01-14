//
// This file is auto-generated. Please don't modify it!
//

#undef LOG_TAG

#include "opencv2/opencv_modules.hpp"
#ifdef HAVE_OPENCV_PHASE_UNWRAPPING

#include <string>

#include "opencv2/phase_unwrapping.hpp"

#include "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/../opencv_contrib/modules/phase_unwrapping/include/opencv2/phase_unwrapping/histogramphaseunwrapping.hpp"
#include "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/../opencv_contrib/modules/phase_unwrapping/include/opencv2/phase_unwrapping/phase_unwrapping.hpp"

#define LOG_TAG "org.opencv.phase_unwrapping"
#include "common.h"

using namespace cv;

/// throw java exception
#undef throwJavaException
#define throwJavaException throwJavaException_phase_unwrapping
static void throwJavaException(JNIEnv *env, const std::exception *e, const char *method) {
  std::string what = "unknown exception";
  jclass je = 0;

  if(e) {
    std::string exception_type = "std::exception";

    if(dynamic_cast<const cv::Exception*>(e)) {
      exception_type = "cv::Exception";
      je = env->FindClass("org/opencv/core/CvException");
    }

    what = exception_type + ": " + e->what();
  }

  if(!je) je = env->FindClass("java/lang/Exception");
  env->ThrowNew(je, what.c_str());

  LOGE("%s caught %s", method, what.c_str());
  (void)method;        // avoid "unused" warning
}

extern "C" {


//
//  void cv::phase_unwrapping::PhaseUnwrapping::unwrapPhaseMap(Mat wrappedPhaseMap, Mat& unwrappedPhaseMap, Mat shadowMask = Mat())
//

using namespace cv::phase_unwrapping;

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_PhaseUnwrapping_unwrapPhaseMap_10 (JNIEnv*, jclass, jlong, jlong, jlong, jlong);

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_PhaseUnwrapping_unwrapPhaseMap_10
  (JNIEnv* env, jclass , jlong self, jlong wrappedPhaseMap_nativeObj, jlong unwrappedPhaseMap_nativeObj, jlong shadowMask_nativeObj)
{
    static const char method_name[] = "phase_1unwrapping::unwrapPhaseMap_10()";
    try {
        LOGD("%s", method_name);
        Ptr<cv::phase_unwrapping::PhaseUnwrapping>* me = (Ptr<cv::phase_unwrapping::PhaseUnwrapping>*) self; //TODO: check for NULL
        Mat& wrappedPhaseMap = *((Mat*)wrappedPhaseMap_nativeObj);
        Mat& unwrappedPhaseMap = *((Mat*)unwrappedPhaseMap_nativeObj);
        Mat& shadowMask = *((Mat*)shadowMask_nativeObj);
        (*me)->unwrapPhaseMap( wrappedPhaseMap, unwrappedPhaseMap, shadowMask );
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
}



using namespace cv::phase_unwrapping;

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_PhaseUnwrapping_unwrapPhaseMap_11 (JNIEnv*, jclass, jlong, jlong, jlong);

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_PhaseUnwrapping_unwrapPhaseMap_11
  (JNIEnv* env, jclass , jlong self, jlong wrappedPhaseMap_nativeObj, jlong unwrappedPhaseMap_nativeObj)
{
    static const char method_name[] = "phase_1unwrapping::unwrapPhaseMap_11()";
    try {
        LOGD("%s", method_name);
        Ptr<cv::phase_unwrapping::PhaseUnwrapping>* me = (Ptr<cv::phase_unwrapping::PhaseUnwrapping>*) self; //TODO: check for NULL
        Mat& wrappedPhaseMap = *((Mat*)wrappedPhaseMap_nativeObj);
        Mat& unwrappedPhaseMap = *((Mat*)unwrappedPhaseMap_nativeObj);
        (*me)->unwrapPhaseMap( wrappedPhaseMap, unwrappedPhaseMap );
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
}



//
//  native support for java finalize()
//  static void Ptr<cv::phase_unwrapping::PhaseUnwrapping>::delete( __int64 self )
//
JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_PhaseUnwrapping_delete(JNIEnv*, jclass, jlong);

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_PhaseUnwrapping_delete
  (JNIEnv*, jclass, jlong self)
{
    delete (Ptr<cv::phase_unwrapping::PhaseUnwrapping>*) self;
}


//
//   cv::phase_unwrapping::HistogramPhaseUnwrapping::Params::Params()
//

using namespace cv::phase_unwrapping;

JNIEXPORT jlong JNICALL Java_org_opencv_phase_1unwrapping_Params_Params_10 (JNIEnv*, jclass);

JNIEXPORT jlong JNICALL Java_org_opencv_phase_1unwrapping_Params_Params_10
  (JNIEnv* env, jclass )
{
    static const char method_name[] = "phase_1unwrapping::Params_10()";
    try {
        LOGD("%s", method_name);
        cv::phase_unwrapping::HistogramPhaseUnwrapping::Params* _retval_ = new cv::phase_unwrapping::HistogramPhaseUnwrapping::Params();
        return (jlong) _retval_;
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
    return 0;
}



//
// int Params::width
//

using namespace cv::phase_unwrapping;

JNIEXPORT jint JNICALL Java_org_opencv_phase_1unwrapping_Params_get_1width_10 (JNIEnv*, jclass, jlong);

JNIEXPORT jint JNICALL Java_org_opencv_phase_1unwrapping_Params_get_1width_10
  (JNIEnv* env, jclass , jlong self)
{
    static const char method_name[] = "phase_1unwrapping::get_1width_10()";
    try {
        LOGD("%s", method_name);
        cv::phase_unwrapping::HistogramPhaseUnwrapping::Params* me = (cv::phase_unwrapping::HistogramPhaseUnwrapping::Params*) self; //TODO: check for NULL
        return me->width;//();
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
    return 0;
}



//
// void Params::width
//

using namespace cv::phase_unwrapping;

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_Params_set_1width_10 (JNIEnv*, jclass, jlong, jint);

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_Params_set_1width_10
  (JNIEnv* env, jclass , jlong self, jint width)
{
    static const char method_name[] = "phase_1unwrapping::set_1width_10()";
    try {
        LOGD("%s", method_name);
        cv::phase_unwrapping::HistogramPhaseUnwrapping::Params* me = (cv::phase_unwrapping::HistogramPhaseUnwrapping::Params*) self; //TODO: check for NULL
        me->width = ( (int)width );
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
}



//
// int Params::height
//

using namespace cv::phase_unwrapping;

JNIEXPORT jint JNICALL Java_org_opencv_phase_1unwrapping_Params_get_1height_10 (JNIEnv*, jclass, jlong);

JNIEXPORT jint JNICALL Java_org_opencv_phase_1unwrapping_Params_get_1height_10
  (JNIEnv* env, jclass , jlong self)
{
    static const char method_name[] = "phase_1unwrapping::get_1height_10()";
    try {
        LOGD("%s", method_name);
        cv::phase_unwrapping::HistogramPhaseUnwrapping::Params* me = (cv::phase_unwrapping::HistogramPhaseUnwrapping::Params*) self; //TODO: check for NULL
        return me->height;//();
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
    return 0;
}



//
// void Params::height
//

using namespace cv::phase_unwrapping;

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_Params_set_1height_10 (JNIEnv*, jclass, jlong, jint);

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_Params_set_1height_10
  (JNIEnv* env, jclass , jlong self, jint height)
{
    static const char method_name[] = "phase_1unwrapping::set_1height_10()";
    try {
        LOGD("%s", method_name);
        cv::phase_unwrapping::HistogramPhaseUnwrapping::Params* me = (cv::phase_unwrapping::HistogramPhaseUnwrapping::Params*) self; //TODO: check for NULL
        me->height = ( (int)height );
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
}



//
// float Params::histThresh
//

using namespace cv::phase_unwrapping;

JNIEXPORT jfloat JNICALL Java_org_opencv_phase_1unwrapping_Params_get_1histThresh_10 (JNIEnv*, jclass, jlong);

JNIEXPORT jfloat JNICALL Java_org_opencv_phase_1unwrapping_Params_get_1histThresh_10
  (JNIEnv* env, jclass , jlong self)
{
    static const char method_name[] = "phase_1unwrapping::get_1histThresh_10()";
    try {
        LOGD("%s", method_name);
        cv::phase_unwrapping::HistogramPhaseUnwrapping::Params* me = (cv::phase_unwrapping::HistogramPhaseUnwrapping::Params*) self; //TODO: check for NULL
        return me->histThresh;//();
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
    return 0;
}



//
// void Params::histThresh
//

using namespace cv::phase_unwrapping;

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_Params_set_1histThresh_10 (JNIEnv*, jclass, jlong, jfloat);

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_Params_set_1histThresh_10
  (JNIEnv* env, jclass , jlong self, jfloat histThresh)
{
    static const char method_name[] = "phase_1unwrapping::set_1histThresh_10()";
    try {
        LOGD("%s", method_name);
        cv::phase_unwrapping::HistogramPhaseUnwrapping::Params* me = (cv::phase_unwrapping::HistogramPhaseUnwrapping::Params*) self; //TODO: check for NULL
        me->histThresh = ( (float)histThresh );
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
}



//
// int Params::nbrOfSmallBins
//

using namespace cv::phase_unwrapping;

JNIEXPORT jint JNICALL Java_org_opencv_phase_1unwrapping_Params_get_1nbrOfSmallBins_10 (JNIEnv*, jclass, jlong);

JNIEXPORT jint JNICALL Java_org_opencv_phase_1unwrapping_Params_get_1nbrOfSmallBins_10
  (JNIEnv* env, jclass , jlong self)
{
    static const char method_name[] = "phase_1unwrapping::get_1nbrOfSmallBins_10()";
    try {
        LOGD("%s", method_name);
        cv::phase_unwrapping::HistogramPhaseUnwrapping::Params* me = (cv::phase_unwrapping::HistogramPhaseUnwrapping::Params*) self; //TODO: check for NULL
        return me->nbrOfSmallBins;//();
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
    return 0;
}



//
// void Params::nbrOfSmallBins
//

using namespace cv::phase_unwrapping;

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_Params_set_1nbrOfSmallBins_10 (JNIEnv*, jclass, jlong, jint);

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_Params_set_1nbrOfSmallBins_10
  (JNIEnv* env, jclass , jlong self, jint nbrOfSmallBins)
{
    static const char method_name[] = "phase_1unwrapping::set_1nbrOfSmallBins_10()";
    try {
        LOGD("%s", method_name);
        cv::phase_unwrapping::HistogramPhaseUnwrapping::Params* me = (cv::phase_unwrapping::HistogramPhaseUnwrapping::Params*) self; //TODO: check for NULL
        me->nbrOfSmallBins = ( (int)nbrOfSmallBins );
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
}



//
// int Params::nbrOfLargeBins
//

using namespace cv::phase_unwrapping;

JNIEXPORT jint JNICALL Java_org_opencv_phase_1unwrapping_Params_get_1nbrOfLargeBins_10 (JNIEnv*, jclass, jlong);

JNIEXPORT jint JNICALL Java_org_opencv_phase_1unwrapping_Params_get_1nbrOfLargeBins_10
  (JNIEnv* env, jclass , jlong self)
{
    static const char method_name[] = "phase_1unwrapping::get_1nbrOfLargeBins_10()";
    try {
        LOGD("%s", method_name);
        cv::phase_unwrapping::HistogramPhaseUnwrapping::Params* me = (cv::phase_unwrapping::HistogramPhaseUnwrapping::Params*) self; //TODO: check for NULL
        return me->nbrOfLargeBins;//();
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
    return 0;
}



//
// void Params::nbrOfLargeBins
//

using namespace cv::phase_unwrapping;

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_Params_set_1nbrOfLargeBins_10 (JNIEnv*, jclass, jlong, jint);

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_Params_set_1nbrOfLargeBins_10
  (JNIEnv* env, jclass , jlong self, jint nbrOfLargeBins)
{
    static const char method_name[] = "phase_1unwrapping::set_1nbrOfLargeBins_10()";
    try {
        LOGD("%s", method_name);
        cv::phase_unwrapping::HistogramPhaseUnwrapping::Params* me = (cv::phase_unwrapping::HistogramPhaseUnwrapping::Params*) self; //TODO: check for NULL
        me->nbrOfLargeBins = ( (int)nbrOfLargeBins );
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
}



//
//  native support for java finalize()
//  static void cv::phase_unwrapping::HistogramPhaseUnwrapping::Params::delete( __int64 self )
//
JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_Params_delete(JNIEnv*, jclass, jlong);

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_Params_delete
  (JNIEnv*, jclass, jlong self)
{
    delete (cv::phase_unwrapping::HistogramPhaseUnwrapping::Params*) self;
}


//
// static Ptr_HistogramPhaseUnwrapping cv::phase_unwrapping::HistogramPhaseUnwrapping::create(HistogramPhaseUnwrapping_Params parameters = HistogramPhaseUnwrapping::Params())
//

using namespace cv::phase_unwrapping;

JNIEXPORT jlong JNICALL Java_org_opencv_phase_1unwrapping_HistogramPhaseUnwrapping_create_10 (JNIEnv*, jclass);

JNIEXPORT jlong JNICALL Java_org_opencv_phase_1unwrapping_HistogramPhaseUnwrapping_create_10
  (JNIEnv* env, jclass )
{
    static const char method_name[] = "phase_1unwrapping::create_10()";
    try {
        LOGD("%s", method_name);
        typedef Ptr<cv::phase_unwrapping::HistogramPhaseUnwrapping> Ptr_HistogramPhaseUnwrapping;
        Ptr_HistogramPhaseUnwrapping _retval_ = cv::phase_unwrapping::HistogramPhaseUnwrapping::create( HistogramPhaseUnwrapping::Params() );
        return (jlong)(new Ptr_HistogramPhaseUnwrapping(_retval_));
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
    return 0;
}



//
//  void cv::phase_unwrapping::HistogramPhaseUnwrapping::getInverseReliabilityMap(Mat& reliabilityMap)
//

using namespace cv::phase_unwrapping;

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_HistogramPhaseUnwrapping_getInverseReliabilityMap_10 (JNIEnv*, jclass, jlong, jlong);

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_HistogramPhaseUnwrapping_getInverseReliabilityMap_10
  (JNIEnv* env, jclass , jlong self, jlong reliabilityMap_nativeObj)
{
    static const char method_name[] = "phase_1unwrapping::getInverseReliabilityMap_10()";
    try {
        LOGD("%s", method_name);
        Ptr<cv::phase_unwrapping::HistogramPhaseUnwrapping>* me = (Ptr<cv::phase_unwrapping::HistogramPhaseUnwrapping>*) self; //TODO: check for NULL
        Mat& reliabilityMap = *((Mat*)reliabilityMap_nativeObj);
        (*me)->getInverseReliabilityMap( reliabilityMap );
    } catch(const std::exception &e) {
        throwJavaException(env, &e, method_name);
    } catch (...) {
        throwJavaException(env, 0, method_name);
    }
}



//
//  native support for java finalize()
//  static void Ptr<cv::phase_unwrapping::HistogramPhaseUnwrapping>::delete( __int64 self )
//
JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_HistogramPhaseUnwrapping_delete(JNIEnv*, jclass, jlong);

JNIEXPORT void JNICALL Java_org_opencv_phase_1unwrapping_HistogramPhaseUnwrapping_delete
  (JNIEnv*, jclass, jlong self)
{
    delete (Ptr<cv::phase_unwrapping::HistogramPhaseUnwrapping>*) self;
}



} // extern "C"

#endif // HAVE_OPENCV_PHASE_UNWRAPPING
