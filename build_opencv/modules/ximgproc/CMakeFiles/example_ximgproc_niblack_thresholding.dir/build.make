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
include modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/depend.make

# Include the progress variables for this target.
include modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/progress.make

# Include the compile flags for this target's objects.
include modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/flags.make

modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/samples/niblack_thresholding.cpp.o: modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/flags.make
modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/samples/niblack_thresholding.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/ximgproc/samples/niblack_thresholding.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/samples/niblack_thresholding.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/ximgproc && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_ximgproc_niblack_thresholding.dir/samples/niblack_thresholding.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/ximgproc/samples/niblack_thresholding.cpp

modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/samples/niblack_thresholding.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_ximgproc_niblack_thresholding.dir/samples/niblack_thresholding.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/ximgproc && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/ximgproc/samples/niblack_thresholding.cpp > CMakeFiles/example_ximgproc_niblack_thresholding.dir/samples/niblack_thresholding.cpp.i

modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/samples/niblack_thresholding.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_ximgproc_niblack_thresholding.dir/samples/niblack_thresholding.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/ximgproc && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/ximgproc/samples/niblack_thresholding.cpp -o CMakeFiles/example_ximgproc_niblack_thresholding.dir/samples/niblack_thresholding.cpp.s

# Object files for target example_ximgproc_niblack_thresholding
example_ximgproc_niblack_thresholding_OBJECTS = \
"CMakeFiles/example_ximgproc_niblack_thresholding.dir/samples/niblack_thresholding.cpp.o"

# External object files for target example_ximgproc_niblack_thresholding
example_ximgproc_niblack_thresholding_EXTERNAL_OBJECTS =

bin/example_ximgproc_niblack_thresholding: modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/samples/niblack_thresholding.cpp.o
bin/example_ximgproc_niblack_thresholding: modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/build.make
bin/example_ximgproc_niblack_thresholding: lib/libopencv_ximgproc.4.5.0.dylib
bin/example_ximgproc_niblack_thresholding: lib/libopencv_video.4.5.0.dylib
bin/example_ximgproc_niblack_thresholding: lib/libopencv_highgui.4.5.0.dylib
bin/example_ximgproc_niblack_thresholding: lib/libopencv_calib3d.4.5.0.dylib
bin/example_ximgproc_niblack_thresholding: lib/libopencv_features2d.4.5.0.dylib
bin/example_ximgproc_niblack_thresholding: lib/libopencv_flann.4.5.0.dylib
bin/example_ximgproc_niblack_thresholding: lib/libopencv_videoio.4.5.0.dylib
bin/example_ximgproc_niblack_thresholding: lib/libopencv_imgcodecs.4.5.0.dylib
bin/example_ximgproc_niblack_thresholding: lib/libopencv_imgproc.4.5.0.dylib
bin/example_ximgproc_niblack_thresholding: lib/libopencv_core.4.5.0.dylib
bin/example_ximgproc_niblack_thresholding: modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/example_ximgproc_niblack_thresholding"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/ximgproc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_ximgproc_niblack_thresholding.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/build: bin/example_ximgproc_niblack_thresholding

.PHONY : modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/build

modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/clean:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/ximgproc && $(CMAKE_COMMAND) -P CMakeFiles/example_ximgproc_niblack_thresholding.dir/cmake_clean.cmake
.PHONY : modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/clean

modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/depend:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/billalrahimi/Desktop/Robotics/C_Template/opencv /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/ximgproc /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/ximgproc /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/ximgproc/CMakeFiles/example_ximgproc_niblack_thresholding.dir/depend

