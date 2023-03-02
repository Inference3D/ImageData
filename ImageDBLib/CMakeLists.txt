#--------------------------------------------------------
# CMake for generating the ImageDBLib
#
# @author: Wild Boar
#
# Date Created: 2023-03-02
#--------------------------------------------------------

# Setup includes directories
include_directories("../" "${LIBRARY_BASE}/NVLib")

# Create Library
add_library(ImageDBLib STATIC
    ArgUtils.cpp
)
