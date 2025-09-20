import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../iptv_service/iptv_service_cubit.dart';
import 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  final IptvServiceCubit iptvServiceCubit;

  StreamSubscription? _iptvSubscription;

  MoviesCubit({required this.iptvServiceCubit}) : super(MoviesState()) {
    _iptvSubscription = iptvServiceCubit.stream.listen((_) {
      load();
    });
  }

  @override
  Future<void> close() async {
    await _iptvSubscription?.cancel();
    _iptvSubscription = null;
    return super.close();
  }

  Future<void> load() async {
    final moviesFuture = iptvServiceCubit.getMovies();
    final categoriesFuture = iptvServiceCubit.getMovieCategories();

    await Future.wait([moviesFuture, categoriesFuture]);

    emit(MoviesState(items: await moviesFuture, categories: await categoriesFuture));
  }
}
