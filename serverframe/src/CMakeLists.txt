file(GLOB serverframe_c
        sf_nio.c sf_iov.c sf_service.c sf_global.c
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
        idempotency/client/client_channel.c
)
set(serverframe_c ${serverframe_c}
        CACHE INTERNAL "serverframe c source"
)

file(GLOB serverframe_h
        sf_types.h sf_global.h sf_define.h sf_nio.h sf_service.h
        sf_func.h sf_util.h sf_configs.h sf_proto.h sf_cluster_cfg.h
        sf_sharding_htable.h sf_connection_manager.h sf_serializer.h
        sf_binlog_index.h sf_file_writer.h sf_binlog_writer.h
        sf_ordered_writer.h sf_buffered_writer.h sf_iov.h
        sf_shared_mbuffer.h
        idempotency/common/idempotency_types.h
        idempotency/server/server_types.h
        idempotency/server/server_channel.h
        idempotency/server/request_htable.h
        idempotency/server/channel_htable.h
        idempotency/server/server_handler.h
        idempotency/server/request_metadata.h
        idempotency/client/client_types.h
        idempotency/client/receipt_handler.h
        idempotency/client/client_channel.h
        idempotency/client/rpc_wrapper.h
)
set(serverframe_h ${serverframe_h}
        CACHE INTERNAL "serverframe c source"
)