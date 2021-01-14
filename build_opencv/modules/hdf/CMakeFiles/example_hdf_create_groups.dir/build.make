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
include modules/hdf/CMakeFiles/example_hdf_create_groups.dir/depend.make

# Include the progress variables for this target.
include modules/hdf/CMakeFiles/example_hdf_create_groups.dir/progress.make

# Include the compile flags for this target's objects.
include modules/hdf/CMakeFiles/example_hdf_create_groups.dir/flags.make

modules/hdf/CMakeFiles/example_hdf_create_groups.dir/samples/create_groups.cpp.o: modules/hdf/CMakeFiles/example_hdf_create_groups.dir/flags.make
modules/hdf/CMakeFiles/example_hdf_create_groups.dir/samples/create_groups.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/hdf/samples/create_groups.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/hdf/CMakeFiles/example_hdf_create_groups.dir/samples/create_groups.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/hdf && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_hdf_create_groups.dir/samples/create_groups.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/hdf/samples/create_groups.cpp

modules/hdf/CMakeFiles/example_hdf_create_groups.dir/samples/create_groups.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_hdf_create_groups.dir/samples/create_groups.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/hdf && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/hdf/samples/create_groups.cpp > CMakeFiles/example_hdf_create_groups.dir/samples/create_groups.cpp.i

modules/hdf/CMakeFiles/example_hdf_create_groups.dir/samples/create_groups.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_hdf_create_groups.dir/samples/create_groups.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/hdf && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/hdf/samples/create_groups.cpp -o CMakeFiles/example_hdf_create_groups.dir/samples/create_groups.cpp.s

# Object files for target example_hdf_create_groups
example_hdf_create_groups_OBJECTS = \
"CMakeFiles/example_hdf_create_groups.dir/samples/create_groups.cpp.o"

# External object files for target example_hdf_create_groups
example_hdf_create_groups_EXTERNAL_OBJECTS =

bin/example_hdf_create_groups: modules/hdf/CMakeFiles/example_hdf_create_groups.dir/samples/create_groups.cpp.o
bin/example_hdf_create_groups: modules/hdf/CMakeFiles/example_hdf_create_groups.dir/build.make
bin/example_hdf_create_groups: lib/libopencv_hdf.4.5.0.dylib
bin/example_hdf_create_groups: lib/libopencv_highgui.4.5.0.dylib
bin/example_hdf_create_groups: lib/libopencv_videoio.4.5.0.dylib
bin/example_hdf_create_groups: lib/libopencv_imgcodecs.4.5.0.dylib
bin/example_hdf_create_groups: lib/libopencv_imgproc.4.5.0.dylib
bin/example_hdf_create_groups: lib/libopencv_core.4.5.0.dylib
bin/example_hdf_create_groups: modules/hdf/CMakeFiles/example_hdf_create_groups.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/example_hdf_create_groups"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/hdf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_hdf_create_groups.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/hdf/CMakeFiles/example_hdf_create_groups.dir/build: bin/example_hdf_create_groups

.PHONY : modules/hdf/CMakeFiles/example_hdf_create_groups.dir/build

modules/hdf/CMakeFiles/example_hdf_create_groups.dir/clean:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/hdf && $(CMAKE_COMMAND) -P CMakeFiles/example_hdf_create_groups.dir/cmake_clean.cmake
.PHONY : modules/hdf/CMakeFiles/example_hdf_create_groups.dir/clean

modules/hdf/CMakeFiles/example_hdf_create_groups.dir/depend:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/billalrahimi/Desktop/Robotics/C_Template/opencv /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/hdf /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/hdf /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/hdf/CMakeFiles/example_hdf_create_groups.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/hdf/CMakeFiles/example_hdf_create_groups.dir/depend

