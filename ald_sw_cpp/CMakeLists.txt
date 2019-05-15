project(ald_sw_cpp)


add_executable(ald_sw_cpp main.cpp)

cmake_minimum_required(VERSION 3.13)


set(CMAKE_CXX_STANDARD 14)


# == OpenCV (3.4.5.0) / (4.0.1) configuration ==
# Where to find CMake modules and OpenCV
#set(OpenCV_DIR "//home/maverick/opt/opencv_4_0_1/build/")  #check path
set(OpenCV_DIR "/home/maverick/opt/opencv_4_0_1/build")
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")

find_package(OpenCV REQUIRED)
message(STATUS "OpenCV library status:")
message(STATUS "    version: ${OpenCV_VERSION}")
message(STATUS "    libraries: ${OpenCV_LIBS}")
message(STATUS "    include path: ${OpenCV_INCLUDE_DIRS}")

include_directories(${OpenCV_INCLUDE_DIRS})

# Add libs you need
set(OpenCV_LIBS opencv_core opencv_imgproc opencv_highgui opencv_imgcodecs)

# Linking
target_link_libraries(ald_sw_cpp ${OpenCV_LIBS})
