cmake_minimum_required(VERSION 3.13)

include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

project(pico-c C CXX ASM)
set(CMAKE_C STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

set(PICO_BOARD pico_w)

pico_sdk_init()

add_executable(pico-c
    pico_sdk.c
)

add_library(libzig STATIC IMPORTED)
set_property(TARGET libzig PROPERTY IMPORTED_LOCATION ../../main-zig/zig-out/lib/libzig.a)

target_link_libraries(pico-c
    libzig
    pico_stdlib
    pico_cyw43_arch_none)

pico_enable_stdio_usb(pico-c 1)
pico_enable_stdio_uart(pico-c 0)
pico_add_extra_outputs(pico-c )

target_include_directories(pico-c PRIVATE ${CMAKE_CURRENT_LIST_DIR})
