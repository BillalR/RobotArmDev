# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.18.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.18.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/billalrahimi/Desktop/Robotics/C_Template/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv

# Utility rule file for opencv_test_java.

# Include the progress variables for this target.
include modules/java/test/pure_test/CMakeFiles/opencv_test_java.dir/progress.make

modules/java/test/pure_test/CMakeFiles/opencv_test_java: lib/libopencv_java450.dylib
modules/java/test/pure_test/CMakeFiles/opencv_test_java: java_test/build/jar/opencv-test.jar


java_test/build/jar/opencv-test.jar: CMakeFiles/dephelper/opencv_java_test_source_copy
java_test/build/jar/opencv-test.jar: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/src/org/opencv/test/OpenCVTestCase.java
java_test/build/jar/opencv-test.jar: java_test/src/org/opencv/test/OpenCVTestCase.java
java_test/build/jar/opencv-test.jar: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/src/org/opencv/test/OpenCVTestRunner.java
java_test/build/jar/opencv-test.jar: java_test/src/org/opencv/test/OpenCVTestRunner.java
java_test/build/jar/opencv-test.jar: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/lib/junit-4.11.jar
java_test/build/jar/opencv-test.jar: java_test/lib/junit-4.11.jar
java_test/build/jar/opencv-test.jar: java_test/build.xml
java_test/build/jar/opencv-test.jar: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/build.xml
java_test/build/jar/opencv-test.jar: bin/opencv-450.jar
java_test/build/jar/opencv-test.jar: java_test/bin/opencv-450.jar
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Build Java tests"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test && /usr/local/bin/ant -noinput -k build

CMakeFiles/dephelper/opencv_java_test_source_copy: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/cmake/copy_files.cmake
CMakeFiles/dephelper/opencv_java_test_source_copy: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/res/drawable/chessboard.jpg
CMakeFiles/dephelper/opencv_java_test_source_copy: java_test/res/drawable/chessboard.jpg
CMakeFiles/dephelper/opencv_java_test_source_copy: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/res/drawable/icon.png
CMakeFiles/dephelper/opencv_java_test_source_copy: java_test/res/drawable/icon.png
CMakeFiles/dephelper/opencv_java_test_source_copy: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/res/drawable/lena.png
CMakeFiles/dephelper/opencv_java_test_source_copy: java_test/res/drawable/lena.png
CMakeFiles/dephelper/opencv_java_test_source_copy: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/res/layout/main.xml
CMakeFiles/dephelper/opencv_java_test_source_copy: java_test/res/layout/main.xml
CMakeFiles/dephelper/opencv_java_test_source_copy: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/res/raw/lbpcascade_frontalface.xml
CMakeFiles/dephelper/opencv_java_test_source_copy: java_test/res/raw/lbpcascade_frontalface.xml
CMakeFiles/dephelper/opencv_java_test_source_copy: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/res/values/strings.xml
CMakeFiles/dephelper/opencv_java_test_source_copy: java_test/res/values/strings.xml
CMakeFiles/dephelper/opencv_java_test_source_copy: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/src/org/opencv/test/utils/ConvertersTest.java
CMakeFiles/dephelper/opencv_java_test_source_copy: java_test/src/org/opencv/test/utils/ConvertersTest.java
CMakeFiles/dephelper/opencv_java_test_source_copy: CMakeFiles/dephelper/gen_opencv_java_source
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Copy Java(Test) source files"
	/usr/local/Cellar/cmake/3.18.4/bin/cmake -DCONFIG_FILE:PATH=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test/copyfiles-JAVA_TEST_SRC_COPY.cmake -DCOPYLIST_VAR:STRING=JAVA_TEST_SRC_COPY -DDEPHELPER=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles/dephelper/opencv_java_test_source_copy -P /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/cmake/copy_files.cmake

java_test/src/org/opencv/test/OpenCVTestCase.java: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/src/org/opencv/test/OpenCVTestCase.java
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Copying src/org/opencv/test/OpenCVTestCase.java"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && /usr/local/Cellar/cmake/3.18.4/bin/cmake -E copy_if_different /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/src/org/opencv/test/OpenCVTestCase.java /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test/src/org/opencv/test/OpenCVTestCase.java

java_test/src/org/opencv/test/OpenCVTestRunner.java: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/src/org/opencv/test/OpenCVTestRunner.java
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Copying src/org/opencv/test/OpenCVTestRunner.java"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && /usr/local/Cellar/cmake/3.18.4/bin/cmake -E copy_if_different /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/src/org/opencv/test/OpenCVTestRunner.java /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test/src/org/opencv/test/OpenCVTestRunner.java

java_test/lib/junit-4.11.jar: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/lib/junit-4.11.jar
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Copying lib/junit-4.11.jar"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && /usr/local/Cellar/cmake/3.18.4/bin/cmake -E copy_if_different /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/lib/junit-4.11.jar /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test/lib/junit-4.11.jar

