# Copyright 2019 Arthur Sonzogni. All rights reserved.
# Use of this source code is governed by the MIT license that can be found in
# the LICENSE file.

# gccx target is completed whenever the "gccx" command is available.
find_program(gccx-found gccx)
if (NOT gccx-found)
  add_custom_target(gccx COMMAND npm install -g gccx)
else()
  add_custom_target(gccx)
endif()

# Function
#   gccx(<file.cx>)
#
# Description:
#   Add command to produce <file.cpp> from <file.cpx>.
#
# Notes:
#   The gccx file path must be relative to ${CMAKE_CURRENT_SOURCE_DIR}
#
# Example:
#   gccx(main.cpx)
function(gccx source)
  get_filename_component(name ${CMAKE_CURRENT_SOURCE_DIR}/${source} NAME_WE)
  get_filename_component(src_dir  ${CMAKE_CURRENT_SOURCE_DIR}/${source} DIRECTORY)
  get_filename_component(gen_dir  ${CMAKE_CURRENT_BINARY_DIR}/${source} DIRECTORY)

  file(MAKE_DIRECTORY ${gen_dir})

  add_custom_command(
    OUTPUT
      ${gen_dir}/${name}.cpp
    COMMAND
      gccx
    ARGS
      ${src_dir}/${name}.cpx
      -o ${gen_dir}/${name}.cpp
    MAIN_DEPENDENCY
      ${src_dir}/${name}.cpx
    DEPENDS
      gccx
    )
endfunction()
