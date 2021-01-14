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
include modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/depend.make

# Include the progress variables for this target.
include modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/progress.make

# Include the compile flags for this target's objects.
include modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/flags.make

modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/samples/hash_samples.cpp.o: modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/flags.make
modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/samples/hash_samples.cpp.o: /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/img_hash/samples/hash_samples.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/samples/hash_samples.cpp.o"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/img_hash && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_img_hash_hash_samples.dir/samples/hash_samples.cpp.o -c /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/img_hash/samples/hash_samples.cpp

modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/samples/hash_samples.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_img_hash_hash_samples.dir/samples/hash_samples.cpp.i"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/img_hash && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/img_hash/samples/hash_samples.cpp > CMakeFiles/example_img_hash_hash_samples.dir/samples/hash_samples.cpp.i

modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/samples/hash_samples.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_img_hash_hash_samples.dir/samples/hash_samples.cpp.s"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/img_hash && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/img_hash/samples/hash_samples.cpp -o CMakeFiles/example_img_hash_hash_samples.dir/samples/hash_samples.cpp.s

# Object files for target example_img_hash_hash_samples
example_img_hash_hash_samples_OBJECTS = \
"CMakeFiles/example_img_hash_hash_samples.dir/samples/hash_samples.cpp.o"

# External object files for target example_img_hash_hash_samples
example_img_hash_hash_samples_EXTERNAL_OBJECTS =

bin/example_img_hash_hash_samples: modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/samples/hash_samples.cpp.o
bin/example_img_hash_hash_samples: modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/build.make
bin/example_img_hash_hash_samples: lib/libopencv_img_hash.4.5.0.dylib
bin/example_img_hash_hash_samples: lib/libopencv_highgui.4.5.0.dylib
bin/example_img_hash_hash_samples: lib/libopencv_videoio.4.5.0.dylib
bin/example_img_hash_hash_samples: lib/libopencv_imgcodecs.4.5.0.dylib
bin/example_img_hash_hash_samples: lib/libopencv_imgproc.4.5.0.dylib
bin/example_img_hash_hash_samples: lib/libopencv_core.4.5.0.dylib
bin/example_img_hash_hash_samples: modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/example_img_hash_hash_samples"
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/img_hash && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_img_hash_hash_samples.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/build: bin/example_img_hash_hash_samples

.PHONY : modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/build

modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/clean:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/img_hash && $(CMAKE_COMMAND) -P CMakeFiles/example_img_hash_hash_samples.dir/cmake_clean.cmake
.PHONY : modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/clean

modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/depend:
	cd /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/billalrahimi/Desktop/Robotics/C_Template/opencv /Users/billalrahimi/Desktop/Robotics/C_Template/opencv_contrib/modules/img_hash /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/img_hash /Users/billalrahimi/Desktop/Robotics/C_Template/build_opencv/modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/img_hash/CMakeFiles/example_img_hash_hash_samples.dir/depend

