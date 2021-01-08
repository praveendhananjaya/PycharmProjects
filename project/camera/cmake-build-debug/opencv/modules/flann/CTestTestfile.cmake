# CMake generated Testfile for 
# Source directory: /home/praveen/PycharmProjects/project/camera/opencv/modules/flann
# Build directory: /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/flann
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_flann "/home/praveen/PycharmProjects/project/camera/cmake-build-debug/bin/opencv_test_flann" "--gtest_output=xml:opencv_test_flann.xml")
set_tests_properties(opencv_test_flann PROPERTIES  LABELS "Main;opencv_flann;Accuracy" WORKING_DIRECTORY "/home/praveen/PycharmProjects/project/camera/cmake-build-debug/test-reports/accuracy" _BACKTRACE_TRIPLES "/home/praveen/PycharmProjects/project/camera/opencv/cmake/OpenCVUtils.cmake;1677;add_test;/home/praveen/PycharmProjects/project/camera/opencv/cmake/OpenCVModule.cmake;1311;ocv_add_test_from_target;/home/praveen/PycharmProjects/project/camera/opencv/cmake/OpenCVModule.cmake;1075;ocv_add_accuracy_tests;/home/praveen/PycharmProjects/project/camera/opencv/modules/flann/CMakeLists.txt;2;ocv_define_module;/home/praveen/PycharmProjects/project/camera/opencv/modules/flann/CMakeLists.txt;0;")
