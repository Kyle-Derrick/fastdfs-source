set(fdfs_tracker_dir ${PROJECT_SOURCE_DIR}/fastdfs/tracker)
# tracker
search_makefile(${fdfs_tracker_dir}/Makefile.in tracker "SHARED_OBJS")

# tracker
add_executable(fdfs_trackerd
        ${fdfs_tracker_dir}/fdfs_trackerd.c
        ${tracker_sources}
#        额外添加tracker_dump.c，参考fastdfs目录下make.sh中的TRACKER_EXTRA_OBJS变量
        ${fdfs_tracker_dir}/tracker_dump.c
)
target_link_libraries(fdfs_trackerd fastcommon serverframe m dl pthread)
target_include_directories(fdfs_trackerd PRIVATE ${header_dir}
        ${PROJECT_SOURCE_DIR}/fastdfs/common
        ${fdfs_tracker_dir}
)