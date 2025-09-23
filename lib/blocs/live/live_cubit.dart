import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../iptv_service/iptv_service_cubit.dart';
import '../state_status.dart';
import 'live_state.dart';

class LiveCubit extends Cubit<LiveState> {
  final IptvServiceCubit iptvServiceCubit;

  StreamSubscription? _iptvSubscription;

  LiveCubit({required this.iptvServiceCubit}) : super(LiveState()) {
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
    final liveChannelsFuture = iptvServiceCubit.getLiveStreams();
    final categoriesFuture = iptvServiceCubit.getLiveCategories();

    await Future.wait([liveChannelsFuture, categoriesFuture]);

    emit(LiveState(items: await liveChannelsFuture, categories: await categoriesFuture));
  }
}
