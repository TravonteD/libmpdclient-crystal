@[Link("libmpdclient")]
lib LibMpdClient
  type MpdConnection = Void*
  type MpdAsync = Void*

  enum MpdServerError
    MPD_SERVER_ERROR_UNK = -1

    MPD_SERVER_ERROR_NOT_LIST    = 1
    MPD_SERVER_ERROR_ARG         = 2
    MPD_SERVER_ERROR_PASSWORD    = 3
    MPD_SERVER_ERROR_PERMISSION  = 4
    MPD_SERVER_ERROR_UNKNOWN_CMD = 5

    MPD_SERVER_ERROR_NO_EXIST       = 50
    MPD_SERVER_ERROR_PLAYLIST_MAX   = 51
    MPD_SERVER_ERROR_SYSTEM         = 52
    MPD_SERVER_ERROR_PLAYLIST_LOAD  = 53
    MPD_SERVER_ERROR_UPDATE_ALREADY = 54
    MPD_SERVER_ERROR_PLAYER_SYNC    = 55
    MPD_SERVER_ERROR_EXIST          = 56
  end

  enum MpdError
    MPD_ERROR_SUCCESS   = 0
    MPD_ERROR_OOM
    MPD_ERROR_ARGUMENT
    MPD_ERROR_TIMEOUT
    MPD_ERROR_SYSTEM
    MPD_ERROR_RESOLVER
    MPD_ERROR_MALFORMED
    MPD_ERROR_CLOSED
    MPD_ERROR_SERVER
  end

  fun mpd_connection_clear_error(connection : MpdConnection*) : Bool
  fun mpd_connection_cmp_server_version(connection : MpdConnection*, major : UInt32, minor : UInt32, patch : UInt32) : Int32
  fun mpd_connection_free(connection : MpdConnection*) : Void
  fun mpd_connection_get_async(connection : MpdConnection*) : MpdAsync
  fun mpd_connection_get_error(connection : MpdConnection*) : MpdError
  fun mpd_connection_get_error_message(connection : MpdConnection*) : UInt8*
  fun mpd_connection_get_error_message(connection : MpdConnection*) : UInt8*
  fun mpd_connection_get_fd(connection : MpdConnection*) : Int32
  fun mpd_connection_get_server_error(connection : MpdConnection*) : MpdServerError
  fun mpd_connection_get_server_error_location(connection : MpdConnection*) : UInt32
  fun mpd_connection_get_server_version(connection : MpdConnection*) : UInt32*
  fun mpd_connection_get_settings(connection : MpdConnection*) : MpdSettings*
  fun mpd_connection_get_system_error(connection : MpdConnection*) : Int32
  fun mpd_connection_new(host : UInt8*, port : UInt32, timeout_ms : UInt32) : MpdConnection*
  fun mpd_connection_new_async(async : MpdAsync*, welcome : UInt8*) : MpdConnection*
  fun mpd_connection_set_keepalive(connection : MpdConnection*, keepalive : Bool) : Bool
  fun mpd_connection_set_timeout(connection : MpdConnection*, timeout_ms : UInt32) : Void
end
