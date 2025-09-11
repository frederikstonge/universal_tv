import 'package:dart_mappable/dart_mappable.dart';

import '../../models/live_channel.dart';

part 'live_state.mapper.dart';

@MappableClass()
class LiveState with LiveStateMappable {
  final List<LiveChannel>? items;

  LiveState({this.items = const []});
}
