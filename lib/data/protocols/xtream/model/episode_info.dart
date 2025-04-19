import 'package:dart_mappable/dart_mappable.dart';

part 'episode_info.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeEpisodeInfo with XTremeCodeEpisodeInfoMappable {
  final int? tmdbId;
  final DateTime? releaseDate;
  final String? plot;
  final int? durationSecs;
  final String? duration;
  final String? movieImage;
  final int? bitrate;
  final double? rating;
  final int? season;
  final String? coverBig;

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
}
