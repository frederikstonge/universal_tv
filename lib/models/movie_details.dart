import 'package:dart_mappable/dart_mappable.dart';
import 'package:xtream_code_client/xtream_code_client.dart';

import '../extensions/m3u_entry_extensions.dart';
import 'm3u/m3u_entry.dart';
import 'tmdb/tmdb_entry.dart';

part 'movie_details.mapper.dart';

@MappableClass()
class MovieDetails with MovieDetailsMappable {
  final String streamId;
  final String name;
  final String? plot;
  final double? rating;
  final int? year;
  final Duration? duration;
  final String? posterUrl;
  final String providerName;

  const MovieDetails({
    required this.streamId,
    required this.name,
    required this.providerName,
    this.plot,
    this.rating,
    this.year,
    this.duration,
    this.posterUrl,
  });

  factory MovieDetails.fromXtVodDetails(VodInfo item, String providerName) {
    return MovieDetails(
      streamId: item.movieData.streamId.toString(),
      name: item.movieData.name.toString(),
      plot: item.info.plot,
      rating: item.info.rating,
      year: item.info.releaseDate?.year,
      duration: item.info.duration != null ? Duration(seconds: int.parse(item.info.duration!)) : null,
      posterUrl: item.info.movieImage ?? item.info.coverBig ?? item.info.backdropPath?.firstOrNull,
      providerName: providerName,
    );
  }

  factory MovieDetails.fromM3uEntry(M3uEntry entry, {TmdbEntry? tmdbEntry, String? tmdbPosterUrl}) {
    return MovieDetails(
      streamId: entry.id,
      name: tmdbEntry?.title ?? entry.name,
      plot: tmdbEntry?.overview ?? entry.plot,
      rating: tmdbEntry?.voteAverage ?? entry.rating,
      year: tmdbEntry?.releaseDate != null ? DateTime.tryParse(tmdbEntry!.releaseDate!)?.year : entry.year,
      duration: entry.duration,
      posterUrl: tmdbPosterUrl ?? entry.posterUrl,
      providerName: entry.providerName,
    );
  }
}
