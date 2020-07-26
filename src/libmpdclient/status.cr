@[Link("libmpdclient")]
lib LibMpdClient
  type MpdAudioFormat = Void*
  type MpdStatus = Void*

  enum MpdState
    MPD_STATE_UNKNOWN = 0
    MPD_STATE_STOP = 1
    MPD_STATE_PLAY = 2
    MPD_STATE_PAUSE = 3
  end

  fun mpd_status_begin : MpdStatus*
  fun mpd_status_feed(status : MpdStatus*, pair : MpdPair) : Void
  fun mpd_send_status(connection : MpdConnection*) : Bool
  fun mpd_recv_status(connection : MpdConnection*) : MpdStatus*
  fun mpd_run_status(connection : MpdConnection*) : MpdStatus*
  fun mpd_status_free(status : MpdStatus*) : Void
  fun mpd_status_get_volume(status : MpdStatus*) : Int32
  fun mpd_status_get_repeat(status : MpdStatus*) : Bool
  fun mpd_status_get_random(status : MpdStatus*) : Bool
  fun mpd_status_get_single_state(status : MpdStatus*) : MpdSingleState
  fun mpd_status_get_single(status : MpdStatus*) : Bool
  fun mpd_status_get_consume(status : MpdStatus*) : Bool
  fun mpd_status_get_queue_length(status : MpdStatus*) : UInt32
  fun mpd_status_get_queue_version(status : MpdStatus*) : UInt32
  fun mpd_status_get_state(status : MpdStatus*) : MpdState*
  fun mpd_status_get_crossfade(status : MpdStatus*) : UInt32
  fun mpd_status_get_mixrampdb(status : MpdStatus*) : Float64
  fun mpd_status_get_mixrampdelay(status : MpdStatus*) : Float64
  fun mpd_status_get_song_pos(status : MpdStatus*) : Int32
  fun mpd_status_get_song_id(status : MpdStatus*) : Int32
  fun mpd_status_get_next_song_pos(status : MpdStatus*) : Int32
  fun mpd_status_get_next_song_id(status : MpdStatus*) : Int32
  fun mpd_status_get_elapsed_time(status : MpdStatus*) : UInt32
  fun mpd_status_get_elapsed_ms(status : MpdStatus*) : UInt32
  fun mpd_status_get_total_time(status : MpdStatus*) : UInt32
  fun mpd_status_get_kbit_rate(status : MpdStatus*) : UInt32
  fun mpd_status_get_update_id(status : MpdStatus*) : UInt32
  fun mpd_status_get_partition(status : MpdStatus*) : UInt8*
  fun mpd_status_get_error(status : MpdStatus*) : UInt8*
end
