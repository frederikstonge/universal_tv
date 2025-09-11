import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

part 'live_state.mapper.dart';

@MappableClass()
class LiveState with LiveStateMappable {
  final List<XtLiveChannel>? items;

  LiveState({this.items = const []});
}
