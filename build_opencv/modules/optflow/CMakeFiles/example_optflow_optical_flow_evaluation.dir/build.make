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
include modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/depend.make

# Include the progress variables for this target.
include modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/progress.make

# Include the compile flags for this target's objects.
include modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/flags.make

modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/samples/optical_flow_evaluation.cpp.o: modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/flags.make
modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/samples/optical_flow_evaluation.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/optflow/samples/optical_flow_evaluation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/samples/optical_flow_evaluation.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/optflow && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_optflow_optical_flow_evaluation.dir/samples/optical_flow_evaluation.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/optflow/samples/optical_flow_evaluation.cpp

modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/samples/optical_flow_evaluation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_optflow_optical_flow_evaluation.dir/samples/optical_flow_evaluation.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/optflow && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/optflow/samples/optical_flow_evaluation.cpp > CMakeFiles/example_optflow_optical_flow_evaluation.dir/samples/optical_flow_evaluation.cpp.i

modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/samples/optical_flow_evaluation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_optflow_optical_flow_evaluation.dir/samples/optical_flow_evaluation.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/optflow && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/optflow/samples/optical_flow_evaluation.cpp -o CMakeFiles/example_optflow_optical_flow_evaluation.dir/samples/optical_flow_evaluation.cpp.s

# Object files for target example_optflow_optical_flow_evaluation
example_optflow_optical_flow_evaluation_OBJECTS = \
"CMakeFiles/example_optflow_optical_flow_evaluation.dir/samples/optical_flow_evaluation.cpp.o"

# External object files for target example_optflow_optical_flow_evaluation
example_optflow_optical_flow_evaluation_EXTERNAL_OBJECTS =

bin/example_optflow_optical_flow_evaluation: modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/samples/optical_flow_evaluation.cpp.o
bin/example_optflow_optical_flow_evaluation: modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/build.make
bin/example_optflow_optical_flow_evaluation: lib/libopencv_optflow.4.5.0.dylib
bin/example_optflow_optical_flow_evaluation: lib/libopencv_ximgproc.4.5.0.dylib
bin/example_optflow_optical_flow_evaluation: lib/libopencv_highgui.4.5.0.dylib
bin/example_optflow_optical_flow_evaluation: lib/libopencv_video.4.5.0.dylib
bin/example_optflow_optical_flow_evaluation: lib/libopencv_calib3d.4.5.0.dylib
bin/example_optflow_optical_flow_evaluation: lib/libopencv_features2d.4.5.0.dylib
bin/example_optflow_optical_flow_evaluation: lib/libopencv_flann.4.5.0.dylib
bin/example_optflow_optical_flow_evaluation: lib/libopencv_videoio.4.5.0.dylib
bin/example_optflow_optical_flow_evaluation: lib/libopencv_imgcodecs.4.5.0.dylib
bin/example_optflow_optical_flow_evaluation: lib/libopencv_imgproc.4.5.0.dylib
bin/example_optflow_optical_flow_evaluation: lib/libopencv_core.4.5.0.dylib
bin/example_optflow_optical_flow_evaluation: modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/example_optflow_optical_flow_evaluation"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/optflow && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_optflow_optical_flow_evaluation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/build: bin/example_optflow_optical_flow_evaluation

.PHONY : modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/build

modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/clean:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/optflow && $(CMAKE_COMMAND) -P CMakeFiles/example_optflow_optical_flow_evaluation.dir/cmake_clean.cmake
.PHONY : modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/clean

modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/depend:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/billalrahimi/Desktop/Robotics/C_Template/opencv /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/optflow /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/optflow /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/optflow/CMakeFiles/example_optflow_optical_flow_evaluation.dir/depend

