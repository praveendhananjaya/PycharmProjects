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
include opencv/modules/photo/CMakeFiles/opencv_photo.dir/depend.make

# Include the progress variables for this target.
include opencv/modules/photo/CMakeFiles/opencv_photo.dir/progress.make

# Include the compile flags for this target's objects.
include opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make

opencv/modules/photo/opencl_kernels_photo.cpp: ../opencv/modules/photo/src/opencl/nlmeans.cl
opencv/modules/photo/opencl_kernels_photo.cpp: ../opencv/cmake/cl2cpp.cmake
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Processing OpenCL kernels (photo)"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /snap/clion/138/bin/cmake/linux/bin/cmake -DMODULE_NAME=photo -DCL_DIR=/home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/opencl -DOUTPUT=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo/opencl_kernels_photo.cpp -P /home/praveen/PycharmProjects/project/camera/opencv/cmake/cl2cpp.cmake

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/align.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/align.cpp.o: ../opencv/modules/photo/src/align.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/align.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/align.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/align.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/align.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/align.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/align.cpp > CMakeFiles/opencv_photo.dir/src/align.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/align.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/align.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/align.cpp -o CMakeFiles/opencv_photo.dir/src/align.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/calibrate.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/calibrate.cpp.o: ../opencv/modules/photo/src/calibrate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/calibrate.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/calibrate.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/calibrate.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/calibrate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/calibrate.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/calibrate.cpp > CMakeFiles/opencv_photo.dir/src/calibrate.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/calibrate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/calibrate.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/calibrate.cpp -o CMakeFiles/opencv_photo.dir/src/calibrate.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/contrast_preserve.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/contrast_preserve.cpp.o: ../opencv/modules/photo/src/contrast_preserve.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/contrast_preserve.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/contrast_preserve.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/contrast_preserve.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/contrast_preserve.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/contrast_preserve.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/contrast_preserve.cpp > CMakeFiles/opencv_photo.dir/src/contrast_preserve.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/contrast_preserve.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/contrast_preserve.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/contrast_preserve.cpp -o CMakeFiles/opencv_photo.dir/src/contrast_preserve.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoise_tvl1.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoise_tvl1.cpp.o: ../opencv/modules/photo/src/denoise_tvl1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoise_tvl1.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/denoise_tvl1.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/denoise_tvl1.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoise_tvl1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/denoise_tvl1.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/denoise_tvl1.cpp > CMakeFiles/opencv_photo.dir/src/denoise_tvl1.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoise_tvl1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/denoise_tvl1.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/denoise_tvl1.cpp -o CMakeFiles/opencv_photo.dir/src/denoise_tvl1.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoising.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoising.cpp.o: ../opencv/modules/photo/src/denoising.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoising.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/denoising.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/denoising.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoising.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/denoising.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/denoising.cpp > CMakeFiles/opencv_photo.dir/src/denoising.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoising.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/denoising.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/denoising.cpp -o CMakeFiles/opencv_photo.dir/src/denoising.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoising.cuda.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoising.cuda.cpp.o: ../opencv/modules/photo/src/denoising.cuda.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoising.cuda.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/denoising.cuda.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/denoising.cuda.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoising.cuda.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/denoising.cuda.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/denoising.cuda.cpp > CMakeFiles/opencv_photo.dir/src/denoising.cuda.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoising.cuda.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/denoising.cuda.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/denoising.cuda.cpp -o CMakeFiles/opencv_photo.dir/src/denoising.cuda.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/hdr_common.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/hdr_common.cpp.o: ../opencv/modules/photo/src/hdr_common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/hdr_common.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/hdr_common.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/hdr_common.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/hdr_common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/hdr_common.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/hdr_common.cpp > CMakeFiles/opencv_photo.dir/src/hdr_common.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/hdr_common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/hdr_common.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/hdr_common.cpp -o CMakeFiles/opencv_photo.dir/src/hdr_common.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o: ../opencv/modules/photo/src/inpaint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/inpaint.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/inpaint.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/inpaint.cpp > CMakeFiles/opencv_photo.dir/src/inpaint.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/inpaint.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/inpaint.cpp -o CMakeFiles/opencv_photo.dir/src/inpaint.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/merge.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/merge.cpp.o: ../opencv/modules/photo/src/merge.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/merge.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/merge.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/merge.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/merge.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/merge.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/merge.cpp > CMakeFiles/opencv_photo.dir/src/merge.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/merge.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/merge.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/merge.cpp -o CMakeFiles/opencv_photo.dir/src/merge.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/npr.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/npr.cpp.o: ../opencv/modules/photo/src/npr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/npr.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/npr.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/npr.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/npr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/npr.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/npr.cpp > CMakeFiles/opencv_photo.dir/src/npr.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/npr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/npr.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/npr.cpp -o CMakeFiles/opencv_photo.dir/src/npr.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/seamless_cloning.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/seamless_cloning.cpp.o: ../opencv/modules/photo/src/seamless_cloning.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/seamless_cloning.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/seamless_cloning.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/seamless_cloning.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/seamless_cloning.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/seamless_cloning.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/seamless_cloning.cpp > CMakeFiles/opencv_photo.dir/src/seamless_cloning.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/seamless_cloning.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/seamless_cloning.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/seamless_cloning.cpp -o CMakeFiles/opencv_photo.dir/src/seamless_cloning.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/seamless_cloning_impl.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/seamless_cloning_impl.cpp.o: ../opencv/modules/photo/src/seamless_cloning_impl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/seamless_cloning_impl.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/seamless_cloning_impl.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/seamless_cloning_impl.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/seamless_cloning_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/seamless_cloning_impl.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/seamless_cloning_impl.cpp > CMakeFiles/opencv_photo.dir/src/seamless_cloning_impl.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/seamless_cloning_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/seamless_cloning_impl.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/seamless_cloning_impl.cpp -o CMakeFiles/opencv_photo.dir/src/seamless_cloning_impl.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/tonemap.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/tonemap.cpp.o: ../opencv/modules/photo/src/tonemap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/tonemap.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/tonemap.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/tonemap.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/tonemap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/tonemap.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/tonemap.cpp > CMakeFiles/opencv_photo.dir/src/tonemap.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/tonemap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/tonemap.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/photo/src/tonemap.cpp -o CMakeFiles/opencv_photo.dir/src/tonemap.cpp.s

