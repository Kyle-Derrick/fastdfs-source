cmake_minimum_required(VERSION 3.12)
#cmake_policy(SET CMP0079 NEW)

project(fastdfs-all)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
set(CMAKE_C_FLAGS "-Wall -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -g -O1 -DDEBUG_FLAG -fPIC -DOS_LINUX")

add_subdirectory(fastcommon/src)
add_subdirectory(serverframe/src)
source_group("fastcommon" ${fastcommon_c} ${fastcommon_h})
source_group("serverframe" ${serverframe_c} ${serverframe_h})

add_subdirectory(fastdfs)

include_directories(
        fastdfs/common
        fastdfs/tracker
        fastdfs/storage
        fastdfs/storage/trunk_mgr
        fastdfs/storage/fdht_client
        fastdfs/client
        /usr/lib
        /usr/lib64
)

set(common_dependencies ${fastcommon_h} ${serverframe_h} ${fastcommon_c} ${serverframe_c})

add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
        ${common_dependencies} ${tracker_c})
add_executable(fdfs_storaged fastdfs/storage/fdfs_storaged.c
        ${common_dependencies} ${storage_c})


target_link_libraries(fdfs_trackerd pthread m dl)
target_link_libraries(fdfs_storaged pthread m dl)

#add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
#        ${common_dependencies} ${tracker_c})
#add_executable(fdfs_monitor fastdfs/client/fdfs_monitor.c
#        ${common_dependencies} ${storage_c})
#add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
#        ${common_dependencies} ${tracker_c})
#add_executable(fdfs_test fastdfs/client/fdfs_test.c
#        ${common_dependencies} ${storage_c})
#add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
#        ${common_dependencies} ${tracker_c})
#add_executable(fdfs_test1 fastdfs/client/fdfs_test1.c
#        ${common_dependencies} ${storage_c})
#add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
#        ${common_dependencies} ${tracker_c})
#add_executable(fdfs_crc32 fastdfs/client/fdfs_crc32.c
#        ${common_dependencies} ${storage_c})
#add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
#        ${common_dependencies} ${tracker_c})
#add_executable(fdfs_upload_file fastdfs/client/fdfs_upload_file.c
#        ${common_dependencies} ${storage_c})
#add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
#        ${common_dependencies} ${tracker_c})
#add_executable(fdfs_download_file fastdfs/client/fdfs_download_file.c
#        ${common_dependencies} ${storage_c})
#add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
#        ${common_dependencies} ${tracker_c})
#add_executable(fdfs_delete_file fastdfs/client/fdfs_delete_file.c
#        ${common_dependencies} ${storage_c})
#add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
#        ${common_dependencies} ${tracker_c})
#add_executable(fdfs_file_info fastdfs/client/fdfs_file_info.c
#        ${common_dependencies} ${storage_c})
#add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
#        ${common_dependencies} ${tracker_c})
#add_executable(fdfs_appender_test fastdfs/client/fdfs_appender_test.c
#        ${common_dependencies} ${storage_c})
#add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
#        ${common_dependencies} ${tracker_c})
#add_executable(fdfs_appender_test1 fastdfs/client/fdfs_appender_test1.c
#        ${common_dependencies} ${storage_c})
#add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
#        ${common_dependencies} ${tracker_c})
#add_executable(fdfs_append_file fastdfs/client/fdfs_append_file.c
#        ${common_dependencies} ${storage_c})
#add_executable(fdfs_trackerd fastdfs/tracker/fdfs_trackerd.c
#        ${common_dependencies} ${tracker_c})
#add_executable(fdfs_upload_appender fastdfs/client/fdfs_upload_appender.c
#        ${common_dependencies} ${storage_c})
#add_executable(fdfs_regenerate_filename fastdfs/client/fdfs_regenerate_filename.c
#        ${common_dependencies} ${storage_c})
#
#target_link_libraries(fdfs_trackerd pthread m dl)
#target_link_libraries(fdfs_monitor pthread m dl)
#target_link_libraries(fdfs_trackerd pthread m dl)
#target_link_libraries(fdfs_test pthread m dl)
#target_link_libraries(fdfs_trackerd pthread m dl)
#target_link_libraries(fdfs_test1 pthread m dl)
#target_link_libraries(fdfs_trackerd pthread m dl)
#target_link_libraries(fdfs_crc32 pthread m dl)
#target_link_libraries(fdfs_trackerd pthread m dl)
#target_link_libraries(fdfs_upload_file pthread m dl)
#target_link_libraries(fdfs_trackerd pthread m dl)
#target_link_libraries(fdfs_download_file pthread m dl)
#target_link_libraries(fdfs_trackerd pthread m dl)
#target_link_libraries(fdfs_delete_file pthread m dl)
#target_link_libraries(fdfs_trackerd pthread m dl)
#target_link_libraries(fdfs_file_info pthread m dl)
#target_link_libraries(fdfs_trackerd pthread m dl)
#target_link_libraries(fdfs_appender_test pthread m dl)
#target_link_libraries(fdfs_trackerd pthread m dl)
#target_link_libraries(fdfs_appender_test1 pthread m dl)
#target_link_libraries(fdfs_trackerd pthread m dl)
#target_link_libraries(fdfs_append_file pthread m dl)
#target_link_libraries(fdfs_trackerd pthread m dl)
#target_link_libraries(fdfs_upload_appender pthread m dl)
#target_link_libraries(fdfs_regenerate_filename pthread m dl)