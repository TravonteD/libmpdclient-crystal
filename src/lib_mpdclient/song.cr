@[Link("libmpdclient")]
lib LibMpdClient
  type MpdSong = Void*

  fun mpd_song_free(song : MpdSong*) : Void
  fun mpd_song_dup(song : MpdSong*) : MpdSong*
  fun mpd_song_get_uri(song : MpdSong*) : UInt8*
  fun mpd_song_get_tag(song : MpdSong*, type : MpdTagType, idx : UInt32) : UInt8*
  fun mpd_song_get_duration(song : MpdSong*) : UInt32
  fun mpd_song_get_duration_ms(song : MpdSong*) : UInt32
  fun mpd_song_get_start(song : MpdSong*) : UInt32
  fun mpd_song_get_end(song : MpdSong*) : UInt32
  fun mpd_song_feed(song : MpdSong*, pair : MpdPair*) : Bool
  fun mpd_song_get_audio_format(song : MpdSong*) : MpdAudioFormat*
  fun mpd_recv_song(connection : MpdConnection*) : MpdSong*
  fun mpd_song_begin(pair : MpdPair*) : MpdSong*
  fun mpd_song_get_last_modified(song : MpdSong*) : UInt32
  fun mpd_song_get_id(song : MpdSong*) : UInt32
  fun mpd_song_get_pos(song : MpdSong*) : UInt32
  fun mpd_song_get_prio(song : MpdSong*) : UInt32
  fun mpd_song_set_pos(song : MpdSong*, pos : UInt32) : Void
end
