import 'package:dart_mappable/dart_mappable.dart';

part 'info.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Info with InfoMappable {
  final String? name;
  final String? title;
  final String? year;
  final String? cover;
  final String? plot;
  final String? cast;
  final String? director;
  final String? genre;
  final DateTime? releaseDate;
  final DateTime? lastModified;
  final double? rating;
  final double? rating5based;
  final List<String>? backdropPath;
  final String? youtubeTrailer;
  final int? episodeRunTime;
  final int? categoryId;
  final List<int>? categoryIds;

  Info({
    this.name,
    this.title,
    this.year,
    this.cover,
    this.plot,
    this.cast,
    this.director,
    this.genre,
    this.releaseDate,
    this.lastModified,
    this.rating,
    this.rating5based,
    this.backdropPath = const [],
    this.youtubeTrailer,
    this.episodeRunTime,
    this.categoryId,
    this.categoryIds = const [],
  });
}
