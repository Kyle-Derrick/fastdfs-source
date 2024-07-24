set(fdfs_dir ${PROJECT_SOURCE_DIR}/fastdfs)
search_makefile(${fdfs_dir}/storage/Makefile.in storage "SHARED_OBJS")

# storage
add_executable(fdfs_storaged
        ${fdfs_dir}/storage/fdfs_storaged.c
        ${storage_sources}
#        额外添加storage_dump.c
        ${fdfs_dir}/storage/storage_dump.c
)
target_link_libraries(fdfs_storaged fastcommon serverframe m dl pthread)
target_include_directories(fdfs_storaged PRIVATE
        ${header_dir}
        ${fdfs_dir}/common
        ${fdfs_dir}/client
        ${fdfs_dir}/tracker
        ${fdfs_dir}/storage
        ${fdfs_dir}/storage/fdht_client
        ${fdfs_dir}/storage/trunk_mgr
)