cmake_minimum_required(VERSION 3.8)

# ---------------------------------------------------------------------------- #
# PROJECT
# name version language
# ---------------------------------------------------------------------------- #
project(SECURE_SOC VERSION 1.0 LANGUAGES CXX)

# ---------------------------------------------------------------------------- #
# VARIABLE
# alias and configurations
# ---------------------------------------------------------------------------- #
set(SECURE_SOC_TARGET ${PROJECT_NAME})

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
add_library(${SECURE_SOC_TARGET}
  src/aes_util.cc
  src/helper.cc
  src/lib.cc
  src/aes_ila.cc
  src/soc_inputs.cc
  src/soc_states.cc
  src/soc_instrs.cc
  src/soc_top.cc
  src/soc_util.cc
)

target_include_directories(${SECURE_SOC_TARGET} PRIVATE include)

target_link_libraries(${SECURE_SOC_TARGET} PUBLIC ilang::ilang)


# ---------------------------------------------------------------------------- #
# TARGET
# executable
# ---------------------------------------------------------------------------- #
add_executable(${SECURE_SOC_TARGET}Exe
  app/main.cc
)

target_include_directories(${SECURE_SOC_TARGET}Exe PRIVATE include)

target_link_libraries(${SECURE_SOC_TARGET}Exe ${SECURE_SOC_TARGET})

