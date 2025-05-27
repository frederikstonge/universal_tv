import 'package:dart_mappable/dart_mappable.dart';

import 'episode.dart';
import 'info.dart';
import 'season.dart';

part 'series_info.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class SeriesInfo with SeriesInfoMappable {
  final List<Season>? seasons;
  final Info? info;
  final Map<String, List<Episode>>? episodes;

  SeriesInfo({required this.seasons, required this.info, required this.episodes});
}
