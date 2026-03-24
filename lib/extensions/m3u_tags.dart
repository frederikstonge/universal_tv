class M3uTags {
  // ── EXT Tags ──────────────────────────────────────────────────────────

  /// Indicates that the file is an M3U playlist file
  static const extM3u = '#EXTM3U';

  /// Specifies the duration and title of a media file in the playlist
  static const extInf = '#EXTINF';

  /// Indicates the version of the HLS protocol used in the playlist
  static const extXVersion = '#EXT-X-VERSION';

  /// Specifies the maximum duration of any media file in the playlist
  static const extXTargetDuration = '#EXT-X-TARGETDURATION';

  /// Specifies the sequence number of the first media file in the playlist
  static const extXMediaSequence = '#EXT-X-MEDIA-SEQUENCE';

  /// Indicates the type of playlist, such as "VOD" or "EVENT"
  static const extXPlaylistType = '#EXT-X-PLAYLIST-TYPE';

  /// Indicates whether the client is allowed to cache the media files
  static const extXAllowCache = '#EXT-X-ALLOW-CACHE';

  /// Specifies the URI of a variant stream playlist and its properties
  static const extXStreamInf = '#EXT-X-STREAM-INF';

  /// Specifies the URI of a media file and its properties
  static const extXMedia = '#EXT-X-MEDIA';

  /// Specifies encryption information for media files in the playlist
  static const extXKey = '#EXT-X-KEY';

  /// Specifies the byte range of a media file in the playlist
  static const extXByteRange = '#EXT-X-BYTERANGE';

  /// Indicates a discontinuity between two media segments
  static const extXDiscontinuity = '#EXT-X-DISCONTINUITY';

  /// Specifies the sequence number of the next media file after a discontinuity
  static const extXDiscontinuitySequence = '#EXT-X-DISCONTINUITY-SEQUENCE';

  /// Specifies the date and time of the first sample in a media file
  static const extXProgramDateTime = '#EXT-X-PROGRAM-DATE-TIME';

  /// Indicates whether each media file is a standalone segment or part of a larger media file
  static const extXIndependentSegments = '#EXT-X-INDEPENDENT-SEGMENTS';

  /// Indicates the end of the playlist
  static const extXEndList = '#EXT-X-ENDLIST';

  /// Specifies the media initialization section for a media file
  static const extXMap = '#EXT-X-MAP';

  /// Specifies the time offset and precise start time for a live event
  static const extXStart = '#EXT-X-START';

  /// Specifies the availability and properties of alternate renditions of a media file
  static const extXRenditionReport = '#EXT-X-RENDITION-REPORT';

  /// Indicates a discontinuity in the media sequence number
  static const extXMediaSequenceDiscontinuity = '#EXT-X-MEDIA-SEQUENCE-DISCONTINUITY';

  /// Specifies a range of dates for a media file or playlist
  static const extXDateRange = '#EXT-X-DATERANGE';

  /// Indicates that the maximum duration of a media file has been reached
  static const extXTargetDurationReached = '#EXT-X-TARGETDURATION-REACHED';

  /// Specifies server-side control parameters for the playlist
  static const extXServerControl = '#EXT-X-SERVER-CONTROL';

  /// Specifies versioning information for the playlist
  static const extXVersioning = '#EXT-X-VERSIONING';

  /// Indicates that the playlist contains only I-frame media files
  static const extXIFramesOnly = '#EXT-X-I-FRAMES-ONLY';

  /// Indicates a discontinuity in the independent segments
  static const extXIndependentSegmentsDiscontinuity = '#EXT-X-INDEPENDENT-SEGMENTS-DISCONTINUITY';

  /// Specifies arbitrary data associated with the playlist
  static const extXSessionData = '#EXT-X-SESSION-DATA';

  /// Specifies encryption information for the entire session
  static const extXSessionKey = '#EXT-X-SESSION-KEY';

  /// Indicates media files that the client should preload
  static const extXPreloadHint = '#EXT-X-PRELOAD-HINT';

  /// Identifies a group of alternate renditions
  static const extXRenditionGroupId = '#EXT-X-RENDITION-GROUP-ID';

  /// Specifies the language of an alternate rendition
  static const extXRenditionLanguage = '#EXT-X-RENDITION-LANGUAGE';

  /// Specifies a property associated with an alternate rendition
  static const extXRenditionAssociatedProperty = '#EXT-X-RENDITION-ASSOCIATED-PROPERTY';

  /// Specifies the URI of an alternate rendition
  static const extXRenditionUri = '#EXT-X-RENDITION-URI';

  /// Indicates the start time of a commercial break
  static const extXCueOut = '#EXT-X-CUE-OUT';

  /// Indicates the end time of a commercial break
  static const extXCueIn = '#EXT-X-CUE-IN';

  /// Identifies a group of alternate renditions
  static const extXRenditionGroup = '#EXT-X-RENDITION-GROUP';

  /// Specifies the mapping from a rendition to a program
  static const extXRenditionToProgram = '#EXT-X-RENDITION-TO-PROGRAM';

  /// Specifies the offset of the date and time for a live event
  static const extXProgramDateTimeOffset = '#EXT-X-PROGRAM-DATE-TIME-OFFSET';

  /// Specifies a unique identifier for a media file or playlist
  static const extXContentIdentifier = '#EXT-X-CONTENT-IDENTIFIER';

  /// Specifies the identifier for a date range
  static const extXDateRangeId = '#EXT-X-DATERANGE-ID';

  /// Specifies a command to be sent to the server
  static const extXServerControlCommand = '#EXT-X-SERVER-CONTROL-COMMAND';

  /// Specifies the amount of time to hold back media files
  static const extXServerControlHoldBack = '#EXT-X-SERVER-CONTROL-HOLD-BACK';

  /// Specifies the amount of time to hold back partial media files
  static const extXServerControlPartHoldBack = '#EXT-X-SERVER-CONTROL-PART-HOLD-BACK';

  /// Specifies the maximum duration of media files to send
  static const extXServerControlMaxDuration = '#EXT-X-SERVER-CONTROL-MAX-DURATION';

  /// Specifies the maximum age of cached media files
  static const extXServerControlMaxAge = '#EXT-X-SERVER-CONTROL-MAX-AGE';

  /// Specifies the earliest time to skip to in a media file
  static const extXServerControlCanSkipUntil = '#EXT-X-SERVER-CONTROL-CAN-SKIP-UNTIL';

  /// Specifies whether the client can skip date ranges
  static const extXServerControlCanSkipDateRanges = '#EXT-X-SERVER-CONTROL-CAN-SKIP-DATERANGES';

  /// Specifies the duration of a live event
  static const extXStartDuration = '#EXT-X-START-DURATION';

  /// Specifies the duration of a partial cue-out
  static const extXCueOutContDuration = '#EXT-X-CUE-OUT-CONT-DURATION';

  /// Specifies the date and time of the server
  static const extXProgramDateTimeServer = '#EXT-X-PROGRAM-DATE-TIME-SERVER';

  /// Specifies a content key for a media file or playlist
  static const extXContentKey = '#EXT-X-CONTENT-KEY';

  /// Indicates a discontinuity between two media items
  static const extXDiscontinuityItem = '#EXT-X-DISCONTINUITY-ITEM';

  /// Specifies an SCTE-35 cue message
  static const extXScte35 = '#EXT-X-SCTE35';

  /// Indicates the PTS value of a cue-out
  static const extXCueOutPts = '#EXT-X-CUE-OUT-PTS';

  /// Indicates the PTS value of a cue-in
  static const extXCueInPts = '#EXT-X-CUE-IN-PTS';

  /// Indicates the PTS value of a cue-start
  static const extXCueStartPts = '#EXT-X-CUE-START-PTS';

  /// Indicates the PTS value of a cue-end
  static const extXCueEndPts = '#EXT-X-CUE-END-PTS';

  /// Indicates the PTS value of a partial cue-out
  static const extXCueOutContPts = '#EXT-X-CUE-OUT-CONT-PTS';

  /// Specifies the availability and properties of alternate media renditions
  static const extXMediaRenditionReport = '#EXT-X-MEDIA-RENDITION-REPORT';

  /// Indicates the relative start time of a cue-out
  static const extXRelativeCueOut = '#EXT-X-RELATIVE-CUE-OUT';

  /// Indicates the relative end time of a cue-in
  static const extXRelativeCueIn = '#EXT-X-RELATIVE-CUE-IN';

  /// Indicates the relative start time and duration of a partial cue-out
  static const extXRelativeCueOutCont = '#EXT-X-RELATIVE-CUE-OUT-CONT';

  /// Specifies the byte range of a media initialization section
  static const extXMapByteRange = '#EXT-X-MAP-BYTERANGE';

  /// Specifies the duration of a cue-out
  static const extXCueOutDuration = '#EXT-X-CUE-OUT-DURATION';

  /// Specifies the identifier of a partial cue-out
  static const extXCueOutContId = '#EXT-X-CUE-OUT-CONT-ID';

  /// Specifies the duration of a cue-in
  static const extXCueInDuration = '#EXT-X-CUE-IN-DURATION';

  /// Specifies the duration of a cue-start
  static const extXCueStartDuration = '#EXT-X-CUE-START-DURATION';

  /// Specifies the duration of a cue-end
  static const extXCueEndDuration = '#EXT-X-CUE-END-DURATION';

  /// Specifies the duration of a partial cue-out in milliseconds
  static const extXCueOutContDurationMs = '#EXT-X-CUE-OUT-CONT-DURATION-MS';

  // ── TVG Tags ──────────────────────────────────────────────────────────

  /// Specifies the unique identifier of the current media file
  static const tvgId = 'tvg-id';

  /// Specifies the name of the current channel
  static const tvgName = 'tvg-name';

  /// Specifies the URL of the logo for the current channel
  static const tvgLogo = 'tvg-logo';

  /// Specifies the country code of the current channel
  static const tvgCountry = 'tvg-country';

  /// Specifies the language code of the current channel
  static const tvgLanguage = 'tvg-language';

  /// Specifies the type of the current channel (e.g. news, sports, entertainment)
  static const tvgType = 'tvg-type';

  /// Specifies the URL of the website for the current channel
  static const tvgUrl = 'tvg-url';

  /// Specifies the name of the group that the current channel belongs to
  static const tvgGroup = 'tvg-group';

  /// Specifies the unique identifier of the EPG for the current channel
  static const tvgEpgId = 'tvg-epgid';

  /// Specifies the URL of the EPG for the current channel
  static const tvgEpgUrl = 'tvg-epgurl';

  /// Specifies the time shift (in hours) of the EPG for the current channel
  static const tvgEpgShift = 'tvg-epgshift';

  /// Specifies whether the current channel is a radio channel
  static const tvgRadio = 'tvg-radio';

  /// Specifies the time shift (in hours) of the current channel
  static const tvgTimeShift = 'tvg-timeshift';

  /// Specifies whether the current channel has an archive
  static const tvgArchive = 'tvg-archive';

  /// Specifies the URL of the TVG playlist for the current channel
  static const tvgTvgPlaylist = 'tvg-tvgplaylist';

  /// Specifies the aspect ratio of the current channel
  static const tvgAspectRatio = 'tvg-aspect-ratio';

  /// Specifies the audio track for the current channel
  static const tvgAudioTrack = 'tvg-audio-track';

  /// Specifies whether the current channel has closed captions
  static const tvgClosedCaptions = 'tvg-closed-captions';

  /// Specifies the language of the closed captions for the current channel
  static const tvgClosedCaptionsLanguage = 'tvg-closed-captions-language';

  /// Specifies the type of the closed captions for the current channel
  static const tvgClosedCaptionsType = 'tvg-closed-captions-type';

  /// Specifies the content type for the current channel (e.g. movie, TV show, documentary)
  static const tvgContentType = 'tvg-content-type';

  /// Specifies the copyright information for the current channel
  static const tvgCopyright = 'tvg-copyright';

  /// Specifies the duration of the current media file
  static const tvgDuration = 'tvg-duration';

  /// Specifies a discontinuity point in the media file
  static const tvgExtXDiscontinuity = 'tvg-ext-x-discontinuity';

  /// Specifies the end of the media file
  static const tvgExtXEndList = 'tvg-ext-x-endlist';

  /// Specifies the encryption key for the media file
  static const tvgExtXKey = 'tvg-ext-x-key';

  /// Specifies the sequence number for the media file
  static const tvgExtXMediaSequence = 'tvg-ext-x-media-sequence';

  /// Specifies the date and time of the current media file
  static const tvgExtXProgramDateTime = 'tvg-ext-x-program-date-time';

  /// Specifies the version of the M3U8 playlist format being used
  static const tvgExtXVersion = 'tvg-ext-x-version';

  /// Specifies the time gap (in seconds) between media files
  static const tvgGap = 'tvg-gap';

  /// Specifies whether the media files are independent segments
  static const tvgIndependentSegments = 'tvg-independent-segments';

  /// Specifies the media type for the current media file (e.g. video, audio)
  static const tvgMedia = 'tvg-media';

  /// Specifies the sequence number for the media file
  static const tvgMediaSequence = 'tvg-media-sequence';

  /// Specifies the type of playlist being used (dynamic or static)
  static const tvgPlaylistType = 'tvg-playlist-type';

  /// Specifies the start time (in seconds) for the current media file
  static const tvgStart = 'tvg-start';

  /// Specifies the maximum duration (in seconds) of the media files
  static const tvgTargetDuration = 'tvg-targetduration';

  /// Specifies the byte range of the current media file
  static const tvgXByteRange = 'tvg-x-byterange';

  /// Specifies the end of the media file
  static const tvgXEndList = 'tvg-x-endlist';

  /// Specifies the encryption key for the media file
  static const tvgXKey = 'tvg-x-key';

  /// Specifies the sequence number for the media file
  static const tvgXMediaSequence = 'tvg-x-media-sequence';

  /// Specifies the date and time of the current media file
  static const tvgXProgramDateTime = 'tvg-x-program-date-time';

  /// Specifies the version of the M3U8 playlist format being used
  static const tvgXVersion = 'tvg-x-version';

  /// Specifies the resolution of the current media file
  static const tvgResolution = 'tvg-resolution';

  /// Specifies the frame rate of the current media file
  static const tvgFrameRate = 'tvg-framerate';

  /// Specifies the season number for a TV show episode
  static const tvgSeason = 'tvg-season';

  /// Specifies the episode number for a TV show episode
  static const tvgEpisode = 'tvg-episode';

  // ── Common IPTV Attributes ────────────────────────────────────────────

  /// Specifies the group title for the current channel
  static const groupTitle = 'group-title';

  /// Specifies the channel number for ordering in the player
  static const tvgChNo = 'tvg-chno';

  /// Specifies whether the channel supports recording
  static const tvgRec = 'tvg-rec';

  /// Specifies the parental control code for restricted content
  static const parentCode = 'parent-code';

  // ── VOD / Movie & TV Show Tags ────────────────────────────────────────

  /// Specifies the IMDB identifier for a movie or TV show
  static const imdbId = 'imdb-id';

  /// Specifies the TMDB (The Movie Database) identifier for a movie or TV show
  static const tmdbId = 'tmdb-id';

  /// Specifies the TVDB (TheTVDB) identifier for a TV series
  static const tvdbId = 'tvdb-id';

  /// Specifies the release year of the movie or TV show
  static const year = 'year';

  /// Specifies the genre of the movie or TV show (e.g. Action, Comedy, Drama)
  static const genre = 'genre';

  /// Specifies the content rating (e.g. PG, PG-13, R, TV-MA)
  static const rating = 'rating';

  /// Specifies the plot or description of the movie or episode
  static const plot = 'plot';

  /// Specifies the cast members of the movie or TV show
  static const cast = 'cast';

  /// Specifies the director of the movie or TV show
  static const director = 'director';

  /// Specifies the URL of the poster image for a movie or TV show
  static const tvgPoster = 'tvg-poster';

  /// Specifies the URL of the backdrop/fanart image for a movie or TV show
  static const tvgBackdrop = 'tvg-backdrop';

  /// Specifies the season number for a TV show episode
  static const seasonNum = 'season-num';

  /// Specifies the episode number for a TV show episode
  static const episodeNum = 'episode-num';

  /// Specifies the series name that the episode belongs to
  static const seriesName = 'series-name';

  /// Specifies the original title of the movie or TV show (for foreign content)
  static const originalTitle = 'original-title';

  /// Specifies the subtitle language available for the content
  static const subtitleLanguage = 'subtitle-language';

  /// Specifies the audio language available for the content
  static const audioLanguage = 'audio-language';

  // ── Catchup / Timeshift Tags ──────────────────────────────────────────

  /// Specifies the catchup mode (e.g. default, append, shift, flussonic)
  static const catchup = 'catchup';

  /// Specifies the URL template for catchup/timeshift playback
  static const catchupSource = 'catchup-source';

  /// Specifies the number of days of catchup content available
  static const catchupDays = 'catchup-days';

  // ── Player-Specific EXT Tags ──────────────────────────────────────────

  /// Extended group tag for grouping entries
  static const extGrp = '#EXTGRP';

  /// VLC-specific playback option (e.g. http-user-agent, http-referrer)
  static const extVlcOpt = '#EXTVLCOPT';

  /// Kodi-specific property (e.g. inputstream, DRM license keys)
  static const kodiProp = '#KODIPROP';

  // ── HTTP / Stream Properties ──────────────────────────────────────────

  /// Specifies the HTTP User-Agent header for the stream request
  static const userAgent = 'user-agent';

  /// Specifies the HTTP Referrer header for the stream request
  static const referrer = 'referrer';
}
