cmake_minimum_required(VERSION 3.7 FATAL_ERROR)
project(check_lib VERSION 1.0.1 DESCRIPTION "check_lib using Nuspell" LANGUAGES CXX)

find_package(Nuspell)

ADD_LIBRARY(check_lib SHARED checker.cpp checker.def)

target_link_libraries(check_lib Nuspell::nuspell)
set_target_properties(check_lib PROPERTIES
        PUBLIC_HEADER checker.h
        )