opencv/modules/photo/CMakeFiles/opencv_photo.dir/opencl_kernels_photo.cpp.o: opencv/modules/photo/CMakeFiles/opencv_photo.dir/flags.make
opencv/modules/photo/CMakeFiles/opencv_photo.dir/opencl_kernels_photo.cpp.o: opencv/modules/photo/opencl_kernels_photo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object opencv/modules/photo/CMakeFiles/opencv_photo.dir/opencl_kernels_photo.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/opencl_kernels_photo.cpp.o -c /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo/opencl_kernels_photo.cpp

opencv/modules/photo/CMakeFiles/opencv_photo.dir/opencl_kernels_photo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/opencl_kernels_photo.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo/opencl_kernels_photo.cpp > CMakeFiles/opencv_photo.dir/opencl_kernels_photo.cpp.i

opencv/modules/photo/CMakeFiles/opencv_photo.dir/opencl_kernels_photo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/opencl_kernels_photo.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo/opencl_kernels_photo.cpp -o CMakeFiles/opencv_photo.dir/opencl_kernels_photo.cpp.s

# Object files for target opencv_photo
opencv_photo_OBJECTS = \
"CMakeFiles/opencv_photo.dir/src/align.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/calibrate.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/contrast_preserve.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/denoise_tvl1.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/denoising.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/denoising.cuda.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/hdr_common.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/merge.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/npr.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/seamless_cloning.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/seamless_cloning_impl.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/tonemap.cpp.o" \
"CMakeFiles/opencv_photo.dir/opencl_kernels_photo.cpp.o"

# External object files for target opencv_photo
opencv_photo_EXTERNAL_OBJECTS =

opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/align.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/calibrate.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/contrast_preserve.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoise_tvl1.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoising.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/denoising.cuda.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/hdr_common.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/merge.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/npr.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/seamless_cloning.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/seamless_cloning_impl.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/src/tonemap.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/opencl_kernels_photo.cpp.o
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/build.make
opencv/lib/libopencv_photo.so.4.5.1: opencv/lib/libopencv_imgproc.so.4.5.1
opencv/lib/libopencv_photo.so.4.5.1: opencv/3rdparty/lib/libippiw.a
opencv/lib/libopencv_photo.so.4.5.1: opencv/3rdparty/ippicv/ippicv_lnx/icv/lib/intel64/libippicv.a
opencv/lib/libopencv_photo.so.4.5.1: opencv/lib/libopencv_core.so.4.5.1
opencv/lib/libopencv_photo.so.4.5.1: opencv/modules/photo/CMakeFiles/opencv_photo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX shared library ../../lib/libopencv_photo.so"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_photo.dir/link.txt --verbose=$(VERBOSE)
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libopencv_photo.so.4.5.1 ../../lib/libopencv_photo.so.4.5 ../../lib/libopencv_photo.so

opencv/lib/libopencv_photo.so.4.5: opencv/lib/libopencv_photo.so.4.5.1
	@$(CMAKE_COMMAND) -E touch_nocreate opencv/lib/libopencv_photo.so.4.5

opencv/lib/libopencv_photo.so: opencv/lib/libopencv_photo.so.4.5.1
	@$(CMAKE_COMMAND) -E touch_nocreate opencv/lib/libopencv_photo.so

# Rule to build all files generated by this target.
opencv/modules/photo/CMakeFiles/opencv_photo.dir/build: opencv/lib/libopencv_photo.so

.PHONY : opencv/modules/photo/CMakeFiles/opencv_photo.dir/build

opencv/modules/photo/CMakeFiles/opencv_photo.dir/clean:
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo && $(CMAKE_COMMAND) -P CMakeFiles/opencv_photo.dir/cmake_clean.cmake
.PHONY : opencv/modules/photo/CMakeFiles/opencv_photo.dir/clean

opencv/modules/photo/CMakeFiles/opencv_photo.dir/depend: opencv/modules/photo/opencl_kernels_photo.cpp
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/praveen/PycharmProjects/project/camera /home/praveen/PycharmProjects/project/camera/opencv/modules/photo /home/praveen/PycharmProjects/project/camera/cmake-build-debug /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo/CMakeFiles/opencv_photo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencv/modules/photo/CMakeFiles/opencv_photo.dir/depend
