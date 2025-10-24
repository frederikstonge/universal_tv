import 'package:dart_mappable/dart_mappable.dart';

import '../../models/category.dart';
import '../../models/live_channel.dart';
import '../state_status.dart';

part 'live_state.mapper.dart';

@MappableClass()
class LiveState with LiveStateMappable {
  final StateStatus status;
  final List<LiveChannel>? items;
  final List<Category>? categories;
  final LiveChannel? selectedChannel;

  LiveState({required this.status, this.items = const [], this.categories = const [], this.selectedChannel});
}
