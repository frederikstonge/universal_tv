import 'package:flutter_bloc/flutter_bloc.dart';

import 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit() : super(MoviesState());
}
