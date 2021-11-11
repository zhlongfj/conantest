project(conatest LANGUAGES CXX)
cmake_minimum_required(VERSION 3.19)

add_definitions("-std=c++17")
include(${PROJECT_SOURCE_DIR}/build/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(conatest main.cpp)
target_link_libraries(conatest ${CONAN_LIBS})