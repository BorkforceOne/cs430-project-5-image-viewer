cmake_minimum_required(VERSION 3.6)
project(cs430_project_5_image_viewer)

set(OUTPUT_NAME cs430_project_5_image_viewer)

IF(APPLE)
    #SET(GUI_TYPE MACOSX_BUNDLE)
    FIND_LIBRARY(OPENGL_LIBRARY OpenGL)
    FIND_LIBRARY(IOKIT_LIBRARY IOKit )
    FIND_LIBRARY(COREVIDEO_LIBRARY CoreVideo )
    FIND_LIBRARY(COCOA_LIBRARY Cocoa)

    MARK_AS_ADVANCED (OPENGL_LIBRARY
            IOKIT_LIBRARY
            COREVIDEO_LIBRARY
            COCOA_LIBRARY)
    SET(EXTRA_LIBS ${OPENGL_LIBRARY} ${IOKIT_LIBRARY} ${COREVIDEO_LIBRARY} ${COCOA_LIBRARY})
ENDIF (APPLE)

include_directories(include)
link_directories(lib)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES src/main.c)

add_executable(${OUTPUT_NAME} ${SOURCE_FILES})

target_link_libraries(${OUTPUT_NAME} ${EXTRA_LIBS} glfw3)