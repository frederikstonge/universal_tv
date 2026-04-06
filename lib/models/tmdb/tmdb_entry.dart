import 'package:dart_mappable/dart_mappable.dart';

part 'tmdb_entry.mapper.dart';

@MappableClass()
class TmdbEntry with TmdbEntryMappable {
  final bool? adult;
  @MappableField(key: 'backdrop_path')
  final String? backdropPath;
  final int? id;
  final String? title;
  @MappableField(key: 'original_language')
  final String? originalLanguage;
  @MappableField(key: 'original_title')
  final String? originalTitle;
  final String? overview;
  @MappableField(key: 'poster_path')
  final String? posterPath;
  @MappableField(key: 'media_type')
  final String? mediaType;
  @MappableField(key: 'genre_ids')
  final List<int>? genreIds;
  @MappableField(key: 'popularity')
  final double? popularity;
  @MappableField(key: 'release_date')
  final String? releaseDate;
  @MappableField(key: 'video')
  final bool? video;
  @MappableField(key: 'vote_average')
  final double? voteAverage;
  @MappableField(key: 'vote_count')
  final int? voteCount;

  const TmdbEntry({
    this.adult,
    this.backdropPath,
    this.id,
    this.title,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.mediaType,
    this.genreIds,
    this.popularity,
    this.releaseDate,
    this.video,
    this.voteAverage,
    this.voteCount,
  });
}
