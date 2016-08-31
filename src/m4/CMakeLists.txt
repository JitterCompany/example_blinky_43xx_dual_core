cmake_minimum_required(VERSION 3.5.0 FATAL_ERROR)

include(${CMAKE_SOURCE_DIR}/cmake/CPM_setup.cmake)

#------------------------------------------------------------------------------
# Target Specifig Build Settings
#------------------------------------------------------------------------------

# target specific
set(EXE_NAME            m4)
set(FLASH_ADDR          0x1A000000)

set(TARGET_C_FLAGS      "-DCORE_M4 -mcpu=cortex-m4")
set(TARGET_L_FLAGS      "")


#------------------------------------------------------------------------------
# Common Settings & CPM Modules
#------------------------------------------------------------------------------

include(${CMAKE_SOURCE_DIR}/cmake/common_settings.cmake)


#------------------------------------------------------------------------------
# Target Specific CPM Modules
#------------------------------------------------------------------------------

CPM_AddModule("43xx_m4_startup"
    GIT_REPOSITORY "https://github.com/JitterCompany/43xx_m4_startup.git"
    GIT_TAG "1.0")

CPM_AddModule("lpc_chip_43xx_m4"
    GIT_REPOSITORY "https://github.com/JitterCompany/lpc_chip_43xx_m4.git"
    GIT_TAG "1.0")

CPM_Finish()


#------------------------------------------------------------------------------
# Build Setup & Targets
#------------------------------------------------------------------------------

file(GLOB SOURCES 
"${CMAKE_SOURCE_DIR}/src/m4/*.c"
)

include(${CMAKE_SOURCE_DIR}/cmake/common_build.cmake)

