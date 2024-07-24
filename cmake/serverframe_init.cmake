
# serverframe
search_makefile(${PROJECT_SOURCE_DIR}/serverframe/src/Makefile.in serverframe "SHARED_OBJS"
        "TOP_HEADERS"
        "IDEMP_COMMON_HEADER"
        "IDEMP_SERVER_HEADER"
        "IDEMP_CLIENT_HEADER"
)

# serverframe
file(CREATE_LINK ${PROJECT_SOURCE_DIR}/serverframe/src/ ${header_dir}/sf SYMBOLIC)
add_library(serverframe SHARED ${serverframe_sources})
target_link_libraries(serverframe pthread fastcommon)
target_include_directories(serverframe PRIVATE ${header_dir} PUBLIC ${serverframe_headers})
set_target_properties(serverframe
        PROPERTIES LIBRARY_OUTPUT_DIRECTORY
        ${lib_dir}/sf
)