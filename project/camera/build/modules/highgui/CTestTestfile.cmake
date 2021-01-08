# CMake generated Testfile for 
# Source directory: /home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/highgui
# Build directory: /home/praveen/Documents/5sem/emb-pro/software/opencv/build/modules/highgui
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_highgui "/home/praveen/Documents/5sem/emb-pro/software/opencv/build/bin/opencv_test_highgui" "--gtest_output=xml:opencv_test_highgui.xml")
set_tests_properties(opencv_test_highgui PROPERTIES  LABELS "Main;opencv_highgui;Accuracy" WORKING_DIRECTORY "/home/praveen/Documents/5sem/emb-pro/software/opencv/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/cmake/OpenCVUtils.cmake;1677;add_test;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/cmake/OpenCVModule.cmake;1311;ocv_add_test_from_target;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/highgui/CMakeLists.txt;165;ocv_add_accuracy_tests;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/highgui/CMakeLists.txt;0;")
