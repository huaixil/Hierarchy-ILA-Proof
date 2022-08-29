cmake_minimum_required(VERSION 3.8)

# ---------------------------------------------------------------------------- #
# PROJECT
# name version language
# ---------------------------------------------------------------------------- #
project(PROC8051 VERSION 1.0 LANGUAGES CXX)

# ---------------------------------------------------------------------------- #
# VARIABLE
# alias and configurations
# ---------------------------------------------------------------------------- #
set(PROC8051_TARGET ${PROJECT_NAME})

set(CMAKE_CXX_COMPILER "g++-9")
set(CMAKE_PREFIX_PATH /home/huaixil/local)
set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

# ---------------------------------------------------------------------------- #
# External dependencies
# ---------------------------------------------------------------------------- #
##
## ilang
##
find_package(ilang REQUIRED)

##
## Python (required if CMake version < 3.12)
##
if(${CMAKE_VERSION} VERSION_LESS 3.12)

  if(NOT TARGET Python::Python)
    add_library(Python::Python IMPORTED INTERFACE)

    set_property(TARGET Python::Python 
      PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${PYTHON_INCLUDE_DIRECTORIES}
    )

    set_property(TARGET Python::Python
      PROPERTY INTERFACE_LINK_LIBRARIES ${PYTHON_LIBRARIES}
    )
    
  endif()

endif()


# ---------------------------------------------------------------------------- #
# TARGET
# library
# ---------------------------------------------------------------------------- #
add_library(${PROC8051_TARGET}
  src/datapath.cc
  src/decoder.cc
  src/irom_xram_integration_port.cc
  src/pc_port.cc
  src/util.cc
)

target_include_directories(${PROC8051_TARGET} PRIVATE include)

target_link_libraries(${PROC8051_TARGET} PUBLIC ilang::ilang)


# ---------------------------------------------------------------------------- #
# TARGET
# executable
# ---------------------------------------------------------------------------- #
add_executable(${PROC8051_TARGET}Exe
  app/main.cc
)

target_include_directories(${PROC8051_TARGET}Exe PRIVATE include)

target_link_libraries(${PROC8051_TARGET}Exe ${PROC8051_TARGET})

