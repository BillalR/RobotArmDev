# CMake generated Testfile for 
# Source directory: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/sfm
# Build directory: /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/sfm
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_sfm "/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/bin/opencv_test_sfm" "--gtest_output=xml:opencv_test_sfm.xml")
set_tests_properties(opencv_test_sfm PROPERTIES  LABELS "Extra;opencv_sfm;Accuracy" WORKING_DIRECTORY "/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/cmake/OpenCVUtils.cmake;1640;add_test;/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/cmake/OpenCVModule.cmake;1310;ocv_add_test_from_target;/Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/sfm/CMakeLists.txt;135;ocv_add_accuracy_tests;/Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/sfm/CMakeLists.txt;0;")
subdirs("src/libmv")
