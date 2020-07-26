@[Link("libmpdclient")]
lib LibMpdClient
  fun mpd_send_list_all(connection : MpdConnection*, path : UInt8*) : Bool
  fun mpd_send_list_all_meta(connection : MpdConnection*, path : UInt8*) : Bool
  fun mpd_send_list_meta(connection : MpdConnection*, path : UInt8*) : Bool
  fun mpd_send_list_files(connection : MpdConnection*, uri : UInt8*) : Bool
  fun mpd_send_read_comments(connection : MpdConnection*, path : UInt8*) : Bool
  fun mpd_send_update(connection : MpdConnection*, path : UInt8*) : Bool
  fun mpd_send_rescan(connection : MpdConnection*, path : UInt8*) : Bool
  fun mpd_recv_update_id(connection : MpdConnection*) : UInt32
  fun mpd_run_update(connection : MpdConnection*, path : UInt8*) : UInt32
  fun mpd_run_rescan(connection : MpdConnection*, path : UInt8*) : UInt32
end
