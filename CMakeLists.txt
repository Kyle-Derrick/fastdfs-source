cmake_minimum_required(VERSION 3.12)
cmake_policy(SET CMP0079 NEW)

project(fastdfs-all)

include_directories(${PROJECT_SOURCE_DIR}/lib) # 指定头文件搜索路径

link_directories(${PROJECT_SOURCE_DIR}/lib /usr/lib64) # 指定库搜索路径

add_subdirectory(fastcommon/src)
add_subdirectory(serverframe/src)
add_subdirectory(fastdfs)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin) # 指定可执行文件输出目录
#add_executable(fruit ${src_dirs}) # 指定可执行文件名及源码

#add_library(serverframe SHARED ${SERVERFRAME_SRC})
#add_library(fastcommon SHARED ${FASTCOMMON_SRC})
#target_link_libraries(fastcommon serverframe)
