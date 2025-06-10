cmake_minimum_required(VERSION 3.20)
project(MyProject CXX)
set(CMAKE_CXX_STANDARD 20)

#if find external lib
#find_package(Notcurses++ CONFIG REQUIRED)

#add "core" lib consist of files
add_library(core
    src/class1.cpp
    src/class2.cpp
)

#if use external lib to build core lib
#target_link_libraries(core PUBLIC notcurses++)

#include dir use "src/"
target_include_directories(core PUBLIC src)
#if use dir "include/"
#target_include_directories(core PUBLIC include)

#executable compile src
add_executable(MyProject src/main.cpp)

#link "core" lib
target_link_libraries(MyProject PRIVATE core)

#-------------------------------------------------------------

include(FetchContent)
FetchContent_Declare(
    catch2
    GIT_REPOSITORY https://github.com/catchorg/Catch2.git
    GIT_TAG v3.5.4
)
FetchContent_MakeAvailable(catch2)

# ------------------------------------------
file(GLOB TEST_SOURCES CONFIGURE_DEPENDS tests/*.cpp)
add_executable(tests ${TEST_SOURCES})

target_link_libraries(tests
    PRIVATE
        core
        Catch2::Catch2WithMain
)

# ------------------------------------------
include(CTest)
include(Catch)
catch_discover_tests(tests)
