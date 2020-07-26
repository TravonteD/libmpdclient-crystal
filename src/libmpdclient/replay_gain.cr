@[Link("libmpdclient")]
lib LibMpdClient
  enum MpdReplayGainMode
    MPD_REPLAY_OFF     = 0
    MPD_REPLAY_TRACK
    MPD_REPLAY_ALBUM
    MPD_REPLAY_AUTO
    MPD_REPLAY_UNKNOWN
  end

  fun mpd_parse_replay_gain_name(name : UInt8*) : MpdReplayGainMode
  fun mpd_run_replay_gain_status(connection : MpdConnection*) : MpdReplayGainMode
  fun mpd_lookup_replay_gain_mode(mode : MpdReplayGainMode) : UInt8*
  fun mpd_send_replay_gain_status(connection : MpdConnection*) : Bool
  fun mpd_send_replay_gain_mode(connection : MpdConnection*, mode : MpdReplayGainMode) : Bool
  fun mpd_run_replay_gain_mode(connection : MpdConnection*, mode : MpdReplayGainMode) : Bool
end
