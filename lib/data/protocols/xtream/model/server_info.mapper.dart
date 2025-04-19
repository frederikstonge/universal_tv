// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'server_info.dart';

class XTremeCodeServerInfoMapper extends ClassMapperBase<XTremeCodeServerInfo> {
  XTremeCodeServerInfoMapper._();

  static XTremeCodeServerInfoMapper? _instance;
  static XTremeCodeServerInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeServerInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeServerInfo';

  static bool? _$xui(XTremeCodeServerInfo v) => v.xui;
  static const Field<XTremeCodeServerInfo, bool> _f$xui = Field('xui', _$xui);
  static String? _$version(XTremeCodeServerInfo v) => v.version;
  static const Field<XTremeCodeServerInfo, String> _f$version =
      Field('version', _$version);
  static int? _$revision(XTremeCodeServerInfo v) => v.revision;
  static const Field<XTremeCodeServerInfo, int> _f$revision =
      Field('revision', _$revision);
  static String? _$url(XTremeCodeServerInfo v) => v.url;
  static const Field<XTremeCodeServerInfo, String> _f$url = Field('url', _$url);
  static int? _$port(XTremeCodeServerInfo v) => v.port;
  static const Field<XTremeCodeServerInfo, int> _f$port = Field('port', _$port);
  static int? _$httpsPort(XTremeCodeServerInfo v) => v.httpsPort;
  static const Field<XTremeCodeServerInfo, int> _f$httpsPort =
      Field('httpsPort', _$httpsPort, key: r'https_port');
  static String? _$serverProtocol(XTremeCodeServerInfo v) => v.serverProtocol;
  static const Field<XTremeCodeServerInfo, String> _f$serverProtocol =
      Field('serverProtocol', _$serverProtocol, key: r'server_protocol');
  static int? _$rtmpPort(XTremeCodeServerInfo v) => v.rtmpPort;
  static const Field<XTremeCodeServerInfo, int> _f$rtmpPort =
      Field('rtmpPort', _$rtmpPort, key: r'rtmp_port');
  static DateTime? _$timestampNow(XTremeCodeServerInfo v) => v.timestampNow;
  static const Field<XTremeCodeServerInfo, DateTime> _f$timestampNow =
      Field('timestampNow', _$timestampNow, key: r'timestamp_now');
  static DateTime? _$timeNow(XTremeCodeServerInfo v) => v.timeNow;
  static const Field<XTremeCodeServerInfo, DateTime> _f$timeNow =
      Field('timeNow', _$timeNow, key: r'time_now');
  static String? _$timezone(XTremeCodeServerInfo v) => v.timezone;
  static const Field<XTremeCodeServerInfo, String> _f$timezone =
      Field('timezone', _$timezone);

  @override
  final MappableFields<XTremeCodeServerInfo> fields = const {
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

  static XTremeCodeServerInfo _instantiate(DecodingData data) {
    return XTremeCodeServerInfo(
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

  static XTremeCodeServerInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeServerInfo>(map);
  }

  static XTremeCodeServerInfo fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeServerInfo>(json);
  }
}

mixin XTremeCodeServerInfoMappable {
  String toJson() {
    return XTremeCodeServerInfoMapper.ensureInitialized()
        .encodeJson<XTremeCodeServerInfo>(this as XTremeCodeServerInfo);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeServerInfoMapper.ensureInitialized()
        .encodeMap<XTremeCodeServerInfo>(this as XTremeCodeServerInfo);
  }

  XTremeCodeServerInfoCopyWith<XTremeCodeServerInfo, XTremeCodeServerInfo,
      XTremeCodeServerInfo> get copyWith => _XTremeCodeServerInfoCopyWithImpl<
          XTremeCodeServerInfo, XTremeCodeServerInfo>(
      this as XTremeCodeServerInfo, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeServerInfoMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeServerInfo);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeServerInfoMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeServerInfo, other);
  }

  @override
  int get hashCode {
    return XTremeCodeServerInfoMapper.ensureInitialized()
        .hashValue(this as XTremeCodeServerInfo);
  }
}

extension XTremeCodeServerInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeServerInfo, $Out> {
  XTremeCodeServerInfoCopyWith<$R, XTremeCodeServerInfo, $Out>
      get $asXTremeCodeServerInfo => $base.as(
          (v, t, t2) => _XTremeCodeServerInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeServerInfoCopyWith<
    $R,
    $In extends XTremeCodeServerInfo,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
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
  XTremeCodeServerInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeServerInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeServerInfo, $Out>
    implements XTremeCodeServerInfoCopyWith<$R, XTremeCodeServerInfo, $Out> {
  _XTremeCodeServerInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeServerInfo> $mapper =
      XTremeCodeServerInfoMapper.ensureInitialized();
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
  XTremeCodeServerInfo $make(CopyWithData data) => XTremeCodeServerInfo(
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
  XTremeCodeServerInfoCopyWith<$R2, XTremeCodeServerInfo, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _XTremeCodeServerInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
