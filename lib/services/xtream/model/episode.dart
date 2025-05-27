import 'package:dart_mappable/dart_mappable.dart';

import 'episode_info.dart';

part 'episode.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Episode with EpisodeMappable {
  final int? id;
  final int? episodeNum;
  final String? title;
  final String? containerExtension;
  final EpisodeInfo? info;
  final List<String>? subtitles;
  final String? customSid;
  final DateTime? added;
  final int? season;
  final String? directSource;

  Episode({
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
}
