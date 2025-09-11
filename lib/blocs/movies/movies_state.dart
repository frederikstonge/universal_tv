import 'package:dart_mappable/dart_mappable.dart';

import '../../models/movie_item.dart';

part 'movies_state.mapper.dart';

@MappableClass()
class MoviesState with MoviesStateMappable {
  final List<MovieItem>? items;

  MoviesState({this.items = const []});
}
