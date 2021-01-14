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

# Include any dependencies generated for this target.
include modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/depend.make

# Include the progress variables for this target.
include modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/progress.make

# Include the compile flags for this target's objects.
include modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/flags.make

modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/samples/chart_detection.cpp.o: modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/flags.make
modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/samples/chart_detection.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/mcc/samples/chart_detection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/samples/chart_detection.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/mcc && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_mcc_chart_detection.dir/samples/chart_detection.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/mcc/samples/chart_detection.cpp

modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/samples/chart_detection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_mcc_chart_detection.dir/samples/chart_detection.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/mcc && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/mcc/samples/chart_detection.cpp > CMakeFiles/example_mcc_chart_detection.dir/samples/chart_detection.cpp.i

modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/samples/chart_detection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_mcc_chart_detection.dir/samples/chart_detection.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/mcc && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/mcc/samples/chart_detection.cpp -o CMakeFiles/example_mcc_chart_detection.dir/samples/chart_detection.cpp.s

# Object files for target example_mcc_chart_detection
example_mcc_chart_detection_OBJECTS = \
"CMakeFiles/example_mcc_chart_detection.dir/samples/chart_detection.cpp.o"

# External object files for target example_mcc_chart_detection
example_mcc_chart_detection_EXTERNAL_OBJECTS =

bin/example_mcc_chart_detection: modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/samples/chart_detection.cpp.o
bin/example_mcc_chart_detection: modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/build.make
bin/example_mcc_chart_detection: lib/libopencv_mcc.4.5.0.dylib
bin/example_mcc_chart_detection: lib/libopencv_photo.4.5.0.dylib
bin/example_mcc_chart_detection: lib/libopencv_dnn.4.5.0.dylib
bin/example_mcc_chart_detection: lib/libopencv_calib3d.4.5.0.dylib
bin/example_mcc_chart_detection: lib/libopencv_highgui.4.5.0.dylib
bin/example_mcc_chart_detection: lib/libopencv_features2d.4.5.0.dylib
bin/example_mcc_chart_detection: lib/libopencv_flann.4.5.0.dylib
bin/example_mcc_chart_detection: lib/libopencv_videoio.4.5.0.dylib
bin/example_mcc_chart_detection: lib/libopencv_imgcodecs.4.5.0.dylib
bin/example_mcc_chart_detection: lib/libopencv_imgproc.4.5.0.dylib
bin/example_mcc_chart_detection: lib/libopencv_core.4.5.0.dylib
bin/example_mcc_chart_detection: modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/example_mcc_chart_detection"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/mcc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_mcc_chart_detection.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/build: bin/example_mcc_chart_detection

.PHONY : modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/build

modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/clean:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/mcc && $(CMAKE_COMMAND) -P CMakeFiles/example_mcc_chart_detection.dir/cmake_clean.cmake
.PHONY : modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/clean

modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/depend:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/billalrahimi/Desktop/Robotics/C_Template/opencv /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/mcc /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/mcc /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/mcc/CMakeFiles/example_mcc_chart_detection.dir/depend

