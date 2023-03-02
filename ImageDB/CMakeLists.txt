#--------------------------------------------------------
# CMake for generating the main executable
#
# @author: Wild Boar
#
# Date Created: 2023-03-02
#--------------------------------------------------------

# Setup the includes
include_directories("../")

# Create the executable
add_executable(ImageDB
    Engine.cpp
    Source.cpp
)

# Add link libraries                               
target_link_libraries(ImageDB ImageDBLib  NVLib ${OpenCV_LIBS})

# Copy Resources across
add_custom_target(resource_copy ALL
	COMMAND cmake -E copy_directory ${CMAKE_SOURCE_DIR}/Resources ${CMAKE_BINARY_DIR}/ImageDB 
    DEPENDS ${MY_TARGET}
)
