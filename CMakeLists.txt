cmake_minimum_required(VERSION 3.15)
project(sparse_matrix_jpmiraval)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)
include_directories(mocker)
include_directories(tester)

add_executable(sparse_matrix_jpmiraval
        main.cpp
        matrix.h
        node.h)
