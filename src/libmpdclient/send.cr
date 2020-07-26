@[Link("libmpdclient")]
lib LibMpdClient
  fun mpd_send_command(connection : MpdConnection*, command : UInt8*, ...) : Bool
end
