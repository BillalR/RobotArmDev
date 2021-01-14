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
include modules/tracking/CMakeFiles/example_tracking_multitracker.dir/depend.make

# Include the progress variables for this target.
include modules/tracking/CMakeFiles/example_tracking_multitracker.dir/progress.make

# Include the compile flags for this target's objects.
include modules/tracking/CMakeFiles/example_tracking_multitracker.dir/flags.make

modules/tracking/CMakeFiles/example_tracking_multitracker.dir/samples/multitracker.cpp.o: modules/tracking/CMakeFiles/example_tracking_multitracker.dir/flags.make
modules/tracking/CMakeFiles/example_tracking_multitracker.dir/samples/multitracker.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/tracking/samples/multitracker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/tracking/CMakeFiles/example_tracking_multitracker.dir/samples/multitracker.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/tracking && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_tracking_multitracker.dir/samples/multitracker.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/tracking/samples/multitracker.cpp

modules/tracking/CMakeFiles/example_tracking_multitracker.dir/samples/multitracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_tracking_multitracker.dir/samples/multitracker.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/tracking && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/tracking/samples/multitracker.cpp > CMakeFiles/example_tracking_multitracker.dir/samples/multitracker.cpp.i

modules/tracking/CMakeFiles/example_tracking_multitracker.dir/samples/multitracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_tracking_multitracker.dir/samples/multitracker.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/tracking && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/tracking/samples/multitracker.cpp -o CMakeFiles/example_tracking_multitracker.dir/samples/multitracker.cpp.s

# Object files for target example_tracking_multitracker
example_tracking_multitracker_OBJECTS = \
"CMakeFiles/example_tracking_multitracker.dir/samples/multitracker.cpp.o"

# External object files for target example_tracking_multitracker
example_tracking_multitracker_EXTERNAL_OBJECTS =

bin/example_tracking_multitracker: modules/tracking/CMakeFiles/example_tracking_multitracker.dir/samples/multitracker.cpp.o
bin/example_tracking_multitracker: modules/tracking/CMakeFiles/example_tracking_multitracker.dir/build.make
bin/example_tracking_multitracker: lib/libopencv_tracking.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_plot.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_datasets.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_video.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_highgui.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_text.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_ml.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_dnn.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_calib3d.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_features2d.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_flann.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_videoio.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_imgcodecs.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_imgproc.4.5.0.dylib
bin/example_tracking_multitracker: lib/libopencv_core.4.5.0.dylib
bin/example_tracking_multitracker: modules/tracking/CMakeFiles/example_tracking_multitracker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/example_tracking_multitracker"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/tracking && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_tracking_multitracker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/tracking/CMakeFiles/example_tracking_multitracker.dir/build: bin/example_tracking_multitracker

.PHONY : modules/tracking/CMakeFiles/example_tracking_multitracker.dir/build

modules/tracking/CMakeFiles/example_tracking_multitracker.dir/clean:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/tracking && $(CMAKE_COMMAND) -P CMakeFiles/example_tracking_multitracker.dir/cmake_clean.cmake
.PHONY : modules/tracking/CMakeFiles/example_tracking_multitracker.dir/clean

modules/tracking/CMakeFiles/example_tracking_multitracker.dir/depend:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/billalrahimi/Desktop/Robotics/C_Template/opencv /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/tracking /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/tracking /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/tracking/CMakeFiles/example_tracking_multitracker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/tracking/CMakeFiles/example_tracking_multitracker.dir/depend

