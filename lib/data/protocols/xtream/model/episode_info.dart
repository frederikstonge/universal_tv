/// Represents the information about an episode in Xtream Code.
@JsonSerializable()
@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeEpisodeInfo {
  /// Creates a new instance of [XTremeCodeEpisodeInfo].
  XTremeCodeEpisodeInfo({
    required this.tmdbId,
    required this.releaseDate,
    required this.plot,
    required this.durationSecs,
    required this.duration,
    required this.movieImage,
    required this.bitrate,
    required this.rating,
    required this.season,
    required this.coverBig,
  });

  /// Creates a new instance of [XTremeCodeEpisodeInfo] from a JSON object.
  factory XTremeCodeEpisodeInfo.fromJson(Map<String, dynamic> json) => _$XTremeCodeEpisodeInfoFromJson(json);

  /// The ID of the episode in The Movie Database (TMDb).
  @JsonKey(name: 'tmdb_id', fromJson: dynamicToIntConverter)
  final int? tmdbId;

  /// The release date of the episode.
  @JsonKey(name: 'release_date', fromJson: dateTimeFromString)
  final DateTime? releaseDate;

  /// The plot of the episode.
  final String? plot;

  /// The duration of the episode in seconds.
  @JsonKey(name: 'duration_secs', fromJson: dynamicToIntConverter)
  final int? durationSecs;

  /// The duration of the episode.
  final String? duration;

  /// The image of the episode.
  @JsonKey(name: 'movie_image')
  final String? movieImage;

  /// The bitrate of the episode.
  @JsonKey(fromJson: dynamicToIntConverter)
  final int? bitrate;

  /// The rating of the episode.
  @JsonKey(fromJson: dynamicToDoubleConverter)
  final double? rating;

  /// The season of the episode.
  @JsonKey(fromJson: dynamicToIntConverter)
  final int? season;

  /// The big cover image of the episode.
  @JsonKey(name: 'cover_big')
  final String? coverBig;

  /// Converts this instance into a JSON object.
  Map<String, dynamic> toJson() => _$XTremeCodeEpisodeInfoToJson(this);
}
