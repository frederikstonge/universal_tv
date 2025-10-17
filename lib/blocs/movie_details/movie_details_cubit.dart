import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../iptv_service/iptv_service_cubit.dart';
import '../state_status.dart';
import 'movie_details_state.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  final IptvServiceCubit iptvServiceCubit;

  MovieDetailsCubit({required this.iptvServiceCubit}) : super(MovieDetailsState(status: StateStatus.initial));

  Future<void> load(String providerName, int movieId) async {
    emit(state.copyWith(status: StateStatus.loading));
    try {
      final movieDetails = iptvServiceCubit.getMovieDetails(providerName, movieId);
      emit(state.copyWith(status: StateStatus.success, movie: await movieDetails));
    } catch (e) {
      emit(state.copyWith(status: StateStatus.failure));
    }
  }

  void clear() {
    emit(state.copyWith(status: StateStatus.success, movie: null));
  }
}
