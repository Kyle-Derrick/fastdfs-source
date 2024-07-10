
file(GLOB common_c
        common/hash.c common/chain.c common/shared_func.c common/ini_file_reader.c
        common/logger.c common/sockopt.c common/fdfs_global.c common/base64.c common/sched_thread.c
        common/mime_file_parser.c common/fdfs_http_shared.c
)
set(common_c ${common_c}
        CACHE INTERNAL "common c source"
)

file(GLOB tracker_c
        common/fdfs_global.c
        tracker/tracker_proto.c tracker/tracker_mem.c tracker/tracker_service.c tracker/tracker_status.c
        tracker/tracker_global.c tracker/tracker_func.c tracker/fdfs_server_id_func.c
        tracker/fdfs_shared_func.c tracker/tracker_relationship.c
        tracker/tracker_dump.c
)
set(tracker_c ${tracker_c}
        CACHE INTERNAL "tracker c source"
)

file(GLOB storage_c
        common/fdfs_global.c tracker/fdfs_shared_func.c
        tracker/fdfs_server_id_func.c tracker/tracker_proto.c
        client/client_global.c client/tracker_client.c
        client/storage_client.c client/client_func.c
        storage/tracker_client_thread.c storage/storage_global.c storage/storage_func.c
        storage/storage_sync_func.c storage/storage_service.c storage/storage_sync.c
        storage/storage_dio.c storage/storage_ip_changed_dealer.c
        storage/storage_param_getter.c storage/storage_disk_recovery.c
        storage/trunk_mgr/trunk_mem.c storage/trunk_mgr/trunk_shared.c
        storage/trunk_mgr/trunk_sync.c storage/trunk_mgr/trunk_client.c
        storage/trunk_mgr/trunk_free_block_checker.c
        storage/fdht_client/fdht_proto.c storage/fdht_client/fdht_client.c
        storage/fdht_client/fdht_func.c storage/fdht_client/fdht_global.c
        storage/storage_dump.c
)
set(storage_c ${storage_c}
        CACHE INTERNAL "storage c source"
)

file(GLOB client_c
        common/fdfs_global.c common/fdfs_http_shared.c
        common/mime_file_parser.c tracker/tracker_proto.c
        tracker/fdfs_shared_func.c tracker/fdfs_server_id_func.c
        storage/trunk_mgr/trunk_shared.c
        client/tracker_client.c client/client_func.c
        client/client_global.c client/storage_client.c
)
set(client_c ${client_c}
       CACHE INTERNAL "client c source"
)
