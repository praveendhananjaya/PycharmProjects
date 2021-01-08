# Install script for directory: /home/praveen/PycharmProjects/project/camera/opencv/modules

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlicensesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/opencv4" TYPE FILE RENAME "ade-LICENSE" FILES "/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/3rdparty/ade/ade-0.1.1f/LICENSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/calib3d/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/core/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/dnn/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/features2d/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/flann/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/gapi/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/highgui/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/imgcodecs/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/imgproc/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/java/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/js/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/ml/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/objc/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/objdetect/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/photo/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/python/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/stitching/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/ts/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/video/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/videoio/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/.firstpass/world/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/core/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/flann/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/imgproc/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/ml/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/photo/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/python_tests/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/dnn/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/features2d/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/imgcodecs/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/videoio/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/calib3d/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/highgui/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/objdetect/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/stitching/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/ts/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/video/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/gapi/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/java_bindings_generator/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/js_bindings_generator/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/objc_bindings_generator/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/python_bindings_generator/cmake_install.cmake")
  include("/home/praveen/PycharmProjects/project/camera/cmake-build-debug/opencv/modules/python3/cmake_install.cmake")

endif()

