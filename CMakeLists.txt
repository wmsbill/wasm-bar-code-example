# This is the version that came packaged with my version of CLion:
cmake_minimum_required(VERSION 3.10)

# I'm giving the project an arbitrary name for demonstration purposes,
# you can name it whatever you want:
project(barcode-reader C)

set(CMAKE_C_STANDARD 99)

# Create a src directory at the root level of your project and add a
# file with whatever name you want (I used the project name for
# simplicity):
add_executable(barcode-reade c/image-processor.c)

target_link_libraries (barcode-reade ${ZBAR_LIBRARIES}zbar)
