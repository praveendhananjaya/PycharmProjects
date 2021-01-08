# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/138/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/138/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/praveen/PycharmProjects/project/camera

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/praveen/PycharmProjects/project/camera/cmake-build-debug

# Include any dependencies generated for this target.
include opencv/apps/version/CMakeFiles/opencv_version.dir/depend.make

# Include the progress variables for this target.
include opencv/apps/version/CMakeFiles/opencv_version.dir/progress.make

# Include the compile flags for this target's objects.
include opencv/apps/version/CMakeFiles/opencv_version.dir/flags.make

opencv/apps/version/CMakeFiles/opencv_version.dir/opencv_version.cpp.o: opencv/apps/version/CMakeFiles/opencv_version.dir/flags.make
opencv/apps/version/CMakeFiles/opencv_version.dir/opencv_version.cpp.o: ../opencv/apps/version/opencv_version.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object opencv/apps/version/CMakeFiles/opencv_version.dir/opencv_version.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/apps/version && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_version.dir/opencv_version.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/apps/version/opencv_version.cpp

opencv/apps/version/CMakeFiles/opencv_version.dir/opencv_version.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_version.dir/opencv_version.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/apps/version && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/apps/version/opencv_version.cpp > CMakeFiles/opencv_version.dir/opencv_version.cpp.i

opencv/apps/version/CMakeFiles/opencv_version.dir/opencv_version.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_version.dir/opencv_version.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/apps/version && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/apps/version/opencv_version.cpp -o CMakeFiles/opencv_version.dir/opencv_version.cpp.s

# Object files for target opencv_version
opencv_version_OBJECTS = \
"CMakeFiles/opencv_version.dir/opencv_version.cpp.o"

# External object files for target opencv_version
opencv_version_EXTERNAL_OBJECTS =

bin/opencv_version: opencv/apps/version/CMakeFiles/opencv_version.dir/opencv_version.cpp.o
bin/opencv_version: opencv/apps/version/CMakeFiles/opencv_version.dir/build.make
bin/opencv_version: opencv/3rdparty/lib/libippiw.a
bin/opencv_version: opencv/3rdparty/ippicv/ippicv_lnx/icv/lib/intel64/libippicv.a
bin/opencv_version: opencv/lib/libopencv_core.so.4.5.1
bin/opencv_version: opencv/apps/version/CMakeFiles/opencv_version.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/opencv_version"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/apps/version && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_version.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencv/apps/version/CMakeFiles/opencv_version.dir/build: bin/opencv_version

.PHONY : opencv/apps/version/CMakeFiles/opencv_version.dir/build

opencv/apps/version/CMakeFiles/opencv_version.dir/clean:
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/apps/version && $(CMAKE_COMMAND) -P CMakeFiles/opencv_version.dir/cmake_clean.cmake
.PHONY : opencv/apps/version/CMakeFiles/opencv_version.dir/clean

opencv/apps/version/CMakeFiles/opencv_version.dir/depend:
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/praveen/PycharmProjects/project/camera /home/praveen/PycharmProjects/project/camera/opencv/apps/version /home/praveen/PycharmProjects/project/camera/cmake-build-debug /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/apps/version /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/apps/version/CMakeFiles/opencv_version.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencv/apps/version/CMakeFiles/opencv_version.dir/depend

