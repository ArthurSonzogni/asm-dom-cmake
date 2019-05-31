# Copyright 2019 Arthur Sonzogni. All rights reserved.
# Use of this source code is governed by the MIT license that can be found in
# the LICENSE file.

cmake_minimum_required (VERSION 3.11)
project(asm-dom-cmake
  LANGUAGES CXX
  VERSION 0.1.0
)

include(cmake/gccx.cmake)
include(cmake/asm-dom.cmake)

gccx(src/main.cpx)

add_executable(main src/main.cpp)

set_property(TARGET main PROPERTY CXX_STANDARD 11)
target_link_libraries(main PRIVATE asm-dom)

# Copy the index.html file into the build directory
configure_file(
  ${CMAKE_CURRENT_SOURCE_DIR}/src/index.html
  ${CMAKE_CURRENT_BINARY_DIR}/index.html
)

# Copy the style.ss file into the build directory
configure_file(
  ${CMAKE_CURRENT_SOURCE_DIR}/src/style.css
  ${CMAKE_CURRENT_BINARY_DIR}/style.css
)
