@[Link("libmpdclient")]
lib LibMpdClient
  type MpdMount = Void*

  fun mpd_mount_feed(mnt : MpdMount*, pair : MpdPair) : Bool
  fun mpd_run_mount(connection : MpdConnection*, uri : UInt8*, storage : UInt8*) : Bool
  fun mpd_run_unmount(connection : MpdConnection*, uri : UInt8*) : Bool
  fun mpd_send_list_mounts(connection : MpdConnection*) : Bool
  fun mpd_send_mount(connection : MpdConnection*, uri : UInt8*, storage : UInt8*) : Bool
  fun mpd_send_unmount(connection : MpdConnection*, uri : UInt8*) : Bool
  fun mpd_mount_get_storage(mnt : MpdMount*) : UInt8*
  fun mpd_mount_get_uri(mnt : MpdMount*) : UInt8*
  fun mpd_mount_begin(pair : MpdMount*) : MpdMount*
  fun mpd_recv_mount(connection : MpdConnection*) : MpdMount*
  fun mpd_mount_free(mount : MpdMount*) : Void
end
