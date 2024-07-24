cmake_minimum_required(VERSION 3.12)

project(fastdfs-all LANGUAGES C)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
set(CMAKE_C_FLAGS "-Wall -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -g -O1 -DDEBUG_FLAG -fPIC -DOS_LINUX")
set(CMAKE_C_STANDARD 11)

set(header_dir ${PROJECT_BINARY_DIR}/include CACHE STRING "global header dir")
file(MAKE_DIRECTORY ${header_dir})
message("header dir: ${header_dir}")

set(lib_dir ${PROJECT_BINARY_DIR}/lib CACHE STRING "global lib dir")
file(MAKE_DIRECTORY ${lib_dir})
message("lib dir: ${lib_dir}")

include(cmake/tool_functions.cmake)
include(cmake/fastcommon_init.cmake)
include(cmake/serverframe_init.cmake)
include(cmake/fdfs_trackerd_init.cmake)
include(cmake/fdfs_storaged_init.cmake)