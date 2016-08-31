cmake_minimum_required(VERSION 3.5.0 FATAL_ERROR)

project(blinky_43xx_dual_core)

set(FLASH_FILE          ${PROJECT_BINARY_DIR}/flash.cfg)

add_subdirectory(src/m4)
add_subdirectory(src/m0)

add_custom_target(bin ALL
    DEPENDS m4.bin
    DEPENDS m0.bin
    )

add_dependencies(m4.bin prepare)
add_dependencies(m0.bin prepare)

add_custom_target(prepare

    # empty flash file
    COMMAND echo "Prepare empty flash file"
    COMMAND echo -n > "${FLASH_FILE}"
    )

#------------------------------------------------------------------------------
# Non-Source Dependencies
#------------------------------------------------------------------------------

include(${CMAKE_SOURCE_DIR}/cmake/CPM_setup.cmake)

CPM_AddModule("openocd_tools"
    GIT_REPOSITORY "https://github.com/JitterCompany/openocd_tools.git"
    GIT_TAG "1.0.2")

CPM_Finish()
