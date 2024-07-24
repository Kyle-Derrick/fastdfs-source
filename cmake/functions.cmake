function(search_makefile_var content var_name suffix result)
    string(REGEX MATCH "${var_name}[ 	]*=[ 	]*([a-zA-Z0-9-_/.]+\\.${suffix}[ 	]*(\\\\\r?\n[ 	]*)?)+" match_result "${content}")
    string(REGEX REPLACE "${var_name}[ 	]*=[ 	]*" "" match_result "${match_result}")
    string(REGEX REPLACE "[\\\\\n 	]+" ";" match_list "${match_result}")
    set(${result} ${match_list} PARENT_SCOPE)
endfunction()

function(search_makefile path suffix result)
    file(READ ${path} content)

    set(result_list)
    foreach (item ${ARGN})
        message("${item}")
        search_makefile_var("${content}" ${item} ${suffix} item_result)
        list(APPEND result_list ${item_result})
    endforeach ()
    set(${result} ${result_list} PARENT_SCOPE)
endfunction()

macro(convert_file_only path out_list)
    convert_file(${path} "" "" out_list ${ARGN})
endmacro()

function(convert_file path current_suffix to_suffix out_list)
    set(result_list)
    foreach (item ${ARGN})
        if (NOT (NOT current_suffix AND NOT to_suffix))
            message("-->>${path}: ${current_suffix}")
            string(REGEX REPLACE "\\.${current_suffix}$" ".${to_suffix}" item ${item})
        endif ()

        string(CONCAT full_path ${path} ${item} )
        file(RELATIVE_PATH final_path ${CMAKE_CURRENT_SOURCE_DIR} "${full_path}")
        list(APPEND result_list ${final_path})
    endforeach ()
    set(${out_list} ${result_list} PARENT_SCOPE)
endfunction()

search_makefile(${PROJECT_SOURCE_DIR}/fastcommon/src/Makefile.in "o" common_objs "FAST_STATIC_OBJS")
search_makefile(${PROJECT_SOURCE_DIR}/fastcommon/src/Makefile.in "h" common_headers "HEADER_FILES")
search_makefile(${PROJECT_SOURCE_DIR}/serverframe/src/Makefile.in "lo" server_objs "SHARED_OBJS")
search_makefile(${PROJECT_SOURCE_DIR}/serverframe/src/Makefile.in "h" server_headers
        "TOP_HEADERS"
        "IDEMP_COMMON_HEADER"
        "IDEMP_SERVER_HEADER"
        "IDEMP_CLIENT_HEADER"
)
convert_file(${PROJECT_SOURCE_DIR}/fastcommon/src/ "o" "c" common_objs ${common_objs})
convert_file_only(${PROJECT_SOURCE_DIR}/fastcommon/src/ common_headers ${common_headers})
convert_file(${PROJECT_SOURCE_DIR}/serverframe/src/ "lo" "c" server_objs ${server_objs})
convert_file_only(${PROJECT_SOURCE_DIR}/serverframe/src/ server_headers ${server_headers})
message(">>>> ${common_objs}")
message(">>>> ${common_headers}")
message(">>>> ${server_objs}")
message(">>>> ${server_headers}")