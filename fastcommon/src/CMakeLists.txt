message("fastcommon: ${PROJECT_SOURCE_DIR}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)

#aux_source_directory(./ FASTCOMMON_SRC)

#set(FASTCOMMON_SRC hash.c chain.c shared_func.c ini_file_reader.c
#        logger.c sockopt.c base64.c sched_thread.c
#        http_func.c md5.c pthread_func.c local_ip_func.c
#        avl_tree.c ioevent.c ioevent_loop.c fast_task_queue.c
#        fast_timer.c locked_timer.c process_ctrl.c fast_mblock.c
#        connection_pool.c fast_mpool.c fast_allocator.c
#        fast_buffer.c multi_skiplist.c flat_skiplist.c
#        system_info.c fast_blocked_queue.c id_generator.c
#        char_converter.c char_convert_loader.c common_blocked_queue.c
#        multi_socket_client.c skiplist_set.c uniq_skiplist.c
#        json_parser.c buffered_file_writer.c server_id_func.c
#        fc_queue.c sorted_queue.c fc_memory.c shared_buffer.c
#        thread_pool.c array_allocator.c sorted_array.c)

add_library(fastcommon SHARED hash.c chain.c shared_func.c ini_file_reader.c
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
                   thread_pool.c array_allocator.c sorted_array.c)