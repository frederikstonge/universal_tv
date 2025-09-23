import 'package:dart_mappable/dart_mappable.dart';

import '../../repositories/base_repository.dart';
import '../state_status.dart';

part 'iptv_service_state.mapper.dart';

@MappableClass()
class IptvServiceState with IptvServiceStateMappable {
  final StateStatus status;
  final List<BaseRepository> repositories;

  IptvServiceState({required this.status, this.repositories = const []});
}
