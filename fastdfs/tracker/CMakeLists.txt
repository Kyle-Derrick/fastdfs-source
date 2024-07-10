aux_source_directory(./ TRACKER_SRC)

include_directories(../common)
link_directories(pthread)
target_link_libraries(fastcommon serverframe)
add_executable(fdfs_trackerd ${TRACKER_SRC})