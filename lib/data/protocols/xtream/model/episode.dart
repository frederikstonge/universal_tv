/// Represents an episode in Xtream Code.
@JsonSerializable()
@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeEpisode {
  /// Creates a new instance of [XTremeCodeEpisode].
  XTremeCodeEpisode({
    required this.id,
    required this.episodeNum,
    required this.title,
    required this.containerExtension,
    required this.info,
    required this.subtitles,
    required this.customSid,
    required this.added,
    required this.season,
    required this.directSource,
  });

  /// Creates a new instance of [XTremeCodeEpisode] from a JSON object.
  factory XTremeCodeEpisode.fromJson(Map<String, dynamic> json) => _$XTremeCodeEpisodeFromJson(json);

  /// The ID of the episode.
  @JsonKey(fromJson: dynamicToIntConverter)
  final int? id;

  /// The number of the episode.
  @JsonKey(name: 'episode_num', fromJson: dynamicToIntConverter)
  final int? episodeNum;

  /// The title of the episode.
  final String? title;

  /// The container extension of the episode.
  @JsonKey(name: 'container_extension')
  final String? containerExtension;

  /// The information about the episode.
  final XTremeCodeEpisodeInfo info;

  /// The subtitles of the episode.
  final List<String>? subtitles;

  /// The custom SID of the episode.
  @JsonKey(name: 'custom_sid')
  final String? customSid;

  /// The date when the episode was added.
  @JsonKey(fromJson: dateTimeFromEpochSeconds)
  final DateTime? added;

  /// The season of the episode.
  @JsonKey(fromJson: dynamicToIntConverter)
  final int? season;

  /// The direct source of the episode.
  @JsonKey(name: 'direct_source')
  final String? directSource;

  /// Converts this instance into a JSON object.
  Map<String, dynamic> toJson() => _$XTremeCodeEpisodeToJson(this);
}
