@JsonSerializable()
@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeSeason {
  /// Creates a new instance of [XTremeCodeSeason].
  XTremeCodeSeason({
    required this.id,
    this.airDate,
    this.episodeCount,
    this.name,
    this.overview,
    this.seasonNumber,
    this.voteAverage,
    this.cover,
    this.coverBig,
  });

  /// Creates a new instance of [XTremeCodeSeason] from a JSON object.
  factory XTremeCodeSeason.fromJson(Map<String, dynamic> json) => _$XTremeCodeSeasonFromJson(json);

  /// The air date of the season.
  @JsonKey(name: 'air_date', fromJson: dateTimeFromString)
  final DateTime? airDate;

  /// The count of episodes in the season.
  @JsonKey(name: 'episode_count', fromJson: dynamicToIntConverter)
  final int? episodeCount;

  /// The ID of the season.
  @JsonKey(fromJson: dynamicToIntConverter)
  final int? id;

  /// The name of the season.
  final String? name;

  /// The overview of the season.
  final String? overview;

  /// The number of the season.
  @JsonKey(name: 'season_number', fromJson: dynamicToIntConverter)
  final int? seasonNumber;

  /// The average vote of the season.
  @JsonKey(name: 'vote_average', fromJson: dynamicToDoubleConverter)
  final double? voteAverage;

  /// The cover image of the season.
  final String? cover;

  /// The big cover image of the season.
  @JsonKey(name: 'cover_big')
  final String? coverBig;

  /// Converts this instance into a JSON object.
  Map<String, dynamic> toJson() => _$XTremeCodeSeasonToJson(this);
}
