@[Link("libmpdclient")]
lib LibMpdClient
  fun mpd_recv_binary(connection : MpdConnection*, data : Void*, length : LibC::SizeT) : Bool
  fun mpd_recv_pair(connection : MpdConnection*) : MpdPair*
  fun mpd_recv_pair_named(connection : MpdConnection*, name : UInt8*) : MpdPair*
  fun mpd_return_pair(connection : MpdConnection*, pair : MpdPair*) : Void
  fun mpd_enqueue_pair(connection : MpdConnection*, pair : MpdPair*) : Void
end
