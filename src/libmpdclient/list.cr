@[Link("libmpdclient")]
lib LibMpdClient
  fun mpd_command_list_begin(connection : MpdConnection*, discrete_ok : Bool) : Bool
  fun mpd_command_list_end(connection : MpdConnection*) : Bool
end
