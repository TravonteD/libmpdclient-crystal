@[Link("libmpdclient")]
lib LibMpdClient
  fun mpd_recv_queue_change_brief(connection : MpdConnection*, position_r : UInt32*, id_r : UInt32*) : Bool
  fun mpd_run_add(connection : MpdConnection*, uri : UInt8*) : Bool
  fun mpd_run_add_tag_id(connection : MpdConnection*, id : UInt32, tag : MpdTagType, value : UInt8*) : Bool
  fun mpd_run_clear(connection : MpdConnection*) : Bool
  fun mpd_run_clear_all_tags_id(connection : MpdConnection*, id : UInt32) : Bool
  fun mpd_run_clear_tag_id(connection : MpdConnection*, id : UInt32, tag : MpdTagType) : Bool
  fun mpd_run_delete(connection : MpdConnection*, pos : UInt32) : Bool
  fun mpd_run_delete_id(connection : MpdConnection*, id : UInt32) : Bool
  fun mpd_run_delete_range(connection : MpdConnection*, range_start : UInt32, range_end : UInt32) : Bool
  fun mpd_run_move(connection : MpdConnection*, from : UInt32, to : UInt32) : Bool
  fun mpd_run_move_id(connection : MpdConnection*, from : UInt32, to : UInt32) : Bool
  fun mpd_run_move_range(connection : MpdConnection*, range_start : UInt32, range_end : UInt32, to : UInt32) : Bool
  fun mpd_run_prio(connection : MpdConnection*, priority : Int32, position : UInt32) : Bool
  fun mpd_run_prio_id(connection : MpdConnection*, priority : Int32, id : UInt32) : Bool
  fun mpd_run_prio_range(connection : MpdConnection*, priority : Int32, range_start : UInt32, range_end : UInt32) : Bool
  fun mpd_run_range_id(connection : MpdConnection*, id : UInt32, range_start : Float64, range_end : Float64) : Bool
  fun mpd_run_shuffle(connection : MpdConnection*) : Bool
  fun mpd_run_shuffle_range(connection : MpdConnection*, range_start : UInt32, range_end : UInt32) : Bool
  fun mpd_run_swap(connection : MpdConnection*, pos1 : UInt32, pos2 : UInt32) : Bool
  fun mpd_run_swap_id(connection : MpdConnection*, id1 : UInt32, id2 : UInt32) : Bool
  fun mpd_send_add(connection : MpdConnection*, file : UInt8*) : Bool
  fun mpd_send_add_id(connection : MpdConnection*, file : UInt8*) : Bool
  fun mpd_send_add_id_to(connection : MpdConnection*, uri : UInt8*, to : UInt32) : Bool
  fun mpd_send_add_tag_id(connection : MpdConnection*, id : UInt32, tag : MpdTagType, value : UInt8*) : Bool
  fun mpd_send_clear(connection : MpdConnection*) : Bool
  fun mpd_send_clear_all_tags_id(connection : MpdConnection*, id : UInt32) : Bool
  fun mpd_send_clear_tag_id(connection : MpdConnection*, id : UInt32, tag : MpdTagType) : Bool
  fun mpd_send_delete(connection : MpdConnection*, pos : UInt32) : Bool
  fun mpd_send_delete_id(connection : MpdConnection*, id : UInt32) : Bool
  fun mpd_send_delete_range(connection : MpdConnection*, range_start : UInt32, range_end : UInt32) : Bool
  fun mpd_send_get_queue_song_id(connection : MpdConnection*, id : UInt32) : Bool
  fun mpd_send_get_queue_song_pos(connection : MpdConnection*, pos : UInt32) : Bool
  fun mpd_send_list_queue_meta(connection : MpdConnection*) : Bool
  fun mpd_send_list_queue_range_meta(connection : MpdConnection*, range_start : UInt32, range_end : UInt32) : Bool
  fun mpd_send_move(connection : MpdConnection*, from : UInt32, to : UInt32) : Bool
  fun mpd_send_move_id(connection : MpdConnection*, from : UInt32, to : UInt32) : Bool
  fun mpd_send_move_range(connection : MpdConnection*, range_start : UInt32, range_end : UInt32, to : UInt32) : Bool
  fun mpd_send_prio(connection : MpdConnection*, priority : Int32, position : UInt32) : Bool
  fun mpd_send_prio_id(connection : MpdConnection*, priority : Int32, id : UInt32) : Bool
  fun mpd_send_prio_range(connection : MpdConnection*, priority : Int32, range_start : UInt32, range_end : UInt32) : Bool
  fun mpd_send_queue_changes_brief(connection : MpdConnection*, version : UInt32) : Bool
  fun mpd_send_queue_changes_brief_range(connection : MpdConnection*, version : UInt32, range_start : UInt32, range_end : UInt32) : Bool
  fun mpd_send_queue_changes_meta(connection : MpdConnection*, version : UInt32) : Bool
  fun mpd_send_queue_changes_meta_range(connection : MpdConnection*, version : UInt32, range_start : UInt32, range_end : UInt32) : Bool
  fun mpd_send_range_id(connection : MpdConnection*, id : UInt32, range_start : Float64, range_end : Float64) : Bool
  fun mpd_send_shuffle(connection : MpdConnection*) : Bool
  fun mpd_send_shuffle_range(connection : MpdConnection*, range_start : UInt32, range_end : UInt32) : Bool
  fun mpd_send_swap(connection : MpdConnection*, pos1 : UInt32, pos2 : UInt32) : Bool
  fun mpd_send_swap_id(connection : MpdConnection*, id1 : UInt32, id2 : UInt32) : Bool
  fun mpd_recv_song_id(connection : MpdConnection*) : Int32
  fun mpd_run_add_id(connection : MpdConnection*, file : UInt8*) : Int32
  fun mpd_run_add_id_to(connection : MpdConnection*, uri : UInt8*, to : UInt8) : Int32
  fun mpd_run_get_queue_song_id(connection : MpdConnection*, id : UInt32) : MpdSong*
  fun mpd_run_get_queue_song_pos(connection : MpdConnection*, pos : UInt32) : MpdSong*
end
