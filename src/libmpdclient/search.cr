@[Link("libmpdclient")]
lib LibMpdClient
  enum MpdOperator
    MPD_OPERATOR_DEFAULT
  end

  fun mpd_search_db_songs(connection : MpdConnection*, exact : Bool) : Bool
  fun mpd_search_add_db_songs(connection : MpdConnection*, exact : Bool) : Bool
  fun mpd_search_add_db_songs_to_playlist(connection : MpdConnection*, playlist_name : UInt8*) : Bool
  fun mpd_search_queue_songs(connection : MpdConnection*, exact : Bool) : Bool
  fun mpd_search_db_tags(connection : MpdConnection*, type : MpdTagType) : Bool
  fun mpd_count_db_songs(connection : MpdConnection*) : Bool
  fun mpd_search_add_base_constraint(connection : MpdConnection*, oper : MpdOperator, value : UInt8*) : Bool
  fun mpd_search_add_uri_constraint(connection : MpdConnection*, oper : MpdOperator, value : UInt8*) : Bool
  fun mpd_search_add_tag_constraint(connection : MpdConnection*, oper : MpdOperator, type : MpdTagType, value : UInt8*) : Bool
  fun mpd_search_add_any_tag_constraint(connection : MpdConnection*, oper : MpdOperator, value : UInt8*) : Bool
  fun mpd_search_add_modified_since_constraint(connection : MpdConnection*, oper : MpdOperator, value : UInt32) : Bool
  fun mpd_search_add_expression(connection : MpdConnection*, expression : UInt8*) : Bool
  fun mpd_search_add_group_tag(connection : MpdConnection*, type : MpdTagType) : Bool
  fun mpd_search_add_sort_name(connection : MpdConnection*, name : UInt8*, descending : Bool) : Bool
  fun mpd_search_add_sort_tag(connection : MpdConnection*, type : MpdTagType, descending : Bool) : Bool
  fun mpd_search_add_window(connection : MpdConnection*, range_start : UInt32, range_end : UInt32) : Bool
  fun mpd_search_commit(connection : MpdConnection*) : Bool
  fun mpd_search_cancel(connection : MpdConnection*) : Void
  fun mpd_recv_pair_tag(connection : MpdConnection*, type : MpdTagType) : MpdPair*
end
