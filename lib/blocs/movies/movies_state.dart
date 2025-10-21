import 'package:dart_mappable/dart_mappable.dart';

import '../../models/category.dart';
import '../../models/movie_item.dart';
import '../state_status.dart';

part 'movies_state.mapper.dart';

@MappableClass()
class MoviesState with MoviesStateMappable {
  final StateStatus status;
  final List<MovieItem>? items;
  final List<Category>? categories;

  MoviesState({required this.status, this.items = const [], this.categories = const []});
}
