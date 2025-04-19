import 'package:dart_mappable/dart_mappable.dart';

import 'episode.dart';
import 'info.dart';
import 'season.dart';

part 'series_info.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeSeriesInfo with XTremeCodeSeriesInfoMappable {
  final List<XTremeCodeSeason>? seasons;
  final XTremeCodeInfo? info;
  final Map<String, List<XTremeCodeEpisode>>? episodes;

  XTremeCodeSeriesInfo({required this.seasons, required this.info, required this.episodes});
}
