import 'package:dart_mappable/dart_mappable.dart';

import '../state_status.dart';

part 'cast_state.mapper.dart';

@MappableClass()
class CastState with CastStateMappable {
  final StateStatus status;

  CastState({required this.status});
}
