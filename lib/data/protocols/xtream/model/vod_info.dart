import 'package:dart_mappable/dart_mappable.dart';

import 'info_vod.dart';
import 'movie_data.dart';

part 'vod_info.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeVodInfo with XTremeCodeVodInfoMappable {
  final XTremeCodeInfoVod? info;
  final XTremeCodeMovieData? movieData;

  XTremeCodeVodInfo({required this.info, required this.movieData});
}