java_test/build.xml: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/build.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Copying build.xml"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && /usr/local/Cellar/cmake/3.18.4/bin/cmake -E copy_if_different /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/build.xml /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test/build.xml

java_test/bin/opencv-450.jar: bin/opencv-450.jar
java_test/bin/opencv-450.jar: CMakeFiles/dephelper/opencv_java_jar
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Copying the OpenCV jar"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && /usr/local/Cellar/cmake/3.18.4/bin/cmake -E copy_if_different /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/bin/opencv-450.jar /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test/bin/opencv-450.jar

java_test/res/drawable/chessboard.jpg: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/res/drawable/chessboard.jpg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Copying res/drawable/chessboard.jpg"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && /usr/local/Cellar/cmake/3.18.4/bin/cmake -E copy_if_different /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/../common_test/res/drawable/chessboard.jpg /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test/res/drawable/chessboard.jpg

java_test/res/drawable/icon.png: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/res/drawable/icon.png
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Copying res/drawable/icon.png"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && /usr/local/Cellar/cmake/3.18.4/bin/cmake -E copy_if_different /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/../common_test/res/drawable/icon.png /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test/res/drawable/icon.png

java_test/res/drawable/lena.png: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/res/drawable/lena.png
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Copying res/drawable/lena.png"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && /usr/local/Cellar/cmake/3.18.4/bin/cmake -E copy_if_different /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/../common_test/res/drawable/lena.png /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test/res/drawable/lena.png

java_test/res/layout/main.xml: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/res/layout/main.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Copying res/layout/main.xml"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && /usr/local/Cellar/cmake/3.18.4/bin/cmake -E copy_if_different /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/../common_test/res/layout/main.xml /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test/res/layout/main.xml

java_test/res/raw/lbpcascade_frontalface.xml: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/res/raw/lbpcascade_frontalface.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Copying res/raw/lbpcascade_frontalface.xml"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && /usr/local/Cellar/cmake/3.18.4/bin/cmake -E copy_if_different /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/../common_test/res/raw/lbpcascade_frontalface.xml /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test/res/raw/lbpcascade_frontalface.xml

java_test/res/values/strings.xml: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/res/values/strings.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Copying res/values/strings.xml"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && /usr/local/Cellar/cmake/3.18.4/bin/cmake -E copy_if_different /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/../common_test/res/values/strings.xml /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test/res/values/strings.xml

java_test/src/org/opencv/test/utils/ConvertersTest.java: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/common_test/src/org/opencv/test/utils/ConvertersTest.java
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Copying src/org/opencv/test/utils/ConvertersTest.java"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && /usr/local/Cellar/cmake/3.18.4/bin/cmake -E copy_if_different /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test/../common_test/src/org/opencv/test/utils/ConvertersTest.java /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/java_test/src/org/opencv/test/utils/ConvertersTest.java

opencv_test_java: modules/java/test/pure_test/CMakeFiles/opencv_test_java
opencv_test_java: java_test/build/jar/opencv-test.jar
opencv_test_java: CMakeFiles/dephelper/opencv_java_test_source_copy
opencv_test_java: java_test/src/org/opencv/test/OpenCVTestCase.java
opencv_test_java: java_test/src/org/opencv/test/OpenCVTestRunner.java
opencv_test_java: java_test/lib/junit-4.11.jar
opencv_test_java: java_test/build.xml
opencv_test_java: java_test/bin/opencv-450.jar
opencv_test_java: java_test/res/drawable/chessboard.jpg
opencv_test_java: java_test/res/drawable/icon.png
opencv_test_java: java_test/res/drawable/lena.png
opencv_test_java: java_test/res/layout/main.xml
opencv_test_java: java_test/res/raw/lbpcascade_frontalface.xml
opencv_test_java: java_test/res/values/strings.xml
opencv_test_java: java_test/src/org/opencv/test/utils/ConvertersTest.java
opencv_test_java: modules/java/test/pure_test/CMakeFiles/opencv_test_java.dir/build.make

.PHONY : opencv_test_java

# Rule to build all files generated by this target.
modules/java/test/pure_test/CMakeFiles/opencv_test_java.dir/build: opencv_test_java

.PHONY : modules/java/test/pure_test/CMakeFiles/opencv_test_java.dir/build

modules/java/test/pure_test/CMakeFiles/opencv_test_java.dir/clean:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_java.dir/cmake_clean.cmake
.PHONY : modules/java/test/pure_test/CMakeFiles/opencv_test_java.dir/clean

modules/java/test/pure_test/CMakeFiles/opencv_test_java.dir/depend:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/billalrahimi/Desktop/Robotics/C_Template/opencv /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/modules/java/test/pure_test /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/java/test/pure_test/CMakeFiles/opencv_test_java.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/java/test/pure_test/CMakeFiles/opencv_test_java.dir/depend

