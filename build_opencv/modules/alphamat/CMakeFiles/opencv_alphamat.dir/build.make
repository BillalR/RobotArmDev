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
include modules/alphamat/CMakeFiles/opencv_alphamat.dir/depend.make

# Include the progress variables for this target.
include modules/alphamat/CMakeFiles/opencv_alphamat.dir/progress.make

# Include the compile flags for this target's objects.
include modules/alphamat/CMakeFiles/opencv_alphamat.dir/flags.make

modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/cm.cpp.o: modules/alphamat/CMakeFiles/opencv_alphamat.dir/flags.make
modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/cm.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/cm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/cm.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_alphamat.dir/src/cm.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/cm.cpp

modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/cm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_alphamat.dir/src/cm.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/cm.cpp > CMakeFiles/opencv_alphamat.dir/src/cm.cpp.i

modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/cm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_alphamat.dir/src/cm.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/cm.cpp -o CMakeFiles/opencv_alphamat.dir/src/cm.cpp.s

modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/infoflow.cpp.o: modules/alphamat/CMakeFiles/opencv_alphamat.dir/flags.make
modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/infoflow.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/infoflow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/infoflow.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_alphamat.dir/src/infoflow.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/infoflow.cpp

modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/infoflow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_alphamat.dir/src/infoflow.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/infoflow.cpp > CMakeFiles/opencv_alphamat.dir/src/infoflow.cpp.i

modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/infoflow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_alphamat.dir/src/infoflow.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/infoflow.cpp -o CMakeFiles/opencv_alphamat.dir/src/infoflow.cpp.s

modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/intraU.cpp.o: modules/alphamat/CMakeFiles/opencv_alphamat.dir/flags.make
modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/intraU.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/intraU.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/intraU.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_alphamat.dir/src/intraU.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/intraU.cpp

modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/intraU.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_alphamat.dir/src/intraU.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/intraU.cpp > CMakeFiles/opencv_alphamat.dir/src/intraU.cpp.i

modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/intraU.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_alphamat.dir/src/intraU.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/intraU.cpp -o CMakeFiles/opencv_alphamat.dir/src/intraU.cpp.s

modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/local_info.cpp.o: modules/alphamat/CMakeFiles/opencv_alphamat.dir/flags.make
modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/local_info.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/local_info.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/local_info.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_alphamat.dir/src/local_info.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/local_info.cpp

modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/local_info.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_alphamat.dir/src/local_info.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/local_info.cpp > CMakeFiles/opencv_alphamat.dir/src/local_info.cpp.i

modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/local_info.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_alphamat.dir/src/local_info.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat/src/local_info.cpp -o CMakeFiles/opencv_alphamat.dir/src/local_info.cpp.s

# Object files for target opencv_alphamat
opencv_alphamat_OBJECTS = \
"CMakeFiles/opencv_alphamat.dir/src/cm.cpp.o" \
"CMakeFiles/opencv_alphamat.dir/src/infoflow.cpp.o" \
"CMakeFiles/opencv_alphamat.dir/src/intraU.cpp.o" \
"CMakeFiles/opencv_alphamat.dir/src/local_info.cpp.o"

# External object files for target opencv_alphamat
opencv_alphamat_EXTERNAL_OBJECTS =

lib/libopencv_alphamat.4.5.0.dylib: modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/cm.cpp.o
lib/libopencv_alphamat.4.5.0.dylib: modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/infoflow.cpp.o
lib/libopencv_alphamat.4.5.0.dylib: modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/intraU.cpp.o
lib/libopencv_alphamat.4.5.0.dylib: modules/alphamat/CMakeFiles/opencv_alphamat.dir/src/local_info.cpp.o
lib/libopencv_alphamat.4.5.0.dylib: modules/alphamat/CMakeFiles/opencv_alphamat.dir/build.make
lib/libopencv_alphamat.4.5.0.dylib: lib/libopencv_imgproc.4.5.0.dylib
lib/libopencv_alphamat.4.5.0.dylib: 3rdparty/lib/libippiw.a
lib/libopencv_alphamat.4.5.0.dylib: 3rdparty/ippicv/ippicv_mac/icv/lib/intel64/libippicv.a
lib/libopencv_alphamat.4.5.0.dylib: lib/libopencv_core.4.5.0.dylib
lib/libopencv_alphamat.4.5.0.dylib: modules/alphamat/CMakeFiles/opencv_alphamat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library ../../lib/libopencv_alphamat.dylib"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_alphamat.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libopencv_alphamat.4.5.0.dylib ../../lib/libopencv_alphamat.4.5.dylib ../../lib/libopencv_alphamat.dylib

lib/libopencv_alphamat.4.5.dylib: lib/libopencv_alphamat.4.5.0.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libopencv_alphamat.4.5.dylib

lib/libopencv_alphamat.dylib: lib/libopencv_alphamat.4.5.0.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libopencv_alphamat.dylib

# Rule to build all files generated by this target.
modules/alphamat/CMakeFiles/opencv_alphamat.dir/build: lib/libopencv_alphamat.dylib

.PHONY : modules/alphamat/CMakeFiles/opencv_alphamat.dir/build

modules/alphamat/CMakeFiles/opencv_alphamat.dir/clean:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat && $(CMAKE_COMMAND) -P CMakeFiles/opencv_alphamat.dir/cmake_clean.cmake
.PHONY : modules/alphamat/CMakeFiles/opencv_alphamat.dir/clean

modules/alphamat/CMakeFiles/opencv_alphamat.dir/depend:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/billalrahimi/Desktop/Robotics/C_Template/opencv /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/alphamat /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/alphamat/CMakeFiles/opencv_alphamat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/alphamat/CMakeFiles/opencv_alphamat.dir/depend

