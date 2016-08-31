#------------------------------------------------------------------------------
# Common Config
#------------------------------------------------------------------------------

set(FLASH_CFG           lpc4337_swd)

set(CMAKE_SYSTEM_NAME   Generic)

set(CMAKE_C_COMPILER    arm-none-eabi-gcc)
set(CMAKE_OBJCOPY       arm-none-eabi-objcopy)
set(CMAKE_GDB           arm-none-eabi-gdb)

# optimize level
set(OPT 0)

# system libraries to link, separated by ';'
set(SYSTEM_LIBRARIES "gcc;c;m")

# compile flags
set(C_FLAGS_WARN "-Wall -Wextra -Wno-unused-parameter                   \
    -Wshadow -Wpointer-arith -Winit-self -Wstrict-overflow=5")

set(C_FLAGS "${C_FLAGS_WARN} -O${OPT} -g3 -c -fmessage-length=80        \
    -fno-builtin -ffunction-sections -fdata-sections -std=gnu99 -mthumb \
    -fdiagnostics-color=auto")

# linker flags
set(L_FLAGS "${TARGET_L_FLAGS} -nostdlib -specs=nano.specs -mthumb \
-ffunction-sections -fdata-sections")

add_definitions("${TARGET_C_FLAGS} ${C_FLAGS} ${C_FLAGS_WARN}")

#------------------------------------------------------------------------------
# Common CPM Modules
#------------------------------------------------------------------------------

#CPM_AddModule("my_plain_c_library"
#GIT_REPOSITORY "https://github.com/..."
#GIT_TAG "1.0")

