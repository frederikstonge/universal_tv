class Metadata {
  /// Indicates the version of the HLS protocol used in the playlist
  static const String EXT_X_VERSION = '#EXT-X-VERSION';

  /// Specifies the maximum duration of any media file in the playlist
  static const String EXT_X_TARGETDURATION = '#EXT-X-TARGETDURATION';

  /// Specifies the sequence number of the first media file in the playlist
  static const String EXT_X_MEDIA_SEQUENCE = '#EXT-X-MEDIA-SEQUENCE';

  /// Indicates the type of playlist, such as "VOD" (video on demand) or "EVENT"
  static const String EXT_X_PLAYLIST_TYPE = '#EXT-X-PLAYLIST-TYPE';

  /// Indicates whether the client is allowed to cache the media files
  static const String EXT_X_ALLOW_CACHE = '#EXT-X-ALLOW-CACHE';

  /// Specifies the URI of a variant stream playlist and its properties
  static const String EXT_X_STREAM_INF = '#EXT-X-STREAM-INF';

  /// Specifies the URI of a media file and its properties
  static const String EXT_X_MEDIA = '#EXT-X-MEDIA';

  /// Specifies encryption information for media files in the playlist
  static const String EXT_X_KEY = '#EXT-X-KEY';

  /// Specifies the byte range of a media file in the playlist
  static const String EXT_X_BYTERANGE = '#EXT-X-BYTERANGE';

  /// Indicates a discontinuity between two media segments
  static const String EXT_X_DISCONTINUITY = '#EXT-X-DISCONTINUITY';

  /// Specifies the sequence number of the next media file after a discontinuity
  static const String EXT_X_DISCONTINUITY_SEQUENCE = '#EXT-X-DISCONTINUITY-SEQUENCE';

  /// Specifies the date and time of the first sample in a media file
  static const String EXT_X_PROGRAM_DATE_TIME = '#EXT-X-PROGRAM-DATE-TIME';

  /// Indicates whether each media file is a standalone segment or part of a larger media file
  static const String EXT_X_INDEPENDENT_SEGMENTS = '#EXT-X-INDEPENDENT-SEGMENTS';

  /// Indicates the end of the playlist
  static const String EXT_X_ENDLIST = '#EXT-X-ENDLIST';

  /// Specifies the media initialization section for a media file
  static const String EXT_X_MAP = '#EXT-X-MAP';

  /// Specifies the time offset and precise start time for a live event
  static const String EXT_X_START = '#EXT-X-START';

  /// Specifies the availability and properties of alternate renditions of a media file
  static const String EXT_X_RENDITION_REPORT = '#EXT-X-RENDITION-REPORT';

  /// Indicates a discontinuity in the media sequence number
  static const String EXT_X_MEDIA_SEQUENCE_DISCONTINUITY = '#EXT-X-MEDIA-SEQUENCE-DISCONTINUITY';

  /// Specifies a range of dates for a media file or playlist
  static const String EXT_X_DATERANGE = '#EXT-X-DATERANGE';

  /// Indicates that the maximum duration of a media file has been reached
  static const String EXT_X_TARGETDURATION_REACHED = '#EXT-X-TARGETDURATION-REACHED';

  /// Specifies server-side control parameters for the playlist
  static const String EXT_X_SERVER_CONTROL = '#EXT-X-SERVER-CONTROL';

  /// Specifies versioning information for the playlist
  static const String EXT_X_VERSIONING = '#EXT-X-VERSIONING';

  /// Indicates that the playlist contains only I-frame media files
  static const String EXT_X_I_FRAMES_ONLY = '#EXT-X-I-FRAMES-ONLY';

  /// Indicates a discontinuity in the independent segments
  static const String EXT_X_INDEPENDENT_SEGMENTS_DISCONTINUITY = '#EXT-X-INDEPENDENT-SEGMENTS-DISCONTINUITY';

  /// Specifies arbitrary data associated with the playlist
  static const String EXT_X_SESSION_DATA = '#EXT-X-SESSION-DATA';

  /// Specifies encryption information for the entire session
  static const String EXT_X_SESSION_KEY = '#EXT-X-SESSION-KEY';

  /// Indicates media files that the client should preload
  static const String EXT_X_PRELOAD_HINT = '#EXT-X-PRELOAD-HINT';

  /// Identifies a group of alternate renditions
  static const String EXT_X_RENDITION_GROUP_ID = '#EXT-X-RENDITION-GROUP-ID';

  /// Specifies the language of an alternate rendition
  static const String EXT_X_RENDITION_LANGUAGE = '#EXT-X-RENDITION-LANGUAGE';

  /// Specifies a property associated with an alternate rendition
  static const String EXT_X_RENDITION_ASSOCIATED_PROPERTY = '#EXT-X-RENDITION-ASSOCIATED-PROPERTY';

  /// Specifies the URI of an alternate rendition
  static const String EXT_X_RENDITION_URI = '#EXT-X-RENDITION-URI';

  /// Indicates the start time of a commercial break
  static const String EXT_X_CUE_OUT = '#EXT-X-CUE-OUT';

  /// Indicates the end time of a commercial break
  static const String EXT_X_CUE_IN = '#EXT-X-CUE-IN';

  /// Identifies a group of alternate renditions
  static const String EXT_X_RENDITION_GROUP = '#EXT-X-RENDITION-GROUP';

  /// Specifies the mapping from a rendition to a program
  static const String EXT_X_RENDITION_TO_PROGRAM = '#EXT-X-RENDITION-TO-PROGRAM';

  /// Specifies the offset of the date and time for a live event
  static const String EXT_X_PROGRAM_DATE_TIME_OFFSET = '#EXT-X-PROGRAM-DATE-TIME-OFFSET';

  /// Specifies a unique identifier for a media file or playlist
  static const String EXT_X_CONTENT_IDENTIFIER = '#EXT-X-CONTENT-IDENTIFIER';

  /// Specifies the identifier for a date range
  static const String EXT_X_DATERANGE_ID = '#EXT-X-DATERANGE-ID';

  /// Specifies a command to be sent to the server
  static const String EXT_X_SERVER_CONTROL_COMMAND = '#EXT-X-SERVER-CONTROL-COMMAND';

  /// Specifies the amount of time to hold back media files
  static const String EXT_X_SERVER_CONTROL_HOLD_BACK = '#EXT-X-SERVER-CONTROL-HOLD-BACK';

  /// Specifies the amount of time to hold back partial media files
  static const String EXT_X_SERVER_CONTROL_PART_HOLD_BACK = '#EXT-X-SERVER-CONTROL-PART-HOLD-BACK';

  /// Specifies the maximum duration of media files to send
  static const String EXT_X_SERVER_CONTROL_MAX_DURATION = '#EXT-X-SERVER-CONTROL-MAX-DURATION';

  /// Specifies the maximum age of cached media files
  static const String EXT_X_SERVER_CONTROL_MAX_AGE = '#EXT-X-SERVER-CONTROL-MAX-AGE';

  /// Specifies the earliest time to skip to in a media file
  static const String EXT_X_SERVER_CONTROL_CAN_SKIP_UNTIL = '#EXT-X-SERVER-CONTROL-CAN-SKIP-UNTIL';

  /// Specifies whether the client can skip date ranges
  static const String EXT_X_SERVER_CONTROL_CAN_SKIP_DATERANGES = '#EXT-X-SERVER-CONTROL-CAN-SKIP-DATERANGES';

  /// Specifies the duration of a live event
  static const String EXT_X_START_DURATION = '#EXT-X-START-DURATION';

  /// Specifies the duration of a partial cue-out
  static const String EXT_X_CUE_OUT_CONT_DURATION = '#EXT-X-CUE-OUT-CONT-DURATION';

  /// Specifies the date and time of the server
  static const String EXT_X_PROGRAM_DATE_TIME_SERVER = '#EXT-X-PROGRAM-DATE-TIME-SERVER';

  /// Specifies a content key for a media file or playlist
  static const String EXT_X_CONTENT_KEY = '#EXT-X-CONTENT-KEY';

  /// Indicates a discontinuity between two media items
  static const String EXT_X_DISCONTINUITY_ITEM = '#EXT-X-DISCONTINUITY-ITEM';

  /// Specifies an SCTE-35 cue message
  static const String EXT_X_SCTE35 = '#EXT-X-SCTE35';

  /// Indicates the PTS value of a cue-out
  static const String EXT_X_CUE_OUT_PTS = '#EXT-X-CUE-OUT-PTS';

  /// Indicates the PTS value of a cue-in
  static const String EXT_X_CUE_IN_PTS = '#EXT-X-CUE-IN-PTS';

  /// Indicates the PTS value of a cue-start
  static const String EXT_X_CUE_START_PTS = '#EXT-X-CUE-START-PTS';

  /// Indicates the PTS value of a cue-end
  static const String EXT_X_CUE_END_PTS = '#EXT-X-CUE-END-PTS';

  /// Indicates the PTS value of a partial cue-out
  static const String EXT_X_CUE_OUT_CONT_PTS = '#EXT-X-CUE-OUT-CONT-PTS';

  /// Specifies the availability and properties of alternate media renditions
  static const String EXT_X_MEDIA_RENDITION_REPORT = '#EXT-X-MEDIA-RENDITION-REPORT';

  /// Indicates the relative start time of a cue-out
  static const String EXT_X_RELATIVE_CUE_OUT = '#EXT-X-RELATIVE-CUE-OUT';

  /// Indicates the relative end time of a cue-in
  static const String EXT_X_RELATIVE_CUE_IN = '#EXT-X-RELATIVE-CUE-IN';

  /// Indicates the relative start time and duration of a partial cue-out.
  static const String EXT_X_RELATIVE_CUE_OUT_CONT = '#EXT-X-RELATIVE-CUE-OUT-CONT';

  /// Specifies the byte range of a media initialization section
  static const String EXT_X_MAP_BYTERANGE = '#EXT-X-MAP-BYTERANGE';

  /// Specifies the duration of a cue-out
  static const String EXT_X_CUE_OUT_DURATION = '#EXT-X-CUE-OUT-DURATION';

  /// Specifies the identifier of a partial cue-out
  static const String EXT_X_CUE_OUT_CONT_ID = '#EXT-X-CUE-OUT-CONT-ID';

  /// Specifies the duration of a cue-in
  static const String EXT_X_CUE_IN_DURATION = '#EXT-X-CUE-IN-DURATION';

  /// Specifies the duration of a cue-start
  static const String EXT_X_CUE_START_DURATION = '#EXT-X-CUE-START-DURATION';

  /// Specifies the duration of a cue-end
  static const String EXT_X_CUE_END_DURATION = '#EXT-X-CUE-END-DURATION';

  /// Specifies the duration of a partial cue-out in milliseconds
  static const String EXT_X_CUE_OUT_CONT_DURATION_MS = '#EXT-X-CUE-OUT-CONT-DURATION-MS';
}
