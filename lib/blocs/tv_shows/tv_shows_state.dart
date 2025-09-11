import 'package:dart_mappable/dart_mappable.dart';

import '../../models/tv_show_item.dart';

part 'tv_shows_state.mapper.dart';

@MappableClass()
class TvShowsState with TvShowsStateMappable {
  final List<TvShowItem>? items;

  TvShowsState({this.items = const []});
}
