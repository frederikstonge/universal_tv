import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

part 'movies_state.mapper.dart';

@MappableClass()
class MoviesState with MoviesStateMappable {
  final List<XtVodItem>? items;

  MoviesState({this.items = const []});
}
