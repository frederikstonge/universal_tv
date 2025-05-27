import 'package:dart_mappable/dart_mappable.dart';

part 'server_info.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeServerInfo with XTremeCodeServerInfoMappable {
  final bool? xui;
  final String? version;
  final int? revision;
  final String? url;
  final int? port;
  final int? httpsPort;
  final String? serverProtocol;
  final int? rtmpPort;
  final DateTime? timestampNow;
  final DateTime? timeNow;
  final String? timezone;

  XTremeCodeServerInfo({
    required this.xui,
    required this.version,
    required this.revision,
    required this.url,
    required this.port,
    required this.httpsPort,
    required this.serverProtocol,
    required this.rtmpPort,
    required this.timestampNow,
    required this.timeNow,
    required this.timezone,
  });
}
