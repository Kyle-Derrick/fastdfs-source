aux_source_directory(./ STORAGE_SRC)

include_directories(trunk_mgr ../common ../tracker ../client fdht_client)
link_directories(pthread)
target_link_libraries(fastcommon serverframe)
add_executable(fdfs_storaged ${STORAGE_SRC})