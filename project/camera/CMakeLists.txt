cmake_minimum_required(VERSION 3.17)
project(camera)

set(CMAKE_CXX_STANDARD 14)

set(OpenCV_DIR /home/praveen/Documents/5sem/emb-pro/software/opencv)

find_package( OpenCV REQUIRED )

include_directories( ${OpenCV_INCLUDE_DIRS} )

add_executable(camera main.cpp)

target_link_libraries(camera ${OpenCV_LIBS} )

