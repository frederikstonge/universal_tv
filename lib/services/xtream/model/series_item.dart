import 'package:dart_mappable/dart_mappable.dart';

part 'series_item.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class SeriesItem with SeriesItemMappable {
  final int? num;
  final String? name;
  final String? title;
  final String? year;
  final String? streamType;
  final int? seriesId;
  final String? cover;
  final String? plot;
  final String? cast;
  final String? director;
  final String? genre;
  final String? releaseDate;
  final DateTime? lastModified;
  final double? rating;
  final double? rating5based;
  final List<String>? backdropPath;
  final String? youtubeTrailer;
  final int? episodeRunTime;
  final int? categoryId;
  final List<int>? categoryIds;

  SeriesItem({
    required this.num,
    required this.name,
    required this.title,
    required this.year,
    required this.streamType,
    required this.seriesId,
    required this.cover,
    required this.plot,
    required this.cast,
    required this.director,
    required this.genre,
    required this.releaseDate,
    required this.lastModified,
    required this.rating,
    required this.rating5based,
    required this.backdropPath,
    required this.youtubeTrailer,
    required this.episodeRunTime,
    required this.categoryId,
    required this.categoryIds,
  });
}
