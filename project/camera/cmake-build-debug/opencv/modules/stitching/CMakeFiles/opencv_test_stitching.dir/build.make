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
include opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/depend.make

# Include the progress variables for this target.
include opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/progress.make

# Include the compile flags for this target's objects.
include opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o: ../opencv/modules/stitching/test/ocl/test_warpers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/ocl/test_warpers.cpp

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/ocl/test_warpers.cpp > CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/ocl/test_warpers.cpp -o CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o: ../opencv/modules/stitching/test/test_blenders.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_blenders.cpp

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_blenders.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_blenders.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o: ../opencv/modules/stitching/test/test_blenders.cuda.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_blenders.cuda.cpp

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_blenders.cuda.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_blenders.cuda.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o: ../opencv/modules/stitching/test/test_exposure_compensate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_exposure_compensate.cpp

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_exposure_compensate.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_exposure_compensate.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o: ../opencv/modules/stitching/test/test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_main.cpp

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_main.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_main.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o: ../opencv/modules/stitching/test/test_matchers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_matchers.cpp

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_matchers.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_matchers.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o: ../opencv/modules/stitching/test/test_reprojection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_reprojection.cpp

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_reprojection.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_reprojection.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.s

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o: ../opencv/modules/stitching/test/test_wave_correction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o -c /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_wave_correction.cpp

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.i"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_wave_correction.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.i

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.s"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching/test/test_wave_correction.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.s

# Object files for target opencv_test_stitching
opencv_test_stitching_OBJECTS = \
"CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o"

# External object files for target opencv_test_stitching
opencv_test_stitching_EXTERNAL_OBJECTS =

bin/opencv_test_stitching: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o
bin/opencv_test_stitching: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o
bin/opencv_test_stitching: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o
bin/opencv_test_stitching: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o
bin/opencv_test_stitching: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o
bin/opencv_test_stitching: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o
bin/opencv_test_stitching: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o
bin/opencv_test_stitching: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o
bin/opencv_test_stitching: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/build.make
bin/opencv_test_stitching: opencv/lib/libopencv_ts.a
bin/opencv_test_stitching: opencv/lib/libopencv_stitching.so.4.5.1
bin/opencv_test_stitching: opencv/lib/libopencv_highgui.so.4.5.1
bin/opencv_test_stitching: opencv/lib/libopencv_calib3d.so.4.5.1
bin/opencv_test_stitching: opencv/3rdparty/lib/libippiw.a
bin/opencv_test_stitching: opencv/3rdparty/ippicv/ippicv_lnx/icv/lib/intel64/libippicv.a
bin/opencv_test_stitching: opencv/lib/libopencv_videoio.so.4.5.1
bin/opencv_test_stitching: opencv/lib/libopencv_imgcodecs.so.4.5.1
bin/opencv_test_stitching: opencv/lib/libopencv_features2d.so.4.5.1
bin/opencv_test_stitching: opencv/lib/libopencv_flann.so.4.5.1
bin/opencv_test_stitching: opencv/lib/libopencv_imgproc.so.4.5.1
bin/opencv_test_stitching: opencv/lib/libopencv_core.so.4.5.1
bin/opencv_test_stitching: opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/praveen/PycharmProjects/project/camera/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable ../../../bin/opencv_test_stitching"
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_stitching.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/build: bin/opencv_test_stitching

.PHONY : opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/build

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/clean:
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_stitching.dir/cmake_clean.cmake
.PHONY : opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/clean

opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/depend:
	cd /home/praveen/PycharmProjects/project/camera/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/praveen/PycharmProjects/project/camera /home/praveen/PycharmProjects/project/camera/opencv/modules/stitching /home/praveen/PycharmProjects/project/camera/cmake-build-debug /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/depend
