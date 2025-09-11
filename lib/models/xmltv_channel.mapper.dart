// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'xmltv_channel.dart';

class XmltvChannelMapper extends SubClassMapperBase<XmltvChannel> {
  XmltvChannelMapper._();

  static XmltvChannelMapper? _instance;
  static XmltvChannelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XmltvChannelMapper._());
      XmltvBaseMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'XmltvChannel';

  static String _$id(XmltvChannel v) => v.id;
  static const Field<XmltvChannel, String> _f$id = Field('id', _$id);
  static String? _$displayName(XmltvChannel v) => v.displayName;
  static const Field<XmltvChannel, String> _f$displayName =
      Field('displayName', _$displayName, opt: true);
  static String? _$iconUrl(XmltvChannel v) => v.iconUrl;
  static const Field<XmltvChannel, String> _f$iconUrl =
      Field('iconUrl', _$iconUrl, opt: true);
  static String _$providerName(XmltvChannel v) => v.providerName;
  static const Field<XmltvChannel, String> _f$providerName =
      Field('providerName', _$providerName);

  @override
  final MappableFields<XmltvChannel> fields = const {
    #id: _f$id,
    #displayName: _f$displayName,
    #iconUrl: _f$iconUrl,
    #providerName: _f$providerName,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'channel';
  @override
  late final ClassMapperBase superMapper = XmltvBaseMapper.ensureInitialized();

  static XmltvChannel _instantiate(DecodingData data) {
    return XmltvChannel(
        id: data.dec(_f$id),
        displayName: data.dec(_f$displayName),
        iconUrl: data.dec(_f$iconUrl),
        providerName: data.dec(_f$providerName));
  }

  @override
  final Function instantiate = _instantiate;

  static XmltvChannel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XmltvChannel>(map);
  }

  static XmltvChannel fromJson(String json) {
    return ensureInitialized().decodeJson<XmltvChannel>(json);
  }
}

mixin XmltvChannelMappable {
  String toJson() {
    return XmltvChannelMapper.ensureInitialized()
        .encodeJson<XmltvChannel>(this as XmltvChannel);
  }

  Map<String, dynamic> toMap() {
    return XmltvChannelMapper.ensureInitialized()
        .encodeMap<XmltvChannel>(this as XmltvChannel);
  }

  XmltvChannelCopyWith<XmltvChannel, XmltvChannel, XmltvChannel> get copyWith =>
      _XmltvChannelCopyWithImpl<XmltvChannel, XmltvChannel>(
          this as XmltvChannel, $identity, $identity);
  @override
  String toString() {
    return XmltvChannelMapper.ensureInitialized()
        .stringifyValue(this as XmltvChannel);
  }

  @override
  bool operator ==(Object other) {
    return XmltvChannelMapper.ensureInitialized()
        .equalsValue(this as XmltvChannel, other);
  }

  @override
  int get hashCode {
    return XmltvChannelMapper.ensureInitialized()
        .hashValue(this as XmltvChannel);
  }
}

extension XmltvChannelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XmltvChannel, $Out> {
  XmltvChannelCopyWith<$R, XmltvChannel, $Out> get $asXmltvChannel =>
      $base.as((v, t, t2) => _XmltvChannelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XmltvChannelCopyWith<$R, $In extends XmltvChannel, $Out>
    implements XmltvBaseCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? id, String? displayName, String? iconUrl, String? providerName});
  XmltvChannelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _XmltvChannelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XmltvChannel, $Out>
    implements XmltvChannelCopyWith<$R, XmltvChannel, $Out> {
  _XmltvChannelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XmltvChannel> $mapper =
      XmltvChannelMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          Object? displayName = $none,
          Object? iconUrl = $none,
          String? providerName}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (displayName != $none) #displayName: displayName,
        if (iconUrl != $none) #iconUrl: iconUrl,
        if (providerName != null) #providerName: providerName
      }));
  @override
  XmltvChannel $make(CopyWithData data) => XmltvChannel(
      id: data.get(#id, or: $value.id),
      displayName: data.get(#displayName, or: $value.displayName),
      iconUrl: data.get(#iconUrl, or: $value.iconUrl),
      providerName: data.get(#providerName, or: $value.providerName));

  @override
  XmltvChannelCopyWith<$R2, XmltvChannel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _XmltvChannelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
