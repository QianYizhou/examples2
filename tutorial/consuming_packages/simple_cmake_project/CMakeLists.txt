cmake_minimum_required(VERSION 3.15)
project(compressor C)

find_package(ZLIB REQUIRED)

# Want to use shared libraries
# set(BUILD_SHARED_LIBS ON CACHE BOOL "Build shared libraries" FORCE)

# Want to use static libraries
# set(BUILD_SHARED_LIBS OFF CACHE BOOL "Build shared libraries" FORCE)

add_executable(${PROJECT_NAME} src/main.c)
target_link_libraries(${PROJECT_NAME} ZLIB::ZLIB)
