@[Link("libmpdclient")]
lib LibMpdClient
  type MpdOutput = Void*

  fun mpd_output_feed(output : MpdOutput, pair : MpdPair) : Bool
  fun mpd_output_get_enabled(output : MpdOutput*) : Bool
  fun mpd_run_disable_output(connection : MpdConnection*, output_id : UInt32) : Bool
  fun mpd_run_enable_output(connection : MpdConnection*, output_id : UInt32) : Bool
  fun mpd_run_move_output(connection : MpdConnection*, output_name : UInt8*) : Bool
  fun mpd_run_output_set(connection : MpdConnection*, output_id : UInt32, attribute_name : UInt8*, attribute_value : UInt8*) : Bool
  fun mpd_run_toggle_output(connection : MpdConnection*, output_id : UInt32) : Bool
  fun mpd_send_disable_output(connection : MpdConnection*, output_id : UInt32) : Bool
  fun mpd_send_enable_output(connection : MpdConnection*, output_id : UInt32) : Bool
  fun mpd_send_move_output(connection : MpdConnection*, output_name : UInt8*) : Bool
  fun mpd_send_output_set(connection : MpdConnection*, output_id : UInt32, attribute_name : UInt8*, attribute_value : UInt8*) : Bool
  fun mpd_send_outputs(connection : MpdConnection*) : Bool
  fun mpd_send_toggle_output(connection : MpdConnection*, output_id : UInt32) : Bool
  fun mpd_output_get_attribute(output : MpdOutput*, name : UInt8*) : UInt8*
  fun mpd_output_get_name(output : MpdOutput*) : UInt8*
  fun mpd_output_get_plugin(output : MpdOutput*) : UInt8*
  fun mpd_output_first_attribute(output : MpdOutput*) : MpdPair*
  fun mpd_output_next_attribute(output : MpdOutput*) : MpdPair*
  fun mpd_output_begin(pair : MpdPair*) : MpdOutput*
  fun mpd_recv_output(connection : MpdConnection*) : MpdOutput*
  fun mpd_output_get_id(output : MpdOutput*) : UInt32
  fun mpd_output_free(output : MpdOutput*) : Void
end
