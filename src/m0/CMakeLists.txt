cmake_minimum_required(VERSION 3.5.0 FATAL_ERROR)

include(${CMAKE_SOURCE_DIR}/cmake/CPM_setup.cmake)

#------------------------------------------------------------------------------
# Target Specifig Build Settings
#------------------------------------------------------------------------------

# target specific
set(EXE_NAME                m0)
set(FLASH_ADDR              0x1B000000)
set(DEBUG_BREAKPOINT_LIMIT  2)
set(DEBUG_WATCHPOINT_LIMIT  1)

set(TARGET_C_FLAGS  "-DLPC43XX_CORE_M0APP -DCORE_M0 -mcpu=cortex-m0")
set(TARGET_L_FLAGS  "")


#------------------------------------------------------------------------------
# Common Settings & CPM Modules
#------------------------------------------------------------------------------

include(${CMAKE_SOURCE_DIR}/cmake/common_settings.cmake)


#------------------------------------------------------------------------------
# Target Specific CPM Modules
#------------------------------------------------------------------------------

CPM_AddModule("43xx_m0_startup"
    GIT_REPOSITORY "https://github.com/JitterCompany/43xx_m0_startup.git"
    GIT_TAG "1.0")

CPM_AddModule("lpc_chip_43xx_m0"
    GIT_REPOSITORY "https://github.com/JitterCompany/lpc_chip_43xx_m0.git"
    GIT_TAG "1.0")

CPM_Finish()


#------------------------------------------------------------------------------
# Build Setup & Targets
#------------------------------------------------------------------------------

file(GLOB SOURCES 
"${CMAKE_SOURCE_DIR}/src/m0/*.c"
)

include(${CMAKE_SOURCE_DIR}/cmake/common_build.cmake)

