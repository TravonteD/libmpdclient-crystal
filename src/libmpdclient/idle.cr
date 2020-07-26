@[Link("libmpdclient")]
lib LibMpdClient
  enum MpdIdle
    MPD_IDLE_DATABASE        = 0x1
    MPD_IDLE_STORED_PLAYLIST = 0x2
    MPD_IDLE_QUEUE           = 0x4
    MPD_IDLE_PLAYLIST        = MPD_IDLE_QUEUE
    MPD_IDLE_PLAYER          =    0x8
    MPD_IDLE_MIXER           =   0x10
    MPD_IDLE_OUTPUT          =   0x20
    MPD_IDLE_OPTIONS         =   0x40
    MPD_IDLE_UPDATE          =   0x80
    MPD_IDLE_STICKER         =  0x100
    MPD_IDLE_SUBSCRIPTION    =  0x200
    MPD_IDLE_MESSAGE         =  0x400
    MPD_IDLE_PARTITION       =  0x800
    MPD_IDLE_NEIGHBOR        = 0x1000
    MPD_IDLE_MOUNT           = 0x2000
  end

  fun mpd_idle_name(idle : MpdIdle) : UInt8*
  fun mpd_send_idle(connection : MpdConnection*) : Bool
  fun mpd_send_idle_mask(connection : MpdConnection*, mask : MpdIdle) : Bool
  fun mpd_send_noidle(connection : MpdConnection*) : Bool
  fun mpd_idle_name_parse(name : UInt8*) : MpdIdle
  fun mpd_idle_parse_pair(pair : MpdPair*) : MpdIdle
  fun mpd_recv_idle(connection : MpdConnection*, disable_timeout : Bool) : MpdIdle
  fun mpd_run_idle(connection : MpdConnection*) : MpdIdle
  fun mpd_run_idle_mask(connection : MpdConnection*, mask : MpdIdle) : MpdIdle
  fun mpd_run_noidle(connection : MpdConnection*) : MpdIdle
end
