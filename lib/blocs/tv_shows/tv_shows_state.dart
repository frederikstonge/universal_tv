import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

part 'tv_shows_state.mapper.dart';

@MappableClass()
class TvShowsState with TvShowsStateMappable {
  final List<XtSeriesItem>? items;

  TvShowsState({this.items = const []});
}
