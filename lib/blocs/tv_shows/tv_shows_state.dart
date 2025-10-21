import 'package:dart_mappable/dart_mappable.dart';

import '../../models/category.dart';
import '../../models/tv_show_item.dart';
import '../state_status.dart';

part 'tv_shows_state.mapper.dart';

@MappableClass()
class TvShowsState with TvShowsStateMappable {
  final StateStatus status;
  final List<TvShowItem>? items;
  final List<Category>? categories;

  TvShowsState({required this.status, this.items = const [], this.categories = const []});
}
