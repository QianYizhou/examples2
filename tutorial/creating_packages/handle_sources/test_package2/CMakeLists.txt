cmake_minimum_required(VERSION 3.15)
project(PackageTest2 CXX)

find_package(hello CONFIG REQUIRED)

add_executable(example2 src/example.cpp)
target_link_libraries(example2 hello::hello)
