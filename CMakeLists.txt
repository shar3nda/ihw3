cmake_minimum_required(VERSION 3.23)
project(ihw3 C)

set(CMAKE_C_STANDARD 11)

add_executable(ihw3 main.c Cth.c Cth.h)
target_link_libraries(ihw3 m)