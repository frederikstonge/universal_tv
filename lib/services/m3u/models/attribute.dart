class Attribute {
  /// Specifies the unique identifier of the current media file. This tag is used to identify individual channels in the playlist.
  static const String ID = 'TVG-ID';

  /// Specifies the name of the current channel. This tag is used to display the name of the channel in the IPTV player.
  static const String NAME = 'TVG-NAME';

  /// Specifies the URL of the logo for the current channel. This tag is used to display the logo of the channel in the IPTV player.
  static const String LOGO = 'TVG-LOGO';

  /// Specifies the country code of the current channel. This tag is used to group channels by country in the playlist.
  static const String COUNTRY = 'TVG-COUNTRY';

  /// Specifies the language code of the current channel. This tag is used to group channels by language in the playlist.
  static const String LANGUAGE = 'TVG-LANGUAGE';

  /// Specifies the type of the current channel. This tag is used to group channels by type (e.g. news, sports, entertainment) in the playlist.
  static const String TYPE = 'TVG-TYPE';

  /// Specifies the name of the group that the current channel belongs to. This tag is used to group channels in the playlist.
  static const List<String> GROUP = ['GROUP-TITLE', 'TVG-GROUP'];

  /// Specifies the URL of the website for the current channel. This tag is used to provide additional information about the channel.
  static const String URL = 'TVG-URL';

  /// Specifies the unique identifier of the electronic program guide (EPG) for the current channel. This tag is used to associate the channel with its program guide.
  static const String EPGID = 'TVG-EPGID';

  /// Specifies the URL of the electronic program guide (EPG) for the current channel. This tag is used to provide the location of the channel's program guide.
  static const String EPGURL = 'TVG-EPGURL';

  /// Specifies the time shift (in hours) of the electronic program guide (EPG) for the current channel. This tag is used to adjust the program guide for time zone differences.
  static const String EPGSHIFT = 'TVG-EPGSHIFT';

  /// Specifies whether the current channel is a radio channel. This tag is used to differentiate between TV and radio channels in the playlist.
  static const String RADIO = 'TVG-RADIO';

  /// Specifies the time shift (in hours) of the current channel. This tag is used to adjust the channel's start time for time zone differences.
  static const String TIMESHIFT = 'TVG-TIMESHIFT';

  /// Specifies whether the current channel has an archive. This tag is used to indicate whether the channel offers archived content.
  static const String ARCHIVE = 'TVG-ARCHIVE';

  /// Specifies the URL of the TVG playlist for the current channel. This tag is used to provide additional playlist information.
  static const String TVGPLAYLIST = 'TVG-TVGPLAYLIST';

  /// Specifies the aspect ratio of the current channel. This tag is used to set the aspect ratio for the channel.
  static const String ASPECT_RATIO = 'TVG-ASPECT-RATIO';

  /// Specifies the audio track for the current channel. This tag is used to set the audio track for the channel.
  static const String AUDIO_TRACK = 'TVG-AUDIO-TRACK';

  /// Specifies whether the current channel has closed captions. This tag is used to indicate whether the channel offers closed captions.
  static const String CLOSED_CAPTIONS = 'TVG-CLOSED-CAPTIONS';

  /// Specifies the language of the closed captions for the current channel. This tag is used to set the language of the closed captions.
  static const String CLOSED_CAPTIONS_LANGUAGE = 'TVG-CLOSED-CAPTIONS-LANGUAGE';

  /// Specifies the type of the closed captions for the current channel. This tag is used to set the type of the closed captions.
  static const String CLOSED_CAPTIONS_TYPE = 'TVG-CLOSED-CAPTIONS-TYPE';

  /// Specifies the content type for the current channel. This tag is used to indicate the type of content being broadcast (e.g. movie, TVshow, documentary).
  static const String CONTENT_TYPE = 'TVG-CONTENT-TYPE';

  /// Specifies the copyright information for the current channel. This tag is used to display the copyright information for the channel.
  static const String COPYRIGHT = 'TVG-COPYRIGHT';

  /// Specifies the duration of the current media file. This tag is used to set the duration of the media file.
  static const String DURATION = 'TVG-DURATION';

  /// Specifies the time gap (in seconds) between the end of the previous media file and the start of the current media file. This tag is used to synchronize the media files.
  static const String GAP = 'TVG-GAP';

  /// Specifies whether the media files are independent segments. This tag is used to indicate whether the media files can be played independently.
  static const String INDEPENDENT_SEGMENTS = 'TVG-INDEPENDENT-SEGMENTS';

  /// Specifies the media type for the current media file. This tag is used to indicate the type of media being played (e.g. video, audio).
  static const String MEDIA = 'TVG-MEDIA';

  /// Specifies the sequence number for the media file. This tag is used to indicate the order of the media files in the playlist.
  static const List<String> MEDIA_SEQUENCE = ['TVG-MEDIA-SEQUENCE', 'TVG-X-MEDIA-SEQUENCE', 'TVG-EXT-X-MEDIA-SEQUENCE'];

  /// Specifies the type of playlist being used. This tag is used to indicate whether the playlist is dynamic or static.
  static const String PLAYLIST_TYPE = 'TVG-PLAYLIST-TYPE';

  /// Specifies the start time (in seconds) for the current media file. This tag is used to set the start time for the media file.
  static const String START = 'TVG-START';

  /// Specifies the maximum duration (in seconds) of the media files. This tag is used to set the maximum duration for the media files.
  static const String TARGETDURATION = 'TVG-TARGETDURATION';

  /// Specifies the byte range of the current media file. This tag is used to specify a byte range within a media file.
  static const String BYTERANGE = 'TVG-X-BYTERANGE';

  /// Specifies a discontinuity point in the media file. This tag is used to signal a break in the stream.
  static const String DISCONTINUITY = 'TVG-EXT-X-DISCONTINUITY';

  /// Specifies the end of the media file. This tag is used to indicate the end of the playlist.
  static const List<String> ENDLIST = ['TVG-X-ENDLIST', 'TVG-EXT-X-ENDLIST'];

  /// Specifies the encryption key for the media file. This tag is used to encrypt the media file.
  static const List<String> KEY = ['TVG-X-KEY', 'TVG-EXT-X-KEY'];

  /// Specifies the date and time of the current media file. This tag is used to synchronize the media file with the program guide.
  static const List<String> PROGRAM_DATE_TIME = ['TVG-X-PROGRAM-DATE-TIME', 'TVG-EXT-X-PROGRAM-DATE-TIME'];

  /// Specifies the version of the M3U8 playlist format being used. This tag is used to indicate the version of the playlist.
  static const List<String> VERSION = ['TVG-X-VERSION', 'TVG-EXT-X-VERSION'];

  /// Specifies the resolution of the current media file. This tag is used to set the resolution for the media file.
  static const String RESOLUTION = 'TVG-RESOLUTION';

  /// Specifies the frame rate of the current media file.
  static const String FRAMERATE = 'TVG-FRAMERATE';
}
