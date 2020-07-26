@[Link("libmpdclient")]
lib LibMpdClient
  enum MpdFingerprintType
    MPD_FINGERPRINT_TYPE_UNKNOWN
    MPD_FINGERPRINT_TYPE_CHROMAPRINT
  end

  fun mpd_parse_fingerprint_type(name : UInt8*) : MpdFingerprintType*
  fun mpd_send_getfingerprint(connection : MpdConnection*, uri : UInt8*) : Bool
  fun mpd_run_getfingerprint_chromaprint(connection : MpdConnection*, uri : UInt8*, buffer : UInt8*, buffer_size : LibC::SizeT) : UInt8*
end
