import 'package:dart_mappable/dart_mappable.dart';

part 'season.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Season with SeasonMappable {
  final DateTime? airDate;
  final int? episodeCount;
  final int? id;
  final String? name;
  final String? overview;
  final int? seasonNumber;
  final double? voteAverage;
  final String? cover;
  final String? coverBig;

  Season({
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
}
