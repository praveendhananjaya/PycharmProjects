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
include opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/depend.make

# Include the progress variables for this target.
include opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/progress.make

# Include the compile flags for this target's objects.
include opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make

opencv/modules/stitching/opencl_kernels_stitching.cpp: ../opencv/modules/stitching/src/opencl/multibandblend.cl
opencv/modules/stitching/opencl_kernels_stitching.cpp: ../opencv/modules/stitching/src/opencl/warpers.cl
opencv/modules/stitching/opencl_kernels_stitching.cpp: ../opencv/cmake/cl2cpp.cmake
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Processing OpenCL kernels (stitching)"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /snap/clion/138/bin/cmake/linux/bin/cmake -DMODULE_NAME=stitching -DCL_DIR=/home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/opencl -DOUTPUT=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching/opencl_kernels_stitching.cpp -P /home/praveen/PycharmProjects/project/camera/opencv/cmake/cl2cpp.cmake

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/autocalib.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/autocalib.cpp.o: ../opencv/modules/stitching/src/autocalib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/autocalib.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/src/autocalib.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/autocalib.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/autocalib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/src/autocalib.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/autocalib.cpp > CMakeFiles/opencv_stitching.dir/src/autocalib.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/autocalib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/src/autocalib.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/autocalib.cpp -o CMakeFiles/opencv_stitching.dir/src/autocalib.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/blenders.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/blenders.cpp.o: ../opencv/modules/stitching/src/blenders.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/blenders.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/src/blenders.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/blenders.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/blenders.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/src/blenders.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/blenders.cpp > CMakeFiles/opencv_stitching.dir/src/blenders.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/blenders.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/src/blenders.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/blenders.cpp -o CMakeFiles/opencv_stitching.dir/src/blenders.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/camera.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/camera.cpp.o: ../opencv/modules/stitching/src/camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/camera.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/src/camera.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/camera.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/src/camera.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/camera.cpp > CMakeFiles/opencv_stitching.dir/src/camera.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/src/camera.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/camera.cpp -o CMakeFiles/opencv_stitching.dir/src/camera.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/exposure_compensate.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/exposure_compensate.cpp.o: ../opencv/modules/stitching/src/exposure_compensate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/exposure_compensate.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/src/exposure_compensate.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/exposure_compensate.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/exposure_compensate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/src/exposure_compensate.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/exposure_compensate.cpp > CMakeFiles/opencv_stitching.dir/src/exposure_compensate.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/exposure_compensate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/src/exposure_compensate.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/exposure_compensate.cpp -o CMakeFiles/opencv_stitching.dir/src/exposure_compensate.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/matchers.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/matchers.cpp.o: ../opencv/modules/stitching/src/matchers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/matchers.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/src/matchers.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/matchers.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/matchers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/src/matchers.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/matchers.cpp > CMakeFiles/opencv_stitching.dir/src/matchers.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/matchers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/src/matchers.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/matchers.cpp -o CMakeFiles/opencv_stitching.dir/src/matchers.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/motion_estimators.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/motion_estimators.cpp.o: ../opencv/modules/stitching/src/motion_estimators.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/motion_estimators.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/src/motion_estimators.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/motion_estimators.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/motion_estimators.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/src/motion_estimators.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/motion_estimators.cpp > CMakeFiles/opencv_stitching.dir/src/motion_estimators.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/motion_estimators.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/src/motion_estimators.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/motion_estimators.cpp -o CMakeFiles/opencv_stitching.dir/src/motion_estimators.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/seam_finders.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/seam_finders.cpp.o: ../opencv/modules/stitching/src/seam_finders.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/seam_finders.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/src/seam_finders.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/seam_finders.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/seam_finders.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/src/seam_finders.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/seam_finders.cpp > CMakeFiles/opencv_stitching.dir/src/seam_finders.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/seam_finders.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/src/seam_finders.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/seam_finders.cpp -o CMakeFiles/opencv_stitching.dir/src/seam_finders.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/stitcher.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/stitcher.cpp.o: ../opencv/modules/stitching/src/stitcher.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/stitcher.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/src/stitcher.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/stitcher.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/stitcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/src/stitcher.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/stitcher.cpp > CMakeFiles/opencv_stitching.dir/src/stitcher.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/stitcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/src/stitcher.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/stitcher.cpp -o CMakeFiles/opencv_stitching.dir/src/stitcher.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/timelapsers.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/timelapsers.cpp.o: ../opencv/modules/stitching/src/timelapsers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/timelapsers.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/src/timelapsers.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/timelapsers.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/timelapsers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/src/timelapsers.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/timelapsers.cpp > CMakeFiles/opencv_stitching.dir/src/timelapsers.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/timelapsers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/src/timelapsers.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/timelapsers.cpp -o CMakeFiles/opencv_stitching.dir/src/timelapsers.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/util.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/util.cpp.o: ../opencv/modules/stitching/src/util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/util.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/src/util.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/util.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/src/util.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/util.cpp > CMakeFiles/opencv_stitching.dir/src/util.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/src/util.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/util.cpp -o CMakeFiles/opencv_stitching.dir/src/util.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/warpers.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/warpers.cpp.o: ../opencv/modules/stitching/src/warpers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/warpers.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/src/warpers.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/warpers.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/warpers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/src/warpers.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/warpers.cpp > CMakeFiles/opencv_stitching.dir/src/warpers.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/warpers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/src/warpers.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/warpers.cpp -o CMakeFiles/opencv_stitching.dir/src/warpers.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/warpers_cuda.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/warpers_cuda.cpp.o: ../opencv/modules/stitching/src/warpers_cuda.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/warpers_cuda.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/src/warpers_cuda.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/warpers_cuda.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/warpers_cuda.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/src/warpers_cuda.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/warpers_cuda.cpp > CMakeFiles/opencv_stitching.dir/src/warpers_cuda.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/warpers_cuda.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/src/warpers_cuda.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/src/warpers_cuda.cpp -o CMakeFiles/opencv_stitching.dir/src/warpers_cuda.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/opencl_kernels_stitching.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/opencl_kernels_stitching.cpp.o: opencv/modules/stitching/opencl_kernels_stitching.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/opencl_kernels_stitching.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stitching.dir/opencl_kernels_stitching.cpp.o -c /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching/opencl_kernels_stitching.cpp

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/opencl_kernels_stitching.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stitching.dir/opencl_kernels_stitching.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching/opencl_kernels_stitching.cpp > CMakeFiles/opencv_stitching.dir/opencl_kernels_stitching.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/opencl_kernels_stitching.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stitching.dir/opencl_kernels_stitching.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching/opencl_kernels_stitching.cpp -o CMakeFiles/opencv_stitching.dir/opencl_kernels_stitching.cpp.s

