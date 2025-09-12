import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

part 'episode_details.mapper.dart';

@MappableClass()
class EpisodeDetails with EpisodeDetailsMappable {
  final int id;
  final String title;
  final int season;
  final int episode;
  final Duration? duration;
  final String? plot;
  final String providerName;

  const EpisodeDetails({
    required this.id,
    required this.title,
    required this.season,
    required this.episode,
    this.duration,
    this.plot,
    required this.providerName,
  });

  factory EpisodeDetails.fromXtEpisode(XtEpisode item, String providerName) {
    return EpisodeDetails(
      id: item.id,
      title: item.title,
      season: item.season,
      episode: item.episode,
      duration: item.duration,
      plot: item.plot,
      providerName: providerName,
    );
  }
}
