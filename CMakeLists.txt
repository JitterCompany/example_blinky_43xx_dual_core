cmake_minimum_required(VERSION 3.5.0 FATAL_ERROR)

set(CMAKE_TOOLCHAIN_FILE    ${CMAKE_SOURCE_DIR}/cmake/toolchain-gcc-arm-embedded.cmake)

project(blinky_43xx_dual_core)

add_subdirectory(src/m4)
add_subdirectory(src/m0)

#add_subdirectory(tests)
