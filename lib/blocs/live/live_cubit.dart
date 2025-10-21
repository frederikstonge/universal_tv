import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../iptv_service/iptv_service_cubit.dart';
import '../state_status.dart';
import 'live_state.dart';

class LiveCubit extends Cubit<LiveState> {
  final IptvServiceCubit iptvServiceCubit;

  StreamSubscription? _iptvSubscription;

  LiveCubit({required this.iptvServiceCubit}) : super(LiveState(status: StateStatus.initial)) {
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
    if (iptvServiceCubit.state.status != StateStatus.success) {
      return;
    }

    emit(state.copyWith(status: StateStatus.loading));
    final liveChannelsFuture = iptvServiceCubit.getLiveStreams();
    final categoriesFuture = iptvServiceCubit.getLiveCategories();

    await Future.wait([liveChannelsFuture, categoriesFuture]);

    emit(
      state.copyWith(status: StateStatus.success, items: await liveChannelsFuture, categories: await categoriesFuture),
    );
  }
}
