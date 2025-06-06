import 'package:dart_mappable/dart_mappable.dart';

import 'info_vod.dart';
import 'movie_data.dart';

part 'vod_info.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class VodInfo with VodInfoMappable {
  final InfoVod? info;
  final MovieData? movieData;

  VodInfo({required this.info, required this.movieData});
}
