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
include modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/depend.make

# Include the progress variables for this target.
include modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/progress.make

# Include the compile flags for this target's objects.
include modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/flags.make

modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/samples/gms_matcher.cpp.o: modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/flags.make
modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/samples/gms_matcher.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/xfeatures2d/samples/gms_matcher.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/samples/gms_matcher.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/xfeatures2d && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_xfeatures2d_gms_matcher.dir/samples/gms_matcher.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/xfeatures2d/samples/gms_matcher.cpp

modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/samples/gms_matcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_xfeatures2d_gms_matcher.dir/samples/gms_matcher.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/xfeatures2d && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/xfeatures2d/samples/gms_matcher.cpp > CMakeFiles/example_xfeatures2d_gms_matcher.dir/samples/gms_matcher.cpp.i

modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/samples/gms_matcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_xfeatures2d_gms_matcher.dir/samples/gms_matcher.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/xfeatures2d && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/xfeatures2d/samples/gms_matcher.cpp -o CMakeFiles/example_xfeatures2d_gms_matcher.dir/samples/gms_matcher.cpp.s

# Object files for target example_xfeatures2d_gms_matcher
example_xfeatures2d_gms_matcher_OBJECTS = \
"CMakeFiles/example_xfeatures2d_gms_matcher.dir/samples/gms_matcher.cpp.o"

# External object files for target example_xfeatures2d_gms_matcher
example_xfeatures2d_gms_matcher_EXTERNAL_OBJECTS =

bin/example_xfeatures2d_gms_matcher: modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/samples/gms_matcher.cpp.o
bin/example_xfeatures2d_gms_matcher: modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/build.make
bin/example_xfeatures2d_gms_matcher: lib/libopencv_xfeatures2d.4.5.0.dylib
bin/example_xfeatures2d_gms_matcher: lib/libopencv_ml.4.5.0.dylib
bin/example_xfeatures2d_gms_matcher: lib/libopencv_shape.4.5.0.dylib
bin/example_xfeatures2d_gms_matcher: lib/libopencv_highgui.4.5.0.dylib
bin/example_xfeatures2d_gms_matcher: lib/libopencv_calib3d.4.5.0.dylib
bin/example_xfeatures2d_gms_matcher: lib/libopencv_features2d.4.5.0.dylib
bin/example_xfeatures2d_gms_matcher: lib/libopencv_flann.4.5.0.dylib
bin/example_xfeatures2d_gms_matcher: lib/libopencv_videoio.4.5.0.dylib
bin/example_xfeatures2d_gms_matcher: lib/libopencv_imgcodecs.4.5.0.dylib
bin/example_xfeatures2d_gms_matcher: lib/libopencv_imgproc.4.5.0.dylib
bin/example_xfeatures2d_gms_matcher: lib/libopencv_core.4.5.0.dylib
bin/example_xfeatures2d_gms_matcher: modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/example_xfeatures2d_gms_matcher"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/xfeatures2d && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_xfeatures2d_gms_matcher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/build: bin/example_xfeatures2d_gms_matcher

.PHONY : modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/build

modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/clean:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/xfeatures2d && $(CMAKE_COMMAND) -P CMakeFiles/example_xfeatures2d_gms_matcher.dir/cmake_clean.cmake
.PHONY : modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/clean

modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/depend:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/billalrahimi/Desktop/Robotics/C_Template/opencv /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/xfeatures2d /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/xfeatures2d /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/xfeatures2d/CMakeFiles/example_xfeatures2d_gms_matcher.dir/depend

