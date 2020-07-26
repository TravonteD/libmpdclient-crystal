@[Link("libmpdclient")]
lib LibMpdClient
  fun mpd_send_set_volume(connection : MpdConnection*, volume : UInt32) : Bool
  fun mpd_run_set_volume(connection : MpdConnection*, volume : UInt32) : Bool
  fun mpd_send_change_volume(connection : MpdConnection*, relative_volume : Int32) : Bool
  fun mpd_run_change_volume(connection : MpdConnection*, relative_volume : Int32) : Bool
end
