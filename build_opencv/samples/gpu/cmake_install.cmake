# Install script for directory: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/billalrahimi/Desktop/Robotics/C_Template/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xsamplesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/gpu" TYPE FILE FILES
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/CMakeLists.txt"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/alpha_comp.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/bgfg_segm.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/cascadeclassifier.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/farneback_optical_flow.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/generalized_hough.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/hog.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/houghlines.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/morphology.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/multi.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/pyrlk_optical_flow.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/stereo_match.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/stereo_multi.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/super_resolution.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/surf_keypoint_matcher.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/video_reader.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/gpu/video_writer.cpp"
    )
endif()

