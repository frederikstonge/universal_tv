import 'package:dart_mappable/dart_mappable.dart';
import 'package:xtream_code_client/xtream_code_client.dart';

import '../extensions/m3u_entry_extensions.dart';
import 'episode_details.dart';
import 'repositories/m3u_entry.dart';

part 'tv_show_details.mapper.dart';

@MappableClass()
class TvShowDetails with TvShowDetailsMappable {
  final String seriesId;
  final String name;
  final String? plot;
  final Map<int, List<EpisodeDetails>> seasons; // seasonNumber -> episodes
  final String? posterUrl;
  final String providerName;

  const TvShowDetails({
    required this.seriesId,
    required this.name,
    required this.seasons,
    required this.providerName,
    this.plot,
    this.posterUrl,
  });

  factory TvShowDetails.fromXtSeriesItem(SeriesInfo item, String providerName) {
    return TvShowDetails(
      seriesId: item.info.name!.toString(),
      name: item.info.name!,
      plot: item.info.plot,
      seasons:
          item.episodes?.map(
            (k, v) => MapEntry(int.parse(k), v.map((e) => EpisodeDetails.fromXtEpisode(e, providerName)).toList()),
          ) ??
          {},

      posterUrl: item.info.cover,
      providerName: providerName,
    );
  }

  factory TvShowDetails.fromM3uEntries(List<M3uEntry> entries) {
    final first = entries.first;
    final episodesBySeasons = <int, List<EpisodeDetails>>{};
    for (final entry in entries) {
      final season = entry.seasonNumber;
      episodesBySeasons.putIfAbsent(season, () => []).add(EpisodeDetails.fromM3uEntry(entry));
    }
    return TvShowDetails(
      seriesId: first.id,
      name: first.seriesName ?? first.name,
      plot: first.plot,
      seasons: episodesBySeasons,
      posterUrl: first.posterUrl,
      providerName: first.providerName,
    );
  }
}
