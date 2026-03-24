import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import '../extensions/m3u_entry_extensions.dart';
import 'repositories/m3u_entry.dart';

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

  factory MovieDetails.fromXtVodDetails(XtVodDetails item, String providerName) {
    return MovieDetails(
      streamId: item.streamId.toString(),
      name: item.name,
      plot: item.plot,
      rating: item.rating,
      year: item.year,
      duration: item.duration,
      posterUrl: item.posterUrl,
      providerName: providerName,
    );
  }

  factory MovieDetails.fromM3uEntry(M3uEntry entry) {
    return MovieDetails(
      streamId: entry.id,
      name: entry.name,
      plot: entry.plot,
      rating: entry.rating,
      year: entry.year,
      duration: entry.duration,
      posterUrl: entry.posterUrl,
      providerName: entry.providerName,
    );
  }
}
