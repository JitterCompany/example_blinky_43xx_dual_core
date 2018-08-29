cmake_minimum_required(VERSION 3.5.0 FATAL_ERROR)

# Configure the toolchain, this needs to be done first, before cmake decides to use native compilers
set(CMAKE_TOOLCHAIN_FILE    ${CMAKE_SOURCE_DIR}/cmake/toolchain-gcc-arm-embedded.cmake)

# Set the project name, this will also determine the names of the binaries/executables
project(blinky_43xx_dual_core)

#-----------------------------------------------------------------------
# Declare subprojects for each core. Each project should be in its own
# folder with its own CMakeList.txt to declare the specific dependencies
# and build options. Each subproject will produces its own binaries.
#
# Shared code can be placed in the src directory. All subprojects will
# include these files during the build process.
#-----------------------------------------------------------------------
add_subdirectory(src/m4)
add_subdirectory(src/m0)
