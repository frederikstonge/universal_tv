import 'package:dart_mappable/dart_mappable.dart';

part 'info_vod.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeInfoVod with XTremeCodeInfoVodMappable {
  final String? kinopoiskUrl;
  final int? tmdbId;
  final String? name;
  final String? oName;
  final String? coverBig;
  final String? movieImage;
  final DateTime? releaseDate;
  final int? episodeRunTime;
  final String? youtubeTrailer;
  final String? director;
  final String? actors;
  final String? cast;
  final String? description;
  final String? plot;
  final String? age;
  final String? mpaaRating;
  final int? ratingCountKinopoisk;
  final String? country;
  final String? genre;
  final List<String>? backdropPath;
  final int? durationSecs;
  final String? duration;
  final int? bitrate;
  final double? rating;
  final DateTime? releasedate;
  final List<dynamic>? subtitles;

  XTremeCodeInfoVod({
    required this.kinopoiskUrl,
    required this.tmdbId,
    required this.name,
    required this.oName,
    required this.coverBig,
    required this.movieImage,
    required this.releaseDate,
    required this.episodeRunTime,
    required this.youtubeTrailer,
    required this.director,
    required this.actors,
    required this.cast,
    required this.description,
    required this.plot,
    required this.age,
    required this.mpaaRating,
    required this.ratingCountKinopoisk,
    required this.country,
    required this.genre,
    required this.backdropPath,
    required this.durationSecs,
    required this.duration,
    required this.bitrate,
    required this.rating,
    required this.releasedate,
    required this.subtitles,
  });
}
