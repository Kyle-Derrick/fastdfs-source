#include(tool_functions.cmake)

# 执行make.sh，会生成_os_define.h
execute_process(COMMAND bash make.sh test
        WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/fastcommon
        ERROR_FILE /dev/null
)
# fastcommon
search_makefile(${PROJECT_SOURCE_DIR}/fastcommon/src/Makefile.in fastcommon "FAST_SHARED_OBJS" "HEADER_FILES")

# fastcommon
file(CREATE_LINK ${PROJECT_SOURCE_DIR}/fastcommon/src/ ${header_dir}/fastcommon SYMBOLIC)
add_library(fastcommon SHARED ${fastcommon_sources})
target_link_libraries(fastcommon m dl pthread)
target_include_directories(fastcommon PUBLIC ${fastcommon_headers})
set_target_properties(fastcommon
    PROPERTIES LIBRARY_OUTPUT_DIRECTORY
    ${lib_dir}/fastcommon
)