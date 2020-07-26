@[Link("libmpdclient")]
lib LibMpdClient
  type MpdSettings = Void*

  fun mpd_settings_new(host : UInt8*, port : UInt32, timeout_ms : UInt32, reserved : UInt8*, password : UInt8*) : MpdSettings*
  fun mpd_settings_free(settings : MpdSettings*) : Void
  fun mpd_settings_get_host(settings : MpdSettings*) : UInt8*
  fun mpd_settings_get_password(settings : MpdSettings*) : UInt8*
  fun mpd_settings_get_port(settings : MpdSettings*) : UInt32
  fun mpd_settings_get_timeout_ms(settings : MpdSettings*) : UInt32
end
