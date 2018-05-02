# This is the version that came packaged with my version of CLion:
cmake_minimum_required(VERSION 3.10)

# I'm giving the project an arbitrary name for demonstration purposes,
# you can name it whatever you want:
project(barcode-reader C)

#set(CMAKE_C_STANDARD 99)
#set(triple wasm32-unknown-unknown-wasm)
#set(CMAKE_C_COMPILER clang)
#set(CMAKE_C_COMPILER_TARGET ${triple})

include_directories ("${PROJECT_SOURCE_DIR}/include")
#include_directories ("${PROJECT_SOURCE_DIR}/include")
#add_subdirectory (zbar)

# Create a src directory at the root level of your project and add a
# file with whatever name you want (I used the project name for
# simplicity):

#add_executable(barcode-reader c/image-processor.c)

target_link_libraries(barcode-reader ${PROJECT_SOURCE_DIR}/zbar/zbar_libzbar_la-image.o)
target_link_libraries(barcode-reader ${PROJECT_SOURCE_DIR}/zbar/zbar_libzbar_la-image.o)
target_link_libraries(barcode-reader ${PROJECT_SOURCE_DIR}/zbar/zbar_libzbar_la-refcnt.o)
target_link_libraries(barcode-reader ${PROJECT_SOURCE_DIR}/zbar/zbar_libzbar_la-symbol.o)
#target_link_libraries(barcode-reader ${PROJECT_SOURCE_DIR}/zbar/.libs/libzbar.a)
