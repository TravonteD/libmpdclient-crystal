@[Link("libmpdclient")]
lib LibMpdClient
  enum MpdTagType
    MPD_TAG_UNKNOWN = -1

    MPD_TAG_ARTIST
    MPD_TAG_ALBUM
    MPD_TAG_ALBUM_ARTIST
    MPD_TAG_TITLE
    MPD_TAG_TRACK
    MPD_TAG_NAME
    MPD_TAG_GENRE
    MPD_TAG_DATE
    MPD_TAG_COMPOSER
    MPD_TAG_PERFORMER
    MPD_TAG_COMMENT
    MPD_TAG_DISC

    MPD_TAG_MUSICBRAINZ_ARTISTID
    MPD_TAG_MUSICBRAINZ_ALBUMID
    MPD_TAG_MUSICBRAINZ_ALBUMARTISTID
    MPD_TAG_MUSICBRAINZ_TRACKID
    MPD_TAG_MUSICBRAINZ_RELEASETRACKID

    MPD_TAG_ORIGINAL_DATE

    MPD_TAG_ARTIST_SORT
    MPD_TAG_ALBUM_ARTIST_SORT

    MPD_TAG_ALBUM_SORT
    MPD_TAG_LABEL
    MPD_TAG_MUSICBRAINZ_WORKID

    MPD_TAG_GROUPING
    MPD_TAG_WORK
    MPD_TAG_CONDUCTOR
    MPD_TAG_COUNT
  end

  fun mpd_send_allowed_commands(connection : MpdConnection*) : Bool
  fun mpd_send_disallowed_commands(connection : MpdConnection*) : Bool
  fun mpd_send_list_url_schemes(connection : MpdConnection*) : Bool
  fun mpd_send_list_tag_types(connection : MpdConnection*) : Bool
  fun mpd_send_disable_tag_types(connection : MpdConnection*, types : MpdTagType, n : UInt32) : Bool
  fun mpd_run_disable_tag_types(connection : MpdConnection*, types : MpdTagType, n : UInt32) : Bool
  fun mpd_send_enable_tag_types(connection : MpdConnection*, types : MpdTagType, n : UInt32) : Bool
  fun mpd_run_enable_tag_types(connection : MpdConnection*, types : MpdTagType, n : UInt32) : Bool
  fun mpd_send_clear_tag_types(connection : MpdConnection*) : Bool
  fun mpd_run_clear_tag_types(connection : MpdConnection*) : Bool
  fun mpd_send_all_tag_types(connection : MpdConnection*) : Bool
  fun mpd_run_all_tag_types(connection : MpdConnection*) : Bool
end
