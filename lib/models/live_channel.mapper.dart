// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'live_channel.dart';

class LiveChannelMapper extends ClassMapperBase<LiveChannel> {
  LiveChannelMapper._();

  static LiveChannelMapper? _instance;
  static LiveChannelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LiveChannelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LiveChannel';

  static int _$streamId(LiveChannel v) => v.streamId;
  static const Field<LiveChannel, int> _f$streamId =
      Field('streamId', _$streamId);
  static String _$name(LiveChannel v) => v.name;
  static const Field<LiveChannel, String> _f$name = Field('name', _$name);
  static String _$categoryId(LiveChannel v) => v.categoryId;
  static const Field<LiveChannel, String> _f$categoryId =
      Field('categoryId', _$categoryId);
  static String? _$logoUrl(LiveChannel v) => v.logoUrl;
  static const Field<LiveChannel, String> _f$logoUrl =
      Field('logoUrl', _$logoUrl, opt: true);
  static String? _$epgChannelId(LiveChannel v) => v.epgChannelId;
  static const Field<LiveChannel, String> _f$epgChannelId =
      Field('epgChannelId', _$epgChannelId, opt: true);
  static String _$providerName(LiveChannel v) => v.providerName;
  static const Field<LiveChannel, String> _f$providerName =
      Field('providerName', _$providerName);

  @override
  final MappableFields<LiveChannel> fields = const {
    #streamId: _f$streamId,
    #name: _f$name,
    #categoryId: _f$categoryId,
    #logoUrl: _f$logoUrl,
    #epgChannelId: _f$epgChannelId,
    #providerName: _f$providerName,
  };

  static LiveChannel _instantiate(DecodingData data) {
    return LiveChannel(
        streamId: data.dec(_f$streamId),
        name: data.dec(_f$name),
        categoryId: data.dec(_f$categoryId),
        logoUrl: data.dec(_f$logoUrl),
        epgChannelId: data.dec(_f$epgChannelId),
        providerName: data.dec(_f$providerName));
  }

  @override
  final Function instantiate = _instantiate;

  static LiveChannel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LiveChannel>(map);
  }

  static LiveChannel fromJson(String json) {
    return ensureInitialized().decodeJson<LiveChannel>(json);
  }
}

mixin LiveChannelMappable {
  String toJson() {
    return LiveChannelMapper.ensureInitialized()
        .encodeJson<LiveChannel>(this as LiveChannel);
  }

  Map<String, dynamic> toMap() {
    return LiveChannelMapper.ensureInitialized()
        .encodeMap<LiveChannel>(this as LiveChannel);
  }

  LiveChannelCopyWith<LiveChannel, LiveChannel, LiveChannel> get copyWith =>
      _LiveChannelCopyWithImpl<LiveChannel, LiveChannel>(
          this as LiveChannel, $identity, $identity);
  @override
  String toString() {
    return LiveChannelMapper.ensureInitialized()
        .stringifyValue(this as LiveChannel);
  }

  @override
  bool operator ==(Object other) {
    return LiveChannelMapper.ensureInitialized()
        .equalsValue(this as LiveChannel, other);
  }

  @override
  int get hashCode {
    return LiveChannelMapper.ensureInitialized().hashValue(this as LiveChannel);
  }
}

extension LiveChannelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LiveChannel, $Out> {
  LiveChannelCopyWith<$R, LiveChannel, $Out> get $asLiveChannel =>
      $base.as((v, t, t2) => _LiveChannelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LiveChannelCopyWith<$R, $In extends LiveChannel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? streamId,
      String? name,
      String? categoryId,
      String? logoUrl,
      String? epgChannelId,
      String? providerName});
  LiveChannelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LiveChannelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LiveChannel, $Out>
    implements LiveChannelCopyWith<$R, LiveChannel, $Out> {
  _LiveChannelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LiveChannel> $mapper =
      LiveChannelMapper.ensureInitialized();
  @override
  $R call(
          {int? streamId,
          String? name,
          String? categoryId,
          Object? logoUrl = $none,
          Object? epgChannelId = $none,
          String? providerName}) =>
      $apply(FieldCopyWithData({
        if (streamId != null) #streamId: streamId,
        if (name != null) #name: name,
        if (categoryId != null) #categoryId: categoryId,
        if (logoUrl != $none) #logoUrl: logoUrl,
        if (epgChannelId != $none) #epgChannelId: epgChannelId,
        if (providerName != null) #providerName: providerName
      }));
  @override
  LiveChannel $make(CopyWithData data) => LiveChannel(
      streamId: data.get(#streamId, or: $value.streamId),
      name: data.get(#name, or: $value.name),
      categoryId: data.get(#categoryId, or: $value.categoryId),
      logoUrl: data.get(#logoUrl, or: $value.logoUrl),
      epgChannelId: data.get(#epgChannelId, or: $value.epgChannelId),
      providerName: data.get(#providerName, or: $value.providerName));

  @override
  LiveChannelCopyWith<$R2, LiveChannel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LiveChannelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
