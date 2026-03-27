import 'package:dart_mappable/dart_mappable.dart';
import 'package:xtream_code_client/xtream_code_client.dart';

import '../extensions/m3u_entry_extensions.dart';
import 'm3u/m3u_entry.dart';

part 'episode_details.mapper.dart';

@MappableClass()
class EpisodeDetails with EpisodeDetailsMappable {
  final String id;
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
    required this.providerName,
    this.duration,
    this.plot,
  });

  factory EpisodeDetails.fromXtEpisode(Episode item, String providerName) {
    return EpisodeDetails(
      id: item.id.toString(),
      title: item.title ?? item.id.toString(),
      season: item.season!,
      episode: item.episodeNum!,
      duration: item.info.duration != null ? Duration(seconds: int.parse(item.info.duration!)) : null,
      plot: item.info.plot,
      providerName: providerName,
    );
  }

  factory EpisodeDetails.fromM3uEntry(M3uEntry entry) {
    return EpisodeDetails(
      id: entry.id,
      title: entry.name,
      season: entry.seasonNumber,
      episode: entry.episodeNumber,
      duration: entry.duration,
      plot: entry.plot,
      providerName: entry.providerName,
    );
  }
}
