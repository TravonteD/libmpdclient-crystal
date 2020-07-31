@[Link("libmpdclient")]
lib LibMpdClient
  enum MpdSingleState
    MPD_SINGLE_OFF = 0
    MPD_SINGLE_ON
    MPD_SINGLE_ONESHOT
    MPD_SINGLE_UNKNOWN
  end

  fun mpd_send_current_song(connection : MpdConnection*) : Bool
  fun mpd_run_current_song(connection : MpdConnection*) : MpdSong*
  fun mpd_send_play(connection : MpdConnection*) : Bool
  fun mpd_run_play(connection : MpdConnection*) : Bool
  fun mpd_send_play_pos(connection : MpdConnection*, song_pos : UInt32) : Bool
  fun mpd_run_play_pos(connection : MpdConnection*, song_pos : UInt32) : Bool
  fun mpd_send_play_id(connection : MpdConnection*, song_id : UInt32) : Bool
  fun mpd_run_play_id(connection : MpdConnection*, song_id : UInt32) : Bool
  fun mpd_send_stop(connection : MpdConnection*) : Bool
  fun mpd_run_stop(connection : MpdConnection*) : Bool
  fun mpd_send_toggle_pause(connection : MpdConnection*) : Bool
  fun mpd_run_toggle_pause(connection : MpdConnection*) : Bool
  fun mpd_send_pause(connection : MpdConnection*, mode : Bool) : Bool
  fun mpd_run_pause(connection : MpdConnection*, mode : Bool) : Bool
  fun mpd_send_next(connection : MpdConnection*) : Bool
  fun mpd_run_next(connection : MpdConnection*) : Bool
  fun mpd_send_previous(connection : MpdConnection*) : Bool
  fun mpd_run_previous(connection : MpdConnection*) : Bool
  fun mpd_send_seek_pos(connection : MpdConnection*, song_pos : UInt32, t : UInt32) : Bool
  fun mpd_run_seek_pos(connection : MpdConnection*, song_pos : UInt32, t : UInt32) : Bool
  fun mpd_send_seek_id(connection : MpdConnection*, song_id : UInt32, t : UInt32) : Bool
  fun mpd_run_seek_id(connection : MpdConnection*, song_id : UInt32, t : UInt32) : Bool
  fun mpd_send_seek_id_float(connection : MpdConnection*, song_id : UInt32, t : Float64) : Bool
  fun mpd_run_seek_id_float(connection : MpdConnection*, song_id : UInt32, t : Float64) : Bool
  fun mpd_send_seek_current(connection : MpdConnection*, t : Float64, relative : Bool) : Bool
  fun mpd_run_seek_current(connection : MpdConnection*, t : Float64, relative : Bool) : Bool
  fun mpd_send_repeat(connection : MpdConnection*, mode : Bool) : Bool
  fun mpd_run_repeat(connection : MpdConnection*, mode : Bool) : Bool
  fun mpd_send_random(connection : MpdConnection*, mode : Bool) : Bool
  fun mpd_run_random(connection : MpdConnection*, mode : Bool) : Bool
  fun mpd_send_single_state(connection : MpdConnection*, state : MpdSingleState) : Bool
  fun mpd_run_single_state(connection : MpdConnection*, state : MpdSingleState) : Bool
  fun mpd_send_single(connection : MpdConnection*, mode : Bool) : Bool
  fun mpd_run_single(connection : MpdConnection*, mode : Bool) : Bool
  fun mpd_send_consume(connection : MpdConnection*, mode : Bool) : Bool
  fun mpd_run_consume(connection : MpdConnection*, mode : Bool) : Bool
  fun mpd_send_crossfade(connection : MpdConnection*, seconds : UInt32) : Bool
  fun mpd_run_crossfade(connection : MpdConnection*, seconds : UInt32) : Bool
  fun mpd_send_mixrampdb(connection : MpdConnection*, db : Float64) : Bool
  fun mpd_run_mixrampdb(connection : MpdConnection*, db : Float64) : Bool
  fun mpd_send_mixrampdelay(connection : MpdConnection*, seconds : Float64) : Bool
  fun mpd_run_mixrampdelay(connection : MpdConnection*, seconds : Float64) : Bool
  fun mpd_send_clearerror(connection : MpdConnection*) : Bool
  fun mpd_run_clearerror(connection : MpdConnection*) : Bool
end
