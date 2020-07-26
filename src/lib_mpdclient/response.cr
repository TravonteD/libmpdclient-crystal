@[Link("libmpdclient")]
lib LibMpdClient
  fun mpd_response_finish(connection : MpdConnection*) : Bool
  fun mpd_response_next(connection : MpdConnection*) : Bool
end
