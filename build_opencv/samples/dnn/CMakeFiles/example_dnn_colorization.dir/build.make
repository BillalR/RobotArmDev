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
include samples/dnn/CMakeFiles/example_dnn_colorization.dir/depend.make

# Include the progress variables for this target.
include samples/dnn/CMakeFiles/example_dnn_colorization.dir/progress.make

# Include the compile flags for this target's objects.
include samples/dnn/CMakeFiles/example_dnn_colorization.dir/flags.make

samples/dnn/CMakeFiles/example_dnn_colorization.dir/colorization.cpp.o: samples/dnn/CMakeFiles/example_dnn_colorization.dir/flags.make
samples/dnn/CMakeFiles/example_dnn_colorization.dir/colorization.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/dnn/colorization.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/dnn/CMakeFiles/example_dnn_colorization.dir/colorization.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/samples/dnn && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_dnn_colorization.dir/colorization.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/dnn/colorization.cpp

samples/dnn/CMakeFiles/example_dnn_colorization.dir/colorization.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_dnn_colorization.dir/colorization.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/samples/dnn && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/dnn/colorization.cpp > CMakeFiles/example_dnn_colorization.dir/colorization.cpp.i

samples/dnn/CMakeFiles/example_dnn_colorization.dir/colorization.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_dnn_colorization.dir/colorization.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/samples/dnn && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/dnn/colorization.cpp -o CMakeFiles/example_dnn_colorization.dir/colorization.cpp.s

# Object files for target example_dnn_colorization
example_dnn_colorization_OBJECTS = \
"CMakeFiles/example_dnn_colorization.dir/colorization.cpp.o"

# External object files for target example_dnn_colorization
example_dnn_colorization_EXTERNAL_OBJECTS =

bin/example_dnn_colorization: samples/dnn/CMakeFiles/example_dnn_colorization.dir/colorization.cpp.o
bin/example_dnn_colorization: samples/dnn/CMakeFiles/example_dnn_colorization.dir/build.make
bin/example_dnn_colorization: 3rdparty/lib/libippiw.a
bin/example_dnn_colorization: 3rdparty/ippicv/ippicv_mac/icv/lib/intel64/libippicv.a
bin/example_dnn_colorization: lib/libopencv_dnn.4.5.0.dylib
bin/example_dnn_colorization: lib/libopencv_highgui.4.5.0.dylib
bin/example_dnn_colorization: lib/libopencv_videoio.4.5.0.dylib
bin/example_dnn_colorization: lib/libopencv_imgcodecs.4.5.0.dylib
bin/example_dnn_colorization: lib/libopencv_imgproc.4.5.0.dylib
bin/example_dnn_colorization: lib/libopencv_core.4.5.0.dylib
bin/example_dnn_colorization: samples/dnn/CMakeFiles/example_dnn_colorization.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/example_dnn_colorization"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/samples/dnn && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_dnn_colorization.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/dnn/CMakeFiles/example_dnn_colorization.dir/build: bin/example_dnn_colorization

.PHONY : samples/dnn/CMakeFiles/example_dnn_colorization.dir/build

samples/dnn/CMakeFiles/example_dnn_colorization.dir/clean:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/samples/dnn && $(CMAKE_COMMAND) -P CMakeFiles/example_dnn_colorization.dir/cmake_clean.cmake
.PHONY : samples/dnn/CMakeFiles/example_dnn_colorization.dir/clean

samples/dnn/CMakeFiles/example_dnn_colorization.dir/depend:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/billalrahimi/Desktop/Robotics/C_Template/opencv /Users/billalrahimi/Desktop/Robotics/C_Template/opencv/samples/dnn /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/samples/dnn /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/samples/dnn/CMakeFiles/example_dnn_colorization.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/dnn/CMakeFiles/example_dnn_colorization.dir/depend

