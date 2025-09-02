import 'package:dart_mappable/dart_mappable.dart';
import 'package:uuid/uuid.dart';

part 'iptv_provider.mapper.dart';

@MappableEnum()
enum IptvProviderType { m3u, xtream, epg }

@MappableClass(discriminatorKey: 'type')
abstract class IptvProvider with IptvProviderMappable {
  final String id;
  final String name;
  final IptvProviderType type;

  IptvProvider({required this.id, required this.name, required this.type});
}

@MappableClass(discriminatorValue: 'm3u')
class M3uIptvProvider extends IptvProvider with M3uIptvProviderMappable {
  final List<Uri> urls;

  M3uIptvProvider({required super.name, required this.urls}) : super(id: const Uuid().v4(), type: IptvProviderType.m3u);
}

@MappableClass(discriminatorValue: 'xtream')
class XtreamIptvProvider extends IptvProvider with XtreamIptvProviderMappable {
  final Uri url;
  final String userName;
  final String password;

  XtreamIptvProvider({required super.name, required this.url, required this.userName, required this.password})
    : super(id: const Uuid().v4(), type: IptvProviderType.xtream);
}

@MappableClass(discriminatorValue: 'epg')
class EpgIptvProvider extends IptvProvider with EpgIptvProviderMappable {
  final Uri url;

  EpgIptvProvider({required super.name, required this.url}) : super(id: const Uuid().v4(), type: IptvProviderType.epg);
}
