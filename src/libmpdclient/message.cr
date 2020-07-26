@[Link("libmpdclient")]
lib LibMpdClient
  type MpdMessage = Void*

  fun mpd_message_feed(output : MpdMessage*, pair : MpdPair*) : Bool
  fun mpd_run_send_message(connection : MpdConnection*, channel : UInt8*, text : UInt8*) : Bool
  fun mpd_run_subscribe(connection : MpdConnection*, channel : UInt8*) : Bool
  fun mpd_run_unsubscribe(connection : MpdConnection*, channel : UInt8*) : Bool
  fun mpd_send_channels(connection : MpdConnection*) : Bool
  fun mpd_send_read_messages(connection : MpdConnection*) : Bool
  fun mpd_send_send_message(connection : MpdConnection*, channel : UInt8*, text : UInt8*) : Bool
  fun mpd_send_subscribe(connection : MpdConnection*, channel : UInt8*) : Bool
  fun mpd_send_unsubscribe(connection : MpdConnection*, channel : UInt8*) : Bool
  fun mpd_message_get_channel(message : MpdMessage*) : UInt8*
  fun mpd_message_get_text(message : MpdMessage*) : UInt8*
  fun mpd_message_begin(pair : MpdPair*) : MpdMessage*
  fun mpd_recv_message(connection : MpdConnection*) : MpdMessage*
  fun mpd_message_free(message : MpdMessage*) : Void
end
