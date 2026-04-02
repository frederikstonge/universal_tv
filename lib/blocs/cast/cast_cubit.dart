import 'dart:async';

import 'package:dart_cast/dart_cast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../state_status.dart';
import 'cast_state.dart';

class CastCubit extends Cubit<CastState> {
  final CastService castService;
  CastCubit({required this.castService}) : super(CastState(status: StateStatus.initial));

  Future<void> startDiscovery() async {
    emit(state.copyWith(status: StateStatus.loading));
    castService.startDiscovery().listen((event) {
      final devices = List<CastDevice>.from(state.devices);
      devices.addAll(event.where((e) => devices.every((d) => d.id != e.id)));
      emit(state.copyWith(devices: devices, status: StateStatus.success));
    });
  }

  Future<void> stopDiscovery() async {
    emit(state.copyWith(status: StateStatus.loading));
    castService.stopDiscovery();
    emit(state.copyWith(devices: [], status: StateStatus.success));
  }

  Future<void> connect(CastDevice device) async {
    emit(state.copyWith(status: StateStatus.loading));
    final session = await castService.connect(device);
    emit(state.copyWith(selectedDevice: device, session: session, status: StateStatus.success));
  }

  Future<void> disconnect(CastSession session) async {
    emit(state.copyWith(status: StateStatus.loading));
    await session.disconnect();
    session.dispose();
    emit(state.copyWith(selectedDevice: null, session: null, status: StateStatus.success));
  }
}
