@[Link("libmpdclient")]
lib LibMpdClient
  type MpdPlaylist = Void*

  fun mpd_playlist_feed(playlist : MpdPlaylist*, pair : MpdPair*) : Bool
  fun mpd_run_load(connection : MpdConnection*, name : UInt8*) : Bool
  fun mpd_run_load_range(connection : MpdConnection*, name : UInt8*, range_start : UInt32, range_end : UInt32) : Bool
  fun mpd_run_playlist_add(connection : MpdConnection*, name : UInt8*, path : UInt8*) : Bool
  fun mpd_run_playlist_clear(connection : MpdConnection*, name : UInt8*) : Bool
  fun mpd_run_playlist_delete(connection : MpdConnection*, name : UInt8*, pos : UInt32) : Bool
  fun mpd_run_playlist_move(connection : MpdConnection*, name : UInt8*, from : UInt32, to : UInt32) : Bool
  fun mpd_run_rename(connection : MpdConnection*, from : UInt8*, to : UInt8*) : Bool
  fun mpd_run_rm(connection : MpdConnection*, name : UInt8*) : Bool
  fun mpd_run_save(connection : MpdConnection*, name : UInt8*) : Bool
  fun mpd_send_list_playlist(connection : MpdConnection*, name : UInt8*) : Bool
  fun mpd_send_list_playlist_meta(connection : MpdConnection*, name : UInt8*) : Bool
  fun mpd_send_list_playlists(connection : MpdConnection*) : Bool
  fun mpd_send_load(connection : MpdConnection*, name : UInt8*) : Bool
  fun mpd_send_load_range(connection : MpdConnection*, name : UInt8*, range_start : UInt32, range_end : UInt32) : Bool
  fun mpd_send_playlist_add(connection : MpdConnection*, name : UInt8*, path : UInt8*) : Bool
  fun mpd_send_playlist_clear(connection : MpdConnection*, name : UInt8*) : Bool
  fun mpd_send_playlist_delete(connection : MpdConnection*, name : UInt8*, pos : UInt32) : Bool
  fun mpd_send_playlist_move(connection : MpdConnection*, name : UInt8*, from : UInt32, to : UInt32) : Bool
  fun mpd_send_rename(connection : MpdConnection*, from : UInt8*, to : UInt8*) : Bool
  fun mpd_send_rm(connection : MpdConnection*, name : UInt8*) : Bool
  fun mpd_send_save(connection : MpdConnection*, name : UInt8*) : Bool
  fun mpd_playlist_get_path(playlist : MpdPlaylist*) : UInt8*
  fun mpd_playlist_begin(pair : MpdPair*) : MpdPlaylist*
  fun mpd_playlist_dup(playlist : MpdPlaylist*) : MpdPlaylist*
  fun mpd_recv_playlist(connection : MpdConnection*) : MpdPlaylist*
  fun mpd_playlist_get_last_modified(playlist : MpdPlaylist*) : UInt32
  fun mpd_playlist_free(playlist : MpdPlaylist*) : Void
end
