@[Link("libmpdclient")]
lib LibMpdClient
  type MpdNeighbor = Void*

  fun mpd_neighbor_feed(neighbor : MpdNeighbor*, pair : MpdPair*) : Bool
  fun mpd_send_list_neighbors(connection : MpdConnection*) : Bool
  fun mpd_neighbor_get_display_name(neighbor : MpdNeighbor*) : UInt8*
  fun mpd_neighbor_get_uri(neighbor : MpdNeighbor*) : UInt8*
  fun mpd_neighbor_begin(pair : MpdPair*) : MpdNeighbor*
  fun mpd_recv_neighbor(connection : MpdConnection*) : MpdNeighbor*
  fun mpd_neighbor_free(neighbor : MpdNeighbor*) : Void
end
