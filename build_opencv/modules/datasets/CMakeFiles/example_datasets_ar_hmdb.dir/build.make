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
include modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/depend.make

# Include the progress variables for this target.
include modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/progress.make

# Include the compile flags for this target's objects.
include modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/flags.make

modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/samples/ar_hmdb.cpp.o: modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/flags.make
modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/samples/ar_hmdb.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/datasets/samples/ar_hmdb.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/samples/ar_hmdb.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/datasets && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_datasets_ar_hmdb.dir/samples/ar_hmdb.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/datasets/samples/ar_hmdb.cpp

modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/samples/ar_hmdb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_datasets_ar_hmdb.dir/samples/ar_hmdb.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/datasets && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/datasets/samples/ar_hmdb.cpp > CMakeFiles/example_datasets_ar_hmdb.dir/samples/ar_hmdb.cpp.i

modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/samples/ar_hmdb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_datasets_ar_hmdb.dir/samples/ar_hmdb.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/datasets && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/datasets/samples/ar_hmdb.cpp -o CMakeFiles/example_datasets_ar_hmdb.dir/samples/ar_hmdb.cpp.s

# Object files for target example_datasets_ar_hmdb
example_datasets_ar_hmdb_OBJECTS = \
"CMakeFiles/example_datasets_ar_hmdb.dir/samples/ar_hmdb.cpp.o"

# External object files for target example_datasets_ar_hmdb
example_datasets_ar_hmdb_EXTERNAL_OBJECTS =

bin/example_datasets_ar_hmdb: modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/samples/ar_hmdb.cpp.o
bin/example_datasets_ar_hmdb: modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/build.make
bin/example_datasets_ar_hmdb: lib/libopencv_datasets.4.5.0.dylib
bin/example_datasets_ar_hmdb: lib/libopencv_text.4.5.0.dylib
bin/example_datasets_ar_hmdb: lib/libopencv_highgui.4.5.0.dylib
bin/example_datasets_ar_hmdb: lib/libopencv_ml.4.5.0.dylib
bin/example_datasets_ar_hmdb: lib/libopencv_dnn.4.5.0.dylib
bin/example_datasets_ar_hmdb: lib/libopencv_features2d.4.5.0.dylib
bin/example_datasets_ar_hmdb: lib/libopencv_flann.4.5.0.dylib
bin/example_datasets_ar_hmdb: lib/libopencv_videoio.4.5.0.dylib
bin/example_datasets_ar_hmdb: lib/libopencv_imgcodecs.4.5.0.dylib
bin/example_datasets_ar_hmdb: lib/libopencv_imgproc.4.5.0.dylib
bin/example_datasets_ar_hmdb: lib/libopencv_core.4.5.0.dylib
bin/example_datasets_ar_hmdb: modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/example_datasets_ar_hmdb"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/datasets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_datasets_ar_hmdb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/build: bin/example_datasets_ar_hmdb

.PHONY : modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/build

modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/clean:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/datasets && $(CMAKE_COMMAND) -P CMakeFiles/example_datasets_ar_hmdb.dir/cmake_clean.cmake
.PHONY : modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/clean

modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/depend:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/billalrahimi/Desktop/Robotics/C_Template/opencv /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/datasets /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/datasets /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/datasets/CMakeFiles/example_datasets_ar_hmdb.dir/depend