# Object files for target opencv_stitching
opencv_stitching_OBJECTS = \
"CMakeFiles/opencv_stitching.dir/src/autocalib.cpp.o" \
"CMakeFiles/opencv_stitching.dir/src/blenders.cpp.o" \
"CMakeFiles/opencv_stitching.dir/src/camera.cpp.o" \
"CMakeFiles/opencv_stitching.dir/src/exposure_compensate.cpp.o" \
"CMakeFiles/opencv_stitching.dir/src/matchers.cpp.o" \
"CMakeFiles/opencv_stitching.dir/src/motion_estimators.cpp.o" \
"CMakeFiles/opencv_stitching.dir/src/seam_finders.cpp.o" \
"CMakeFiles/opencv_stitching.dir/src/stitcher.cpp.o" \
"CMakeFiles/opencv_stitching.dir/src/timelapsers.cpp.o" \
"CMakeFiles/opencv_stitching.dir/src/util.cpp.o" \
"CMakeFiles/opencv_stitching.dir/src/warpers.cpp.o" \
"CMakeFiles/opencv_stitching.dir/src/warpers_cuda.cpp.o" \
"CMakeFiles/opencv_stitching.dir/opencl_kernels_stitching.cpp.o"

# External object files for target opencv_stitching
opencv_stitching_EXTERNAL_OBJECTS =

opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/autocalib.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/blenders.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/camera.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/exposure_compensate.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/matchers.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/motion_estimators.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/seam_finders.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/stitcher.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/timelapsers.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/util.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/warpers.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/src/warpers_cuda.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/opencl_kernels_stitching.cpp.o
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/build.make
opencv/lib/libopencv_stitching.so.4.5.1: opencv/lib/libopencv_calib3d.so.4.5.1
opencv/lib/libopencv_stitching.so.4.5.1: opencv/3rdparty/lib/libippiw.a
opencv/lib/libopencv_stitching.so.4.5.1: opencv/3rdparty/ippicv/ippicv_lnx/icv/lib/intel64/libippicv.a
opencv/lib/libopencv_stitching.so.4.5.1: opencv/lib/libopencv_features2d.so.4.5.1
opencv/lib/libopencv_stitching.so.4.5.1: opencv/lib/libopencv_flann.so.4.5.1
opencv/lib/libopencv_stitching.so.4.5.1: opencv/lib/libopencv_imgproc.so.4.5.1
opencv/lib/libopencv_stitching.so.4.5.1: opencv/lib/libopencv_core.so.4.5.1
opencv/lib/libopencv_stitching.so.4.5.1: opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX shared library ../../lib/libopencv_stitching.so"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_stitching.dir/link.txt --verbose=$(VERBOSE)
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libopencv_stitching.so.4.5.1 ../../lib/libopencv_stitching.so.4.5 ../../lib/libopencv_stitching.so

opencv/lib/libopencv_stitching.so.4.5: opencv/lib/libopencv_stitching.so.4.5.1
	@$(CMAKE_COMMAND) -E touch_nocreate opencv/lib/libopencv_stitching.so.4.5

opencv/lib/libopencv_stitching.so: opencv/lib/libopencv_stitching.so.4.5.1
	@$(CMAKE_COMMAND) -E touch_nocreate opencv/lib/libopencv_stitching.so

# Rule to build all files generated by this target.
opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/build: opencv/lib/libopencv_stitching.so

.PHONY : opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/build

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/clean:
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && $(CMAKE_COMMAND) -P CMakeFiles/opencv_stitching.dir/cmake_clean.cmake
.PHONY : opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/clean

opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/depend: opencv/modules/stitching/opencl_kernels_stitching.cpp
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/praveen/PycharmProjects/project/camera /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching /home/praveen/PycharmProjects/project/camera/cmake-build-debug /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencv/modules/stitching/CMakeFiles/opencv_stitching.dir/depend
