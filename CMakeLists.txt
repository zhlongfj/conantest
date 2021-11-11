project(conatest LANGUAGES CXX)
cmake_minimum_required(VERSION 2.8)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(conatest main.cpp)
target_link_libraries(conatest ${CONAN_LIBS})