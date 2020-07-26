@[Link("libmpdclient")]
lib LibMpdClient
  type MpdEntity = Void*

  enum MpdEntityType
    MPD_ENTITY_TYPE_UNKNOWN
    MPD_ENTITY_TYPE_DIRECTORY
    MPD_ENTITY_TYPE_SONG
    MPD_ENTITY_TYPE_PLAYLIST
  end

  fun mpd_entity_free(entity : MpdEntity*) : Void
  fun mpd_entity_get_type(entity : MpdEntity*) : MpdEntityType
  fun mpd_entity_get_directory(entity : MpdEntity*) : MpdDirectory*
  fun mpd_entity_get_song(entity : MpdEntity*) : MpdSong*
  fun mpd_entity_get_playlist(entity : MpdEntity*) : MpdPlaylist*
  fun mpd_entity_begin(pair : MpdPair*) : MpdEntity*
  fun mpd_entity_feed(entity : MpdEntity*, pair : MpdPair*) : Bool
  fun mpd_recv_entity(connection : MpdConnection*) : MpdEntity*
end
