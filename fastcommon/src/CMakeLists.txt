file(GLOB fastcommon_c
        hash.c chain.c shared_func.c ini_file_reader.c
        logger.c sockopt.c base64.c sched_thread.c
        http_func.c md5.c pthread_func.c local_ip_func.c
        avl_tree.c ioevent.c ioevent_loop.c fast_task_queue.c
        fast_timer.c locked_timer.c process_ctrl.c fast_mblock.c
        connection_pool.c fast_mpool.c fast_allocator.c
        fast_buffer.c multi_skiplist.c flat_skiplist.c
        system_info.c fast_blocked_queue.c id_generator.c
        char_converter.c char_convert_loader.c common_blocked_queue.c
        multi_socket_client.c skiplist_set.c uniq_skiplist.c
        json_parser.c buffered_file_writer.c server_id_func.c
        fc_queue.c sorted_queue.c fc_memory.c shared_buffer.c
        thread_pool.c array_allocator.c sorted_array.c
)
set(fastcommon_c ${fastcommon_c}
        CACHE INTERNAL "fastcommon c source"
)

file(GLOB fastcommon_h
        common_define.h hash.h chain.h logger.h base64.h
        shared_func.h pthread_func.h ini_file_reader.h _os_define.h
        sockopt.h sched_thread.h http_func.h md5.h local_ip_func.h
        avl_tree.h ioevent.h ioevent_loop.h fast_task_queue.h
        fast_timer.h locked_timer.h process_ctrl.h fast_mblock.h
        connection_pool.h fast_mpool.h fast_allocator.h
        fast_buffer.h skiplist.h multi_skiplist.h flat_skiplist.h
        skiplist_common.h system_info.h fast_blocked_queue.h
        php7_ext_wrapper.h id_generator.h char_converter.h
        char_convert_loader.h common_blocked_queue.h
        multi_socket_client.h skiplist_set.h uniq_skiplist.h
        fc_list.h locked_list.h json_parser.h buffered_file_writer.h
        server_id_func.h fc_queue.h sorted_queue.h fc_memory.h
        shared_buffer.h thread_pool.h fc_atomic.h array_allocator.h
        sorted_array.h
)
set(fastcommon_h ${fastcommon_h}
        CACHE INTERNAL "fastcommon c source"
)