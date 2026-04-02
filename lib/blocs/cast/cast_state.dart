import 'package:dart_cast/dart_cast.dart';
import 'package:dart_mappable/dart_mappable.dart';

import '../state_status.dart';

part 'cast_state.mapper.dart';

@MappableClass()
class CastState with CastStateMappable {
  final StateStatus status;
  final List<CastDevice> devices;
  final CastDevice? selectedDevice;
  final CastSession? session;

  CastState({required this.status, this.devices = const [], this.selectedDevice, this.session});
}
