
message("serverframe: ${PROJECT_SOURCE_DIR}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)

#aux_source_directory(./ SERVERFRAME_SRC)

#set(SERVERFRAME_SRC sf_nio.c sf_iov.c sf_service.c sf_global.c
#        sf_func.c sf_util.c sf_configs.c sf_proto.c
#        sf_sharding_htable.c sf_cluster_cfg.c
#        sf_connection_manager.c sf_serializer.c
#        sf_binlog_index.c sf_file_writer.c
#        sf_binlog_writer.c sf_ordered_writer.c
#        sf_shared_mbuffer.c
#        idempotency/server/server_channel.c
#        idempotency/server/request_htable.c
#        idempotency/server/channel_htable.c
#        idempotency/server/server_handler.c
#        idempotency/server/request_metadata.c
#        idempotency/client/receipt_handler.c
#        idempotency/client/client_channel.c)
add_library(serverframe SHARED sf_nio.c sf_iov.c sf_service.c sf_global.c
        sf_func.c sf_util.c sf_configs.c sf_proto.c
        sf_sharding_htable.c sf_cluster_cfg.c
        sf_connection_manager.c sf_serializer.c
        sf_binlog_index.c sf_file_writer.c
        sf_binlog_writer.c sf_ordered_writer.c
        sf_shared_mbuffer.c
        idempotency/server/server_channel.c
        idempotency/server/request_htable.c
        idempotency/server/channel_htable.c
        idempotency/server/server_handler.c
        idempotency/server/request_metadata.c
        idempotency/client/receipt_handler.c
        idempotency/client/client_channel.c)