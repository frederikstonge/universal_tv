import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/episode_details.dart';
import '../iptv_service/iptv_service_cubit.dart';
import '../state_status.dart';
import 'tv_show_details_state.dart';

class TvShowDetailsCubit extends Cubit<TvShowDetailsState> {
  final IptvServiceCubit iptvServiceCubit;

  TvShowDetailsCubit({required this.iptvServiceCubit}) : super(TvShowDetailsState(status: StateStatus.initial));

  Future<void> load(String providerName, int tvShowId) async {
    emit(state.copyWith(status: StateStatus.loading));
    try {
      final tvShowDetails = await iptvServiceCubit.getTvShowDetails(providerName, tvShowId);
      final selectedSeason = tvShowDetails?.seasons.keys.firstOrNull;
      final selectedEpisode = tvShowDetails?.seasons[selectedSeason]?.firstOrNull;

      emit(
        state.copyWith(
          status: StateStatus.success,
          tvShow: tvShowDetails,
          selectedSeason: selectedSeason,
          selectedEpisode: selectedEpisode,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: StateStatus.failure));
    }
  }

  void selectSeason(int season) {
    final selectedEpisode = state.tvShow?.seasons[season]?.firstOrNull;
    emit(state.copyWith(selectedSeason: season, selectedEpisode: selectedEpisode));
  }

  void selectEpisode(EpisodeDetails episode) {
    emit(state.copyWith(selectedEpisode: episode));
  }

  void clear() {
    emit(state.copyWith(status: StateStatus.success, tvShow: null, selectedSeason: null, selectedEpisode: null));
  }
}
