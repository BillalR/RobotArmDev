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
include modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/depend.make

# Include the progress variables for this target.
include modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/progress.make

# Include the compile flags for this target's objects.
include modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/flags.make

modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/numeric.cc.o: modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/flags.make
modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/numeric.cc.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/sfm/src/libmv_light/libmv/numeric/numeric.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/numeric.cc.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/sfm/src/libmv/libmv/numeric && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/numeric.dir/numeric.cc.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/sfm/src/libmv_light/libmv/numeric/numeric.cc

modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/numeric.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/numeric.dir/numeric.cc.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/sfm/src/libmv/libmv/numeric && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/sfm/src/libmv_light/libmv/numeric/numeric.cc > CMakeFiles/numeric.dir/numeric.cc.i

modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/numeric.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/numeric.dir/numeric.cc.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/sfm/src/libmv/libmv/numeric && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/sfm/src/libmv_light/libmv/numeric/numeric.cc -o CMakeFiles/numeric.dir/numeric.cc.s

modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/poly.cc.o: modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/flags.make
modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/poly.cc.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/sfm/src/libmv_light/libmv/numeric/poly.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/poly.cc.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/sfm/src/libmv/libmv/numeric && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/numeric.dir/poly.cc.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/sfm/src/libmv_light/libmv/numeric/poly.cc

modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/poly.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/numeric.dir/poly.cc.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/sfm/src/libmv/libmv/numeric && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/sfm/src/libmv_light/libmv/numeric/poly.cc > CMakeFiles/numeric.dir/poly.cc.i

modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/poly.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/numeric.dir/poly.cc.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/sfm/src/libmv/libmv/numeric && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/sfm/src/libmv_light/libmv/numeric/poly.cc -o CMakeFiles/numeric.dir/poly.cc.s

# Object files for target numeric
numeric_OBJECTS = \
"CMakeFiles/numeric.dir/numeric.cc.o" \
"CMakeFiles/numeric.dir/poly.cc.o"

# External object files for target numeric
numeric_EXTERNAL_OBJECTS =

lib/libnumeric.a: modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/numeric.cc.o
lib/libnumeric.a: modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/poly.cc.o
lib/libnumeric.a: modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/build.make
lib/libnumeric.a: modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../../../../../../lib/libnumeric.a"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/sfm/src/libmv/libmv/numeric && $(CMAKE_COMMAND) -P CMakeFiles/numeric.dir/cmake_clean_target.cmake
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/sfm/src/libmv/libmv/numeric && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/numeric.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/build: lib/libnumeric.a

.PHONY : modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/build

modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/clean:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/sfm/src/libmv/libmv/numeric && $(CMAKE_COMMAND) -P CMakeFiles/numeric.dir/cmake_clean.cmake
.PHONY : modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/clean

modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/depend:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/billalrahimi/Desktop/Robotics/C_Template/opencv /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/sfm/src/libmv_light/libmv/numeric /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/sfm/src/libmv/libmv/numeric /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/sfm/src/libmv/libmv/numeric/CMakeFiles/numeric.dir/depend

