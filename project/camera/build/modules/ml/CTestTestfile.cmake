# CMake generated Testfile for 
# Source directory: /home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/ml
# Build directory: /home/praveen/Documents/5sem/emb-pro/software/opencv/build/modules/ml
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_ml "/home/praveen/Documents/5sem/emb-pro/software/opencv/build/bin/opencv_test_ml" "--gtest_output=xml:opencv_test_ml.xml")
set_tests_properties(opencv_test_ml PROPERTIES  LABELS "Main;opencv_ml;Accuracy" WORKING_DIRECTORY "/home/praveen/Documents/5sem/emb-pro/software/opencv/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/cmake/OpenCVUtils.cmake;1677;add_test;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/cmake/OpenCVModule.cmake;1311;ocv_add_test_from_target;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/cmake/OpenCVModule.cmake;1075;ocv_add_accuracy_tests;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/ml/CMakeLists.txt;2;ocv_define_module;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/ml/CMakeLists.txt;0;")