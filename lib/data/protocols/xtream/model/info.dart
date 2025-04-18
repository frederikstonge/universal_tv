/// Represents the information about a series in Xtream Code.
@JsonSerializable()
@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeInfo {
  /// Creates a new instance of [XTremeCodeInfo].
  XTremeCodeInfo({
    this.name,
    this.title,
    this.year,
    this.cover,
    this.plot,
    this.cast,
    this.director,
    this.genre,
    this.releaseDate,
    this.lastModified,
    this.rating,
    this.rating5based,
    this.backdropPath = const [],
    this.youtubeTrailer,
    this.episodeRunTime,
    this.categoryId,
    this.categoryIds = const [],
  });

  /// Creates a new instance of [XTremeCodeInfo] from a JSON object.
  factory XTremeCodeInfo.fromJson(Map<String, dynamic> json) => _$XTremeCodeInfoFromJson(json);

  /// The name of the series.
  final String? name;

  /// The title of the series.
  final String? title;

  /// The year of the series.
  final String? year;

  /// The cover image of the series.
  final String? cover;

  /// The plot of the series.
  final String? plot;

  /// The cast of the series.
  final String? cast;

  /// The director of the series.
  final String? director;

  /// The genre of the series.
  final String? genre;

  /// The release date of the series.
  @JsonKey(name: 'releaseDate', fromJson: dateTimeFromString)
  final DateTime? releaseDate;

  /// The last modified date of the series.
  @JsonKey(name: 'last_modified', fromJson: dateTimeFromEpochSeconds)
  final DateTime? lastModified;

  /// The rating of the series.
  @JsonKey(fromJson: dynamicToDoubleConverter)
  final double? rating;

  /// The rating of the series based on a 5-point scale.
  @JsonKey(name: 'rating_5based', fromJson: dynamicToDoubleConverter)
  final double? rating5based;

  /// The backdrop path of the series.
  @JsonKey(name: 'backdrop_path')
  final List<String>? backdropPath;

  /// The YouTube trailer of the series.
  @JsonKey(name: 'youtube_trailer')
  final String? youtubeTrailer;

  /// The runtime of each episode in the series.
  @JsonKey(name: 'episode_run_time', fromJson: dynamicToIntConverter)
  final int? episodeRunTime;

  /// The ID of the category of the series.
  @JsonKey(name: 'category_id', fromJson: dynamicToIntConverter)
  final int? categoryId;

  /// The IDs of the categories of the series.
  @JsonKey(name: 'category_ids')
  final List<int>? categoryIds;

  /// Converts this instance into a JSON object.
  Map<String, dynamic> toJson() => _$XTremeCodeInfoToJson(this);
}
