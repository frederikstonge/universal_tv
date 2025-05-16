class Metadata {
  /// Indicates the version of the HLS protocol used in the playlist
  static const String VERSION = '#EXT-X-VERSION';

  /// Specifies the maximum duration of any media file in the playlist
  static const String ARGETDURATION = '#EXT-X-TARGETDURATION';

  /// Specifies the sequence number of the first media file in the playlist
  static const String MEDIA_SEQUENCE = '#EXT-X-MEDIA-SEQUENCE';

  /// Indicates the type of playlist, such as "VOD" (video on demand) or "EVENT"
  static const String PLAYLIST_TYPE = '#EXT-X-PLAYLIST-TYPE';

  /// Indicates whether the client is allowed to cache the media files
  static const String ALLOW_CACHE = '#EXT-X-ALLOW-CACHE';

  /// Specifies the URI of a variant stream playlist and its properties
  static const String STREAM_INF = '#EXT-X-STREAM-INF';

  /// Specifies the URI of a media file and its properties
  static const String MEDIA = '#EXT-X-MEDIA';

  /// Specifies encryption information for media files in the playlist
  static const String KEY = '#EXT-X-KEY';

  /// Specifies the byte range of a media file in the playlist
  static const String BYTERANGE = '#EXT-X-BYTERANGE';

  /// Indicates a discontinuity between two media segments
  static const String DISCONTINUITY = '#EXT-X-DISCONTINUITY';

  /// Specifies the sequence number of the next media file after a discontinuity
  static const String DISCONTINUITY_SEQUENCE = '#EXT-X-DISCONTINUITY-SEQUENCE';

  /// Specifies the date and time of the first sample in a media file
  static const String PROGRAM_DATE_TIME = '#EXT-X-PROGRAM-DATE-TIME';

  /// Indicates whether each media file is a standalone segment or part of a larger media file
  static const String INDEPENDENT_SEGMENTS = '#EXT-X-INDEPENDENT-SEGMENTS';

  /// Indicates the end of the playlist
  static const String ENDLIST = '#EXT-X-ENDLIST';

  /// Specifies the media initialization section for a media file
  static const String MAP = '#EXT-X-MAP';

  /// Specifies the time offset and precise start time for a live event
  static const String START = '#EXT-X-START';

  /// Specifies the availability and properties of alternate renditions of a media file
  static const String RENDITION_REPORT = '#EXT-X-RENDITION-REPORT';

  /// Indicates a discontinuity in the media sequence number
  static const String MEDIA_SEQUENCE_DISCONTINUITY = '#EXT-X-MEDIA-SEQUENCE-DISCONTINUITY';

  /// Specifies a range of dates for a media file or playlist
  static const String DATERANGE = '#EXT-X-DATERANGE';

  /// Indicates that the maximum duration of a media file has been reached
  static const String TARGETDURATION_REACHED = '#EXT-X-TARGETDURATION-REACHED';

  /// Specifies server-side control parameters for the playlist
  static const String SERVER_CONTROL = '#EXT-X-SERVER-CONTROL';

  /// Specifies versioning information for the playlist
  static const String VERSIONING = '#EXT-X-VERSIONING';

  /// Indicates that the playlist contains only I-frame media files
  static const String I_FRAMES_ONLY = '#EXT-X-I-FRAMES-ONLY';

  /// Indicates a discontinuity in the independent segments
  static const String INDEPENDENT_SEGMENTS_DISCONTINUITY = '#EXT-X-INDEPENDENT-SEGMENTS-DISCONTINUITY';

  /// Specifies arbitrary data associated with the playlist
  static const String SESSION_DATA = '#EXT-X-SESSION-DATA';

  /// Specifies encryption information for the entire session
  static const String SESSION_KEY = '#EXT-X-SESSION-KEY';

  /// Indicates media files that the client should preload
  static const String PRELOAD_HINT = '#EXT-X-PRELOAD-HINT';

  /// Identifies a group of alternate renditions
  static const String RENDITION_GROUP_ID = '#EXT-X-RENDITION-GROUP-ID';

  /// Specifies the language of an alternate rendition
  static const String RENDITION_LANGUAGE = '#EXT-X-RENDITION-LANGUAGE';

  /// Specifies a property associated with an alternate rendition
  static const String RENDITION_ASSOCIATED_PROPERTY = '#EXT-X-RENDITION-ASSOCIATED-PROPERTY';

  /// Specifies the URI of an alternate rendition
  static const String RENDITION_URI = '#EXT-X-RENDITION-URI';

  /// Indicates the start time of a commercial break
  static const String CUE_OUT = '#EXT-X-CUE-OUT';

  /// Indicates the end time of a commercial break
  static const String CUE_IN = '#EXT-X-CUE-IN';

  /// Identifies a group of alternate renditions
  static const String RENDITION_GROUP = '#EXT-X-RENDITION-GROUP';

  /// Specifies the mapping from a rendition to a program
  static const String RENDITION_TO_PROGRAM = '#EXT-X-RENDITION-TO-PROGRAM';

  /// Specifies the offset of the date and time for a live event
  static const String PROGRAM_DATE_TIME_OFFSET = '#EXT-X-PROGRAM-DATE-TIME-OFFSET';

  /// Specifies a unique identifier for a media file or playlist
  static const String CONTENT_IDENTIFIER = '#EXT-X-CONTENT-IDENTIFIER';

  /// Specifies the identifier for a date range
  static const String DATERANGE_ID = '#EXT-X-DATERANGE-ID';

  /// Specifies a command to be sent to the server
  static const String SERVER_CONTROL_COMMAND = '#EXT-X-SERVER-CONTROL-COMMAND';

  /// Specifies the amount of time to hold back media files
  static const String SERVER_CONTROL_HOLD_BACK = '#EXT-X-SERVER-CONTROL-HOLD-BACK';

  /// Specifies the amount of time to hold back partial media files
  static const String SERVER_CONTROL_PART_HOLD_BACK = '#EXT-X-SERVER-CONTROL-PART-HOLD-BACK';

  /// Specifies the maximum duration of media files to send
  static const String SERVER_CONTROL_MAX_DURATION = '#EXT-X-SERVER-CONTROL-MAX-DURATION';

  /// Specifies the maximum age of cached media files
  static const String SERVER_CONTROL_MAX_AGE = '#EXT-X-SERVER-CONTROL-MAX-AGE';

  /// Specifies the earliest time to skip to in a media file
  static const String SERVER_CONTROL_CAN_SKIP_UNTIL = '#EXT-X-SERVER-CONTROL-CAN-SKIP-UNTIL';

  /// Specifies whether the client can skip date ranges
  static const String SERVER_CONTROL_CAN_SKIP_DATERANGES = '#EXT-X-SERVER-CONTROL-CAN-SKIP-DATERANGES';

  /// Specifies the duration of a live event
  static const String START_DURATION = '#EXT-X-START-DURATION';

  /// Specifies the duration of a partial cue-out
  static const String CUE_OUT_CONT_DURATION = '#EXT-X-CUE-OUT-CONT-DURATION';

  /// Specifies the date and time of the server
  static const String PROGRAM_DATE_TIME_SERVER = '#EXT-X-PROGRAM-DATE-TIME-SERVER';

  /// Specifies a content key for a media file or playlist
  static const String CONTENT_KEY = '#EXT-X-CONTENT-KEY';

  /// Indicates a discontinuity between two media items
  static const String DISCONTINUITY_ITEM = '#EXT-X-DISCONTINUITY-ITEM';

  /// Specifies an SCTE-35 cue message
  static const String SCTE35 = '#EXT-X-SCTE35';

  /// Indicates the PTS value of a cue-out
  static const String CUE_OUT_PTS = '#EXT-X-CUE-OUT-PTS';

  /// Indicates the PTS value of a cue-in
  static const String CUE_IN_PTS = '#EXT-X-CUE-IN-PTS';

  /// Indicates the PTS value of a cue-start
  static const String CUE_START_PTS = '#EXT-X-CUE-START-PTS';

  /// Indicates the PTS value of a cue-end
  static const String CUE_END_PTS = '#EXT-X-CUE-END-PTS';

  /// Indicates the PTS value of a partial cue-out
  static const String CUE_OUT_CONT_PTS = '#EXT-X-CUE-OUT-CONT-PTS';

  /// Specifies the availability and properties of alternate media renditions
  static const String MEDIA_RENDITION_REPORT = '#EXT-X-MEDIA-RENDITION-REPORT';

  /// Indicates the relative start time of a cue-out
  static const String RELATIVE_CUE_OUT = '#EXT-X-RELATIVE-CUE-OUT';

  /// Indicates the relative end time of a cue-in
  static const String RELATIVE_CUE_IN = '#EXT-X-RELATIVE-CUE-IN';

  /// Indicates the relative start time and duration of a partial cue-out.
  static const String RELATIVE_CUE_OUT_CONT = '#EXT-X-RELATIVE-CUE-OUT-CONT';

  /// Specifies the byte range of a media initialization section
  static const String MAP_BYTERANGE = '#EXT-X-MAP-BYTERANGE';

  /// Specifies the duration of a cue-out
  static const String CUE_OUT_DURATION = '#EXT-X-CUE-OUT-DURATION';

  /// Specifies the identifier of a partial cue-out
  static const String CUE_OUT_CONT_ID = '#EXT-X-CUE-OUT-CONT-ID';

  /// Specifies the duration of a cue-in
  static const String CUE_IN_DURATION = '#EXT-X-CUE-IN-DURATION';

  /// Specifies the duration of a cue-start
  static const String CUE_START_DURATION = '#EXT-X-CUE-START-DURATION';

  /// Specifies the duration of a cue-end
  static const String CUE_END_DURATION = '#EXT-X-CUE-END-DURATION';

  /// Specifies the duration of a partial cue-out in milliseconds
  static const String CUE_OUT_CONT_DURATION_MS = '#EXT-X-CUE-OUT-CONT-DURATION-MS';
}
