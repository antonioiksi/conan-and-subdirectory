cmake_minimum_required(VERSION 3.7)

project(conan_and_subdirectory)

if (EXISTS ${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
    include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
    conan_basic_setup()
else ()
    message(WARNING "The file conanbuildinfo.cmake doesn't exist, you have to run conan install first")
endif ()

add_subdirectory(ext/yaml-cpp)

add_executable(crow src/main.cpp)

target_link_libraries(crow ${CONAN_LIBS})
target_link_libraries(crow yaml-cpp) 

