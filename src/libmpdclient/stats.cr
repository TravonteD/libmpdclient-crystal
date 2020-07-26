@[Link("libmpdclient")]
lib LibMpdClient
  type MpdStats = Void*

  fun mpd_send_stats(connection : MpdConnection*) : Bool
  fun mpd_stats_begin : MpdStats*
  fun mpd_recv_stats(connection : MpdConnection*) : MpdStats*
  fun mpd_run_stats(connection : MpdConnection*) : MpdStats*
  fun mpd_stats_feed(stats : MpdStats*, pair : MpdPair*) : Void
  fun mpd_stats_free(stats : MpdStats*) : Void
  fun mpd_stats_get_number_of_artists(stats : MpdStats*) : UInt32
  fun mpd_stats_get_number_of_albums(stats : MpdStats*) : UInt32
  fun mpd_stats_get_number_of_songs(stats : MpdStats*) : UInt32
  fun mpd_stats_get_uptime(stats : MpdStats*) : UInt32
  fun mpd_stats_get_db_update_time(stats : MpdStats*) : UInt32
  fun mpd_stats_get_play_time(stats : MpdStats*) : UInt32
  fun mpd_stats_get_db_play_time(stats : MpdStats*) : UInt32
end
