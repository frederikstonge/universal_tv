import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

part 'movie_details.mapper.dart';

@MappableClass()
class MovieDetails with MovieDetailsMappable {
  final int streamId;
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
    this.plot,
    this.rating,
    this.year,
    this.duration,
    this.posterUrl,
    required this.providerName,
  });

  factory MovieDetails.fromXtVodDetails(XtVodDetails item, String providerName) {
    return MovieDetails(
      streamId: item.streamId,
      name: item.name,
      plot: item.plot,
      rating: item.rating,
      year: item.year,
      duration: item.duration,
      posterUrl: item.posterUrl,
      providerName: providerName,
    );
  }
}
