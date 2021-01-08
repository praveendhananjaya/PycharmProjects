# CMake generated Testfile for 
# Source directory: /home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/core
# Build directory: /home/praveen/Documents/5sem/emb-pro/software/opencv/build/modules/core
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_core "/home/praveen/Documents/5sem/emb-pro/software/opencv/build/bin/opencv_test_core" "--gtest_output=xml:opencv_test_core.xml")
set_tests_properties(opencv_test_core PROPERTIES  LABELS "Main;opencv_core;Accuracy" WORKING_DIRECTORY "/home/praveen/Documents/5sem/emb-pro/software/opencv/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/cmake/OpenCVUtils.cmake;1677;add_test;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/cmake/OpenCVModule.cmake;1311;ocv_add_test_from_target;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/core/CMakeLists.txt;128;ocv_add_accuracy_tests;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/core/CMakeLists.txt;0;")
add_test(opencv_perf_core "/home/praveen/Documents/5sem/emb-pro/software/opencv/build/bin/opencv_perf_core" "--gtest_output=xml:opencv_perf_core.xml")
set_tests_properties(opencv_perf_core PROPERTIES  LABELS "Main;opencv_core;Performance" WORKING_DIRECTORY "/home/praveen/Documents/5sem/emb-pro/software/opencv/build/test-reports/performance" _BACKTRACE_TRIPLES "/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/cmake/OpenCVUtils.cmake;1677;add_test;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/cmake/OpenCVModule.cmake;1213;ocv_add_test_from_target;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/core/CMakeLists.txt;129;ocv_add_perf_tests;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/core/CMakeLists.txt;0;")
add_test(opencv_sanity_core "/home/praveen/Documents/5sem/emb-pro/software/opencv/build/bin/opencv_perf_core" "--gtest_output=xml:opencv_perf_core.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_core PROPERTIES  LABELS "Main;opencv_core;Sanity" WORKING_DIRECTORY "/home/praveen/Documents/5sem/emb-pro/software/opencv/build/test-reports/sanity" _BACKTRACE_TRIPLES "/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/cmake/OpenCVUtils.cmake;1677;add_test;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/cmake/OpenCVModule.cmake;1214;ocv_add_test_from_target;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/core/CMakeLists.txt;129;ocv_add_perf_tests;/home/praveen/Documents/5sem/emb-pro/software/opencv/opencv-master/modules/core/CMakeLists.txt;0;")