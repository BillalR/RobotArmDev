# CMake generated Testfile for 
# Source directory: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/saliency
# Build directory: /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/saliency
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_saliency "/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/bin/opencv_test_saliency" "--gtest_output=xml:opencv_test_saliency.xml")
set_tests_properties(opencv_test_saliency PROPERTIES  LABELS "Extra;opencv_saliency;Accuracy" WORKING_DIRECTORY "/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/cmake/OpenCVUtils.cmake;1640;add_test;/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/cmake/OpenCVModule.cmake;1310;ocv_add_test_from_target;/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/cmake/OpenCVModule.cmake;1074;ocv_add_accuracy_tests;/Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/saliency/CMakeLists.txt;7;ocv_define_module;/Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/saliency/CMakeLists.txt;0;")
