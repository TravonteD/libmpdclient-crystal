@[Link("libmpdclient")]
lib LibMpdClient
  fun mpd_send_password(connection : MpdConnection*, password : UInt8*) : Bool
  fun mpd_run_password(connection : MpdConnection*, password  : UInt8*) : Bool
end
