import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../iptv_service/iptv_service_cubit.dart';
import '../state_status.dart';
import 'tv_shows_state.dart';

class TvShowsCubit extends Cubit<TvShowsState> {
  final IptvServiceCubit iptvServiceCubit;

  StreamSubscription? _iptvSubscription;

  TvShowsCubit({required this.iptvServiceCubit}) : super(TvShowsState(status: StateStatus.initial)) {
    _iptvSubscription = iptvServiceCubit.stream.listen((iptvServiceState) {
      switch (iptvServiceState.status) {
        case StateStatus.success:
          load();
          break;
        case StateStatus.loading:
          emit(state.copyWith(status: StateStatus.loading));
          break;
        default:
          break;
      }
    });
  }

  @override
  Future<void> close() async {
    await _iptvSubscription?.cancel();
    _iptvSubscription = null;
    return super.close();
  }

  Future<void> load() async {
    if (iptvServiceCubit.state.status == StateStatus.loading) {
      return;
    }

    emit(state.copyWith(status: StateStatus.loading));

    try {
      final tvShowsFuture = iptvServiceCubit.getTvShows();
      final categoriesFuture = iptvServiceCubit.getTvShowCategories();

      await Future.wait([tvShowsFuture, categoriesFuture]);

      final tvShows = await tvShowsFuture;
      final categories = await categoriesFuture;

      emit(state.copyWith(status: StateStatus.success, items: tvShows, categories: categories));
    } catch (e) {
      emit(state.copyWith(status: StateStatus.failure));
    }
  }
}
