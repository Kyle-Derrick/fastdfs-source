aux_source_directory(./ CLIENT_SRC)

include_directories(../common ../tracker)
link_directories(pthread)
target_link_libraries(fastcommon serverframe)
#add_executable(fdfs_storaged ${CLIENT_SRC})