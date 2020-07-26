@[Link("libmpdclient")]
lib LibMpdClient
  type MpdPartition = Void*

  fun mpd_run_delete_partition(connection : MpdConnection*, partition : UInt8*) : Bool
  fun mpd_run_newpartition(connection : MpdConnection*, partition : UInt8*) : Bool
  fun mpd_run_switch_partition(connection : MpdConnection*, partition : UInt8*) : Bool
  fun mpd_send_delete_partition(connection : MpdConnection*, partition : UInt8*) : Bool
  fun mpd_send_listpartitions(connection : MpdConnection*) : Bool
  fun mpd_send_newpartition(connection : MpdConnection*, partition : UInt8*) : Bool
  fun mpd_send_switch_partition(connection : MpdConnection*, partition : UInt8*) : Bool
  fun mpd_partition_get_name(partition : MpdPartition*) : UInt8*
  fun mpd_partition_new(pair : MpdPair*) : MpdPartition*
  fun mpd_recv_partition(connection : MpdConnection*) : MpdPartition*
  fun mpd_partition_free(partition : MpdPair*) : Void
end
