import 'package:dart_mappable/dart_mappable.dart';

import '../../repositories/base_repository.dart';

part 'iptv_service_state.mapper.dart';

@MappableClass()
class IptvServiceState with IptvServiceStateMappable {
  final List<BaseRepository> repositories;

  IptvServiceState({this.repositories = const []});
}
