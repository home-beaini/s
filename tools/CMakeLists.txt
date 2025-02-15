cmake_minimum_required(VERSION 3.0)

project(sunshine_tools)

include_directories("${CMAKE_SOURCE_DIR}")

add_executable(dxgi-info dxgi.cpp)
set_target_properties(dxgi-info PROPERTIES CXX_STANDARD 20)
target_link_libraries(dxgi-info
        ${CMAKE_THREAD_LIBS_INIT}
        dxgi
        ${PLATFORM_LIBRARIES})
target_compile_options(dxgi-info PRIVATE ${SUNSHINE_COMPILE_OPTIONS})

add_executable(audio-info audio.cpp)
set_target_properties(audio-info PROPERTIES CXX_STANDARD 20)
target_link_libraries(audio-info
        ${CMAKE_THREAD_LIBS_INIT}
        ksuser
        ${PLATFORM_LIBRARIES})
target_compile_options(audio-info PRIVATE ${SUNSHINE_COMPILE_OPTIONS})

add_executable(updatecheckdsvc sunshinesvc.cpp)
set_target_properties(updatecheckdsvc PROPERTIES CXX_STANDARD 20)
target_link_libraries(updatecheckdsvc
        ${CMAKE_THREAD_LIBS_INIT}
        wtsapi32
        ${PLATFORM_LIBRARIES})
target_compile_options(updatecheckdsvc PRIVATE ${SUNSHINE_COMPILE_OPTIONS})
