@[Link("libmpdclient")]
lib LibMpdClient
  fun mpd_send_sticker_set(connection : MpdConnection*, type : UInt8*, uri : UInt8*, name : UInt8*, value : UInt8*) : Bool
  fun mpd_run_sticker_set(connection : MpdConnection*, type : UInt8*, uri : UInt8*, name : UInt8*, value : UInt8*) : Bool
  fun mpd_send_sticker_delete(connection : MpdConnection*, type : UInt8*, uri : UInt8*, name : UInt8*) : Bool
  fun mpd_run_sticker_delete(connection : MpdConnection*, type : UInt8*, uri : UInt8*, name : UInt8*) : Bool
  fun mpd_send_sticker_get(connection : MpdConnection*, type : UInt8*, uri : UInt8*, name : UInt8*) : Bool
  fun mpd_send_sticker_list(connection : MpdConnection*, type : UInt8*, uri : UInt8*) : Bool
  fun mpd_send_sticker_find(connection : MpdConnection*, type : UInt8*, base_uri : UInt8*, name : UInt8*) : Bool
  fun mpd_parse_sticker(input : UInt8*, name_length_r : LibC::SizeT*) : UInt8*
  fun mpd_recv_sticker(connection : MpdConnection*) : MpdPair*
  fun mpd_return_sticker(connection : MpdConnection*, pair : MpdPair*) : Void
end
