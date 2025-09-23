import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../iptv_service/iptv_service_cubit.dart';
import '../state_status.dart';
import 'tv_shows_state.dart';

class TvShowsCubit extends Cubit<TvShowsState> {
  final IptvServiceCubit iptvServiceCubit;

  StreamSubscription? _iptvSubscription;

  TvShowsCubit({required this.iptvServiceCubit}) : super(TvShowsState()) {
    _iptvSubscription = iptvServiceCubit.stream.listen((iptvServiceState) {
      if (iptvServiceState.status != StateStatus.loading) {
        load();
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
    final tvShowsFuture = iptvServiceCubit.getTvShows();
    final categoriesFuture = iptvServiceCubit.getTvShowCategories();

    await Future.wait([tvShowsFuture, categoriesFuture]);

    emit(TvShowsState(items: await tvShowsFuture, categories: await categoriesFuture));
  }
}
