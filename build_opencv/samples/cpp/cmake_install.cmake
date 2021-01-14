# Install script for directory: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/cpp" TYPE FILE FILES
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/3calibration.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/CMakeLists.txt"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/application_trace.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/asift.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/bgfg_segm.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/calibration.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/camshiftdemo.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/cloning_demo.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/cloning_gui.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/connected_components.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/contours2.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/convexhull.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/cout_mat.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/create_mask.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/dbt_face_detection.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/delaunay2.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/demhist.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/detect_blob.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/detect_mser.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/dft.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/digits_lenet.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/digits_svm.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/dis_opticalflow.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/distrans.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/drawing.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/edge.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/ela.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/em.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/epipolar_lines.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/essential_mat_reconstr.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/facedetect.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/facial_features.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/falsecolor.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/fback.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/ffilldemo.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/filestorage.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/fitellipse.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/flann_search_dataset.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/grabcut.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/image_alignment.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/imagelist_creator.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/imagelist_reader.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/inpaint.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/intelligent_scissors.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/intersectExample.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/kalman.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/kmeans.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/laplace.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/letter_recog.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/lkdemo.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/logistic_regression.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/mask_tmpl.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/matchmethod_orb_akaze_brisk.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/minarea.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/morphology2.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/neural_network.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/npr_demo.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/opencv_version.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/pca.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/peopledetect.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/phase_corr.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/points_classifier.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/polar_transforms.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/qrcode.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/segment_objects.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/select3dobj.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/simd_basic.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/smiledetect.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/squares.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/stereo_calib.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/stereo_match.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/stitching.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/stitching_detailed.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/text_skewness_correction.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/train_HOG.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/train_svmsgd.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/travelsalesman.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/tree_engine.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/videocapture_basic.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/videocapture_camera.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/videocapture_gphoto2_autofocus.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/videocapture_gstreamer_pipeline.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/videocapture_image_sequence.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/videocapture_intelperc.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/videocapture_openni.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/videocapture_starter.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/videowriter_basic.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/warpPerspective_demo.cpp"
    "/Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/cpp/watershed.cpp"
    )
endif()

