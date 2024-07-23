

function(search_makefile_var content var_name suffix result)
    message("${var_name}[ \\t]*=[ \\t]*([a-zA-Z0-9-_]+.${suffix}[ \\t]*(\\\\[ \\t]*\\r?\\n[ \\t]*)?)+")
    string(REGEX MATCH "${var_name}[ \\t]*=[ \\t]*([a-zA-Z0-9-_]+.${suffix}[ \\t]*(\\\\[ \\t]*(\\r)?\\n[ \\t]*)?)+" match_result "${content}")
#    string(REGEX MATCH "+" match_result "${content}")
    message("result: ${match_result};")
    message("-------------------_")
    set(${result} ${match_result} PARENT_SCOPE)
endfunction()

macro(search_makefile path obj_var header_var)
    file(READ ${path} content)

    message("${obj_var}")
    message("${header_var}")
    search_makefile_var("${content}" ${obj_var} "o" objs)
    search_makefile_var("${content}" ${header_var} "h" headers)
    message("${objs}")
    message("${headers}")
endmacro()

search_makefile(${PROJECT_SOURCE_DIR}/fastcommon/src/Makefile.in "FAST_STATIC_OBJS" "HEADER_FILES")

string(REGEX MATCH "[a-z]+ *\\\\\n *[a-z]+" sss "asdas=adsdasd \\\n            asdasd")
message("test: ${sss}")