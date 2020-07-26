@[Link("libmpdclient")]
lib LibMpdClient
  type MpdDirectory = Void*
  fun mpd_directory_dup(directory : MpdDirectory*) : MpdDirectory*
  fun mpd_directory_free(directory : MpdDirectory*) : Void
  fun mpd_directory_get_path(directory : MpdDirectory*) : UInt8*
  fun mpd_directory_get_last_modified(directory : MpdDirectory*) : UInt32
  fun mpd_directory_begin(pair : MpdPair*) : MpdDirectory*
  fun mpd_directory_feed(directory : MpdDirectory*, pair : MpdPair*) : Bool
  fun mpd_recv_directory(connection : MpdConnection*) : MpdDirectory*
end
