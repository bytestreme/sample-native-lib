cmake_minimum_required(VERSION 3.7 FATAL_ERROR)

project(check_lib VERSION 1.0.1 DESCRIPTION "parse_lib" LANGUAGES CXX)
add_definitions("-std=c++17 -v")
find_package(Nuspell)

ADD_LIBRARY(parse_lib SHARED parser.cpp parser.def)

#here set 'libclang_path' to your libclang directory
set(libclang_path /usr/lib/llvm-9/lib/libclang-9.so.1)

TARGET_LINK_LIBRARIES(parse_lib ${libclang_path} Nuspell::nuspell)

set_target_properties(parse_lib PROPERTIES
        PUBLIC_HEADER parser.h
        )

TARGET_LINK_LIBRARIES(parse_lib ${libclang_path} Nuspell::nuspell)


