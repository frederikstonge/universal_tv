import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

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

  factory TvShowDetails.fromXtSeriesItem(XtSeriesDetails item, String providerName) {
    return TvShowDetails(
      seriesId: item.seriesId.toString(),
      name: item.name,
      plot: item.plot,
      seasons: item.seasons.map(
        (i, s) => MapEntry(i, s.map((e) => EpisodeDetails.fromXtEpisode(e, providerName)).toList()),
      ),
      posterUrl: item.posterUrl,
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
