# CMake generated Testfile for 
# Source directory: /home/praveen/PycharmProjects/project/camera/opencv/modules/ml
# Build directory: /home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/ml
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_ml "/home/praveen/PycharmProjects/project/camera/cmake-build-debug/bin/opencv_test_ml" "--gtest_output=xml:opencv_test_ml.xml")
set_tests_properties(opencv_test_ml PROPERTIES  LABELS "Main;opencv_ml;Accuracy" WORKING_DIRECTORY "/home/praveen/PycharmProjects/project/camera/cmake-build-debug/test-reports/accuracy" _BACKTRACE_TRIPLES "/home/praveen/PycharmProjects/project/camera/opencv/cmake/OpenCVUtils.cmake;1677;add_test;/home/praveen/PycharmProjects/project/camera/opencv/cmake/OpenCVModule.cmake;1311;ocv_add_test_from_target;/home/praveen/PycharmProjects/project/camera/opencv/cmake/OpenCVModule.cmake;1075;ocv_add_accuracy_tests;/home/praveen/PycharmProjects/project/camera/opencv/modules/ml/CMakeLists.txt;2;ocv_define_module;/home/praveen/PycharmProjects/project/camera/opencv/modules/ml/CMakeLists.txt;0;")
