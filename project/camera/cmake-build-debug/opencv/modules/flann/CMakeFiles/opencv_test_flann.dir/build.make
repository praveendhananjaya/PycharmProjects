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
include opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/depend.make

# Include the progress variables for this target.
include opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/progress.make

# Include the compile flags for this target's objects.
include opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/flags.make

opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/test/test_lshtable_badarg.cpp.o: opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/flags.make
opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/test/test_lshtable_badarg.cpp.o: ../opencv/modules/flann/test/test_lshtable_badarg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/test/test_lshtable_badarg.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/flann && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_flann.dir/test/test_lshtable_badarg.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/flann/test/test_lshtable_badarg.cpp

opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/test/test_lshtable_badarg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_flann.dir/test/test_lshtable_badarg.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/flann && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/flann/test/test_lshtable_badarg.cpp > CMakeFiles/opencv_test_flann.dir/test/test_lshtable_badarg.cpp.i

opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/test/test_lshtable_badarg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_flann.dir/test/test_lshtable_badarg.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/flann && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/flann/test/test_lshtable_badarg.cpp -o CMakeFiles/opencv_test_flann.dir/test/test_lshtable_badarg.cpp.s

opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/test/test_main.cpp.o: opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/flags.make
opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/test/test_main.cpp.o: ../opencv/modules/flann/test/test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/test/test_main.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/flann && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_flann.dir/test/test_main.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/flann/test/test_main.cpp

opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_flann.dir/test/test_main.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/flann && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/flann/test/test_main.cpp > CMakeFiles/opencv_test_flann.dir/test/test_main.cpp.i

opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_flann.dir/test/test_main.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/flann && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/flann/test/test_main.cpp -o CMakeFiles/opencv_test_flann.dir/test/test_main.cpp.s

# Object files for target opencv_test_flann
opencv_test_flann_OBJECTS = \
"CMakeFiles/opencv_test_flann.dir/test/test_lshtable_badarg.cpp.o" \
"CMakeFiles/opencv_test_flann.dir/test/test_main.cpp.o"

# External object files for target opencv_test_flann
opencv_test_flann_EXTERNAL_OBJECTS =

bin/opencv_test_flann: opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/test/test_lshtable_badarg.cpp.o
bin/opencv_test_flann: opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/test/test_main.cpp.o
bin/opencv_test_flann: opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/build.make
bin/opencv_test_flann: opencv/lib/libopencv_ts.a
bin/opencv_test_flann: opencv/lib/libopencv_flann.so.4.5.1
bin/opencv_test_flann: opencv/lib/libopencv_highgui.so.4.5.1
bin/opencv_test_flann: opencv/3rdparty/lib/libippiw.a
bin/opencv_test_flann: opencv/3rdparty/ippicv/ippicv_lnx/icv/lib/intel64/libippicv.a
bin/opencv_test_flann: opencv/lib/libopencv_videoio.so.4.5.1
bin/opencv_test_flann: opencv/lib/libopencv_imgcodecs.so.4.5.1
bin/opencv_test_flann: opencv/lib/libopencv_imgproc.so.4.5.1
bin/opencv_test_flann: opencv/lib/libopencv_core.so.4.5.1
bin/opencv_test_flann: opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../bin/opencv_test_flann"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/flann && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_flann.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/build: bin/opencv_test_flann

.PHONY : opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/build

opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/clean:
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/flann && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_flann.dir/cmake_clean.cmake
.PHONY : opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/clean

opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/depend:
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/praveen/PycharmProjects/project/camera /home/praveen/PycharmProjects/project/camera/opencv/modules/flann /home/praveen/PycharmProjects/project/camera/cmake-build-debug /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/flann /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencv/modules/flann/CMakeFiles/opencv_test_flann.dir/depend
