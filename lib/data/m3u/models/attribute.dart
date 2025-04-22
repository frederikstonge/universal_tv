class Attribute {
  /// Specifies the unique identifier of the current media file. This tag is used to identify individual channels in the playlist.
  static const String TVG_ID = 'TVG-ID';

  /// Specifies the name of the current channel. This tag is used to display the name of the channel in the IPTV player.
  static const String TVG_NAME = 'TVG-NAME';

  /// Specifies the URL of the logo for the current channel. This tag is used to display the logo of the channel in the IPTV player.
  static const String TVG_LOGO = 'TVG-LOGO';

  /// Specifies the country code of the current channel. This tag is used to group channels by country in the playlist.
  static const String TVG_COUNTRY = 'TVG-COUNTRY';

  /// Specifies the language code of the current channel. This tag is used to group channels by language in the playlist.
  static const String TVG_LANGUAGE = 'TVG-LANGUAGE';

  /// Specifies the type of the current channel. This tag is used to group channels by type (e.g. news, sports, entertainment) in the playlist.
  static const String TVG_TYPE = 'TVG-TYPE';

  /// Specifies the URL of the website for the current channel. This tag is used to provide additional information about the channel.
  static const String TVG_URL = 'TVG-URL';

  /// Specifies the name of the group that the current channel belongs to. This tag is used to group channels in the playlist.
  static const String TVG_GROUP = 'TVG-GROUP';

  /// Specifies the unique identifier of the electronic program guide (EPG) for the current channel. This tag is used to associate the channel with its program guide.
  static const String TVG_EPGID = 'TVG-EPGID';

  /// Specifies the URL of the electronic program guide (EPG) for the current channel. This tag is used to provide the location of the channel's program guide.
  static const String TVG_EPGURL = 'TVG-EPGURL';

  /// Specifies the time shift (in hours) of the electronic program guide (EPG) for the current channel. This tag is used to adjust the program guide for time zone differences.
  static const String TVG_EPGSHIFT = 'TVG-EPGSHIFT';

  /// Specifies whether the current channel is a radio channel. This tag is used to differentiate between TV and radio channels in the playlist.
  static const String TVG_RADIO = 'TVG-RADIO';

  /// Specifies the time shift (in hours) of the current channel. This tag is used to adjust the channel's start time for time zone differences.
  static const String TVG_TIMESHIFT = 'TVG-TIMESHIFT';

  /// Specifies whether the current channel has an archive. This tag is used to indicate whether the channel offers archived content.
  static const String TVG_ARCHIVE = 'TVG-ARCHIVE';

  /// Specifies the URL of the TVG playlist for the current channel. This tag is used to provide additional playlist information.
  static const String TVG_TVGPLAYLIST = 'TVG-TVGPLAYLIST';

  /// Specifies the aspect ratio of the current channel. This tag is used to set the aspect ratio for the channel.
  static const String TVG_ASPECT_RATIO = 'TVG-ASPECT-RATIO';

  /// Specifies the audio track for the current channel. This tag is used to set the audio track for the channel.
  static const String TVG_AUDIO_TRACK = 'TVG-AUDIO-TRACK';

  /// Specifies whether the current channel has closed captions. This tag is used to indicate whether the channel offers closed captions.
  static const String TVG_CLOSED_CAPTIONS = 'TVG-CLOSED-CAPTIONS';

  /// Specifies the language of the closed captions for the current channel. This tag is used to set the language of the closed captions.
  static const String TVG_CLOSED_CAPTIONS_LANGUAGE = 'TVG-CLOSED-CAPTIONS-LANGUAGE';

  /// Specifies the type of the closed captions for the current channel. This tag is used to set the type of the closed captions.
  static const String TVG_CLOSED_CAPTIONS_TYPE = 'TVG-CLOSED-CAPTIONS-TYPE';

  /// Specifies the content type for the current channel. This tag is used to indicate the type of content being broadcast (e.g. movie, TVshow, documentary).
  static const String TVG_CONTENT_TYPE = 'TVG-CONTENT-TYPE';

  /// Specifies the copyright information for the current channel. This tag is used to display the copyright information for the channel.
  static const String TVG_COPYRIGHT = 'TVG-COPYRIGHT';

  /// Specifies the duration of the current media file. This tag is used to set the duration of the media file.
  static const String TVG_DURATION = 'TVG-DURATION';

  /// Specifies a discontinuity point in the media file. This tag is used to signal a break in the stream.
  static const String TVG_EXT_X_DISCONTINUITY = 'TVG-EXT-X-DISCONTINUITY';

  /// Specifies the end of the media file. This tag is used to indicate the end of the playlist.
  static const String TVG_EXT_X_ENDLIST = 'TVG-EXT-X-ENDLIST';

  /// Specifies the encryption key for the media file. This tag is used to encrypt the media file.
  static const String TVG_EXT_X_KEY = 'TVG-EXT-X-KEY';

  /// Specifies the sequence number for the media file. This tag is used to indicate the order of the media files in the playlist.
  static const String TVG_EXT_X_MEDIA_SEQUENCE = 'TVG-EXT-X-MEDIA-SEQUENCE';

  /// Specifies the date and time of the current media file. This tag is used to synchronize the media file with the program guide.
  static const String TVG_EXT_X_PROGRAM_DATE_TIME = 'TVG-EXT-X-PROGRAM-DATE-TIME';

  /// Specifies the version of the M3U8 playlist format being used. This tag is used to indicate the version of the playlist.
  static const String TVG_EXT_X_VERSION = 'TVG-EXT-X-VERSION';

  /// Specifies the time gap (in seconds) between the end of the previous media file and the start of the current media file. This tag is used to synchronize the media files.
  static const String TVG_GAP = 'TVG-GAP';

  /// Specifies whether the media files are independent segments. This tag is used to indicate whether the media files can be played independently.
  static const String TVG_INDEPENDENT_SEGMENTS = 'TVG-INDEPENDENT-SEGMENTS';

  /// Specifies the media type for the current media file. This tag is used to indicate the type of media being played (e.g. video, audio).
  static const String TVG_MEDIA = 'TVG-MEDIA';

  /// Specifies the sequence number for the media file. This tag is used to indicate the order of the media files in the playlist.
  static const String TVG_MEDIA_SEQUENCE = 'TVG-MEDIA-SEQUENCE';

  /// Specifies the type of playlist being used. This tag is used to indicate whether the playlist is dynamic or static.
  static const String TVG_PLAYLIST_TYPE = 'TVG-PLAYLIST-TYPE';

  /// Specifies the start time (in seconds) for the current media file. This tag is used to set the start time for the media file.
  static const String TVG_START = 'TVG-START';

  /// Specifies the maximum duration (in seconds) of the media files. This tag is used to set the maximum duration for the media files.
  static const String TVG_TARGETDURATION = 'TVG-TARGETDURATION';

  /// Specifies the byte range of the current media file. This tag is used to specify a byte range within a media file.
  static const String TVG_X_BYTERANGE = 'TVG-X-BYTERANGE';

  /// Specifies the end of the media file. This tag is used to indicate the end of the playlist.
  static const String TVG_X_ENDLIST = 'TVG-X-ENDLIST';

  /// Specifies the encryption key for the media file. This tag is used to encrypt the media file.
  static const String TVG_X_KEY = 'TVG-X-KEY';

  /// Specifies the sequence number for the media file. This tag is used to indicate the order of the media files in the playlist.
  static const String TVG_X_MEDIA_SEQUENCE = 'TVG-X-MEDIA-SEQUENCE';

  /// Specifies the date and time of the current media file. This tag is used to synchronize the media file with the program guide.
  static const String TVG_X_PROGRAM_DATE_TIME = 'TVG-X-PROGRAM-DATE-TIME';

  /// Specifies the version of the M3U8 playlist format being used. This tag is used to indicate the version of the playlist.
  static const String TVG_X_VERSION = 'TVG-X-VERSION';

  /// Specifies the resolution of the current media file. This tag is used to set the resolution for the media file.
  static const String TVG_RESOLUTION = 'TVG-RESOLUTION';

  /// Specifies the frame rate of the current media file.
  static const String TVG_FRAMERATE = 'TVG-FRAMERATE';
}
