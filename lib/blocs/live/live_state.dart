import 'package:dart_mappable/dart_mappable.dart';

import '../../models/category.dart';
import '../../models/live_channel.dart';
import '../../models/xmltv_programme.dart';
import '../state_status.dart';

part 'live_state.mapper.dart';

@MappableEnum()
enum LiveSortOrder { name, category }

@MappableClass()
class LiveState with LiveStateMappable {
  final StateStatus status;
  final List<LiveChannel>? items;
  final List<Category>? categories;
  final Map<String, List<XmltvProgramme>>? epg;
  final LiveChannel? selectedChannel;
  final LiveSortOrder sortOrder;

  LiveState({
    required this.status,
    this.items = const [],
    this.categories = const [],
    this.epg = const {},
    this.selectedChannel,
    this.sortOrder = LiveSortOrder.category,
  });
}
