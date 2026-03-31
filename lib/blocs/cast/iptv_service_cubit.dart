import 'dart:async';

import 'package:dart_cast/dart_cast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../state_status.dart';
import 'cast_state.dart';

class CastCubit extends Cubit<CastState> {
  final CastService castService;
  CastCubit({required this.castService}) : super(CastState(status: StateStatus.initial));

  Future<void> initialize() async {}
}
