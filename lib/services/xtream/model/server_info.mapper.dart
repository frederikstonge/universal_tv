// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'server_info.dart';

class ServerInfoMapper extends ClassMapperBase<ServerInfo> {
  ServerInfoMapper._();

  static ServerInfoMapper? _instance;
  static ServerInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ServerInfo';

  static bool? _$xui(ServerInfo v) => v.xui;
  static const Field<ServerInfo, bool> _f$xui = Field('xui', _$xui);
  static String? _$version(ServerInfo v) => v.version;
  static const Field<ServerInfo, String> _f$version =
      Field('version', _$version);
  static int? _$revision(ServerInfo v) => v.revision;
  static const Field<ServerInfo, int> _f$revision =
      Field('revision', _$revision);
  static String? _$url(ServerInfo v) => v.url;
  static const Field<ServerInfo, String> _f$url = Field('url', _$url);
  static int? _$port(ServerInfo v) => v.port;
  static const Field<ServerInfo, int> _f$port = Field('port', _$port);
  static int? _$httpsPort(ServerInfo v) => v.httpsPort;
  static const Field<ServerInfo, int> _f$httpsPort =
      Field('httpsPort', _$httpsPort, key: r'https_port');
  static String? _$serverProtocol(ServerInfo v) => v.serverProtocol;
  static const Field<ServerInfo, String> _f$serverProtocol =
      Field('serverProtocol', _$serverProtocol, key: r'server_protocol');
  static int? _$rtmpPort(ServerInfo v) => v.rtmpPort;
  static const Field<ServerInfo, int> _f$rtmpPort =
      Field('rtmpPort', _$rtmpPort, key: r'rtmp_port');
  static DateTime? _$timestampNow(ServerInfo v) => v.timestampNow;
  static const Field<ServerInfo, DateTime> _f$timestampNow =
      Field('timestampNow', _$timestampNow, key: r'timestamp_now');
  static DateTime? _$timeNow(ServerInfo v) => v.timeNow;
  static const Field<ServerInfo, DateTime> _f$timeNow =
      Field('timeNow', _$timeNow, key: r'time_now');
  static String? _$timezone(ServerInfo v) => v.timezone;
  static const Field<ServerInfo, String> _f$timezone =
      Field('timezone', _$timezone);

  @override
  final MappableFields<ServerInfo> fields = const {
    #xui: _f$xui,
    #version: _f$version,
    #revision: _f$revision,
    #url: _f$url,
    #port: _f$port,
    #httpsPort: _f$httpsPort,
    #serverProtocol: _f$serverProtocol,
    #rtmpPort: _f$rtmpPort,
    #timestampNow: _f$timestampNow,
    #timeNow: _f$timeNow,
    #timezone: _f$timezone,
  };

  static ServerInfo _instantiate(DecodingData data) {
    return ServerInfo(
        xui: data.dec(_f$xui),
        version: data.dec(_f$version),
        revision: data.dec(_f$revision),
        url: data.dec(_f$url),
        port: data.dec(_f$port),
        httpsPort: data.dec(_f$httpsPort),
        serverProtocol: data.dec(_f$serverProtocol),
        rtmpPort: data.dec(_f$rtmpPort),
        timestampNow: data.dec(_f$timestampNow),
        timeNow: data.dec(_f$timeNow),
        timezone: data.dec(_f$timezone));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerInfo>(map);
  }

  static ServerInfo fromJson(String json) {
    return ensureInitialized().decodeJson<ServerInfo>(json);
  }
}

mixin ServerInfoMappable {
  String toJson() {
    return ServerInfoMapper.ensureInitialized()
        .encodeJson<ServerInfo>(this as ServerInfo);
  }

  Map<String, dynamic> toMap() {
    return ServerInfoMapper.ensureInitialized()
        .encodeMap<ServerInfo>(this as ServerInfo);
  }

  ServerInfoCopyWith<ServerInfo, ServerInfo, ServerInfo> get copyWith =>
      _ServerInfoCopyWithImpl<ServerInfo, ServerInfo>(
          this as ServerInfo, $identity, $identity);
  @override
  String toString() {
    return ServerInfoMapper.ensureInitialized()
        .stringifyValue(this as ServerInfo);
  }

  @override
  bool operator ==(Object other) {
    return ServerInfoMapper.ensureInitialized()
        .equalsValue(this as ServerInfo, other);
  }

  @override
  int get hashCode {
    return ServerInfoMapper.ensureInitialized().hashValue(this as ServerInfo);
  }
}

extension ServerInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerInfo, $Out> {
  ServerInfoCopyWith<$R, ServerInfo, $Out> get $asServerInfo =>
      $base.as((v, t, t2) => _ServerInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerInfoCopyWith<$R, $In extends ServerInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {bool? xui,
      String? version,
      int? revision,
      String? url,
      int? port,
      int? httpsPort,
      String? serverProtocol,
      int? rtmpPort,
      DateTime? timestampNow,
      DateTime? timeNow,
      String? timezone});
  ServerInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ServerInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerInfo, $Out>
    implements ServerInfoCopyWith<$R, ServerInfo, $Out> {
  _ServerInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerInfo> $mapper =
      ServerInfoMapper.ensureInitialized();
  @override
  $R call(
          {Object? xui = $none,
          Object? version = $none,
          Object? revision = $none,
          Object? url = $none,
          Object? port = $none,
          Object? httpsPort = $none,
          Object? serverProtocol = $none,
          Object? rtmpPort = $none,
          Object? timestampNow = $none,
          Object? timeNow = $none,
          Object? timezone = $none}) =>
      $apply(FieldCopyWithData({
        if (xui != $none) #xui: xui,
        if (version != $none) #version: version,
        if (revision != $none) #revision: revision,
        if (url != $none) #url: url,
        if (port != $none) #port: port,
        if (httpsPort != $none) #httpsPort: httpsPort,
        if (serverProtocol != $none) #serverProtocol: serverProtocol,
        if (rtmpPort != $none) #rtmpPort: rtmpPort,
        if (timestampNow != $none) #timestampNow: timestampNow,
        if (timeNow != $none) #timeNow: timeNow,
        if (timezone != $none) #timezone: timezone
      }));
  @override
  ServerInfo $make(CopyWithData data) => ServerInfo(
      xui: data.get(#xui, or: $value.xui),
      version: data.get(#version, or: $value.version),
      revision: data.get(#revision, or: $value.revision),
      url: data.get(#url, or: $value.url),
      port: data.get(#port, or: $value.port),
      httpsPort: data.get(#httpsPort, or: $value.httpsPort),
      serverProtocol: data.get(#serverProtocol, or: $value.serverProtocol),
      rtmpPort: data.get(#rtmpPort, or: $value.rtmpPort),
      timestampNow: data.get(#timestampNow, or: $value.timestampNow),
      timeNow: data.get(#timeNow, or: $value.timeNow),
      timezone: data.get(#timezone, or: $value.timezone));

  @override
  ServerInfoCopyWith<$R2, ServerInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
