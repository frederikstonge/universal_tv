import 'package:dart_mappable/dart_mappable.dart';
import '../../models/episode_details.dart';
import '../../models/tv_show_details.dart';
import '../state_status.dart';

part 'tv_show_details_state.mapper.dart';

@MappableClass()
class TvShowDetailsState with TvShowDetailsStateMappable {
  final StateStatus status;
  final TvShowDetails? tvShow;
  final int? selectedSeason;
  final EpisodeDetails? selectedEpisode;

  TvShowDetailsState({required this.status, this.tvShow, this.selectedSeason, this.selectedEpisode});
}
