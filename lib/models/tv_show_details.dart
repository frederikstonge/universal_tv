import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import 'episode_details.dart';

part 'tv_show_details.mapper.dart';

@MappableClass()
class TvShowDetails with TvShowDetailsMappable {
  final int seriesId;
  final String name;
  final String? plot;
  final Map<int, List<EpisodeDetails>> seasons; // seasonNumber -> episodes
  final String? posterUrl;
  final String providerName;

  const TvShowDetails({
    required this.seriesId,
    required this.name,
    this.plot,
    required this.seasons,
    this.posterUrl,
    required this.providerName,
  });

  factory TvShowDetails.fromXtSeriesItem(XtSeriesDetails item, String providerName) {
    return TvShowDetails(
      seriesId: item.seriesId,
      name: item.name,
      plot: item.plot,
      seasons: item.seasons.map(
        (i, s) => MapEntry(i, s.map((e) => EpisodeDetails.fromXtEpisode(e, providerName)).toList()),
      ),
      posterUrl: item.posterUrl,
      providerName: providerName,
    );
  }
}
