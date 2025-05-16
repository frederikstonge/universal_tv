// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'channel.dart';

class ChannelMapper extends ClassMapperBase<Channel> {
  ChannelMapper._();

  static ChannelMapper? _instance;
  static ChannelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChannelMapper._());
      DisplayNameMapper.ensureInitialized();
      IconMapper.ensureInitialized();
      UrlMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Channel';

  static String _$id(Channel v) => v.id;
  static const Field<Channel, String> _f$id = Field('id', _$id);
  static List<DisplayName> _$displayNames(Channel v) => v.displayNames;
  static const Field<Channel, List<DisplayName>> _f$displayNames =
      Field('displayNames', _$displayNames);
  static List<Icon> _$icons(Channel v) => v.icons;
  static const Field<Channel, List<Icon>> _f$icons = Field('icons', _$icons);
  static List<Url> _$urls(Channel v) => v.urls;
  static const Field<Channel, List<Url>> _f$urls = Field('urls', _$urls);

  @override
  final MappableFields<Channel> fields = const {
    #id: _f$id,
    #displayNames: _f$displayNames,
    #icons: _f$icons,
    #urls: _f$urls,
  };

  static Channel _instantiate(DecodingData data) {
    return Channel(
        id: data.dec(_f$id),
        displayNames: data.dec(_f$displayNames),
        icons: data.dec(_f$icons),
        urls: data.dec(_f$urls));
  }

  @override
  final Function instantiate = _instantiate;

  static Channel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Channel>(map);
  }

  static Channel fromJson(String json) {
    return ensureInitialized().decodeJson<Channel>(json);
  }
}

mixin ChannelMappable {
  String toJson() {
    return ChannelMapper.ensureInitialized()
        .encodeJson<Channel>(this as Channel);
  }

  Map<String, dynamic> toMap() {
    return ChannelMapper.ensureInitialized()
        .encodeMap<Channel>(this as Channel);
  }

  ChannelCopyWith<Channel, Channel, Channel> get copyWith =>
      _ChannelCopyWithImpl<Channel, Channel>(
          this as Channel, $identity, $identity);
  @override
  String toString() {
    return ChannelMapper.ensureInitialized().stringifyValue(this as Channel);
  }

  @override
  bool operator ==(Object other) {
    return ChannelMapper.ensureInitialized()
        .equalsValue(this as Channel, other);
  }

  @override
  int get hashCode {
    return ChannelMapper.ensureInitialized().hashValue(this as Channel);
  }
}

extension ChannelValueCopy<$R, $Out> on ObjectCopyWith<$R, Channel, $Out> {
  ChannelCopyWith<$R, Channel, $Out> get $asChannel =>
      $base.as((v, t, t2) => _ChannelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChannelCopyWith<$R, $In extends Channel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, DisplayName,
      DisplayNameCopyWith<$R, DisplayName, DisplayName>> get displayNames;
  ListCopyWith<$R, Icon, IconCopyWith<$R, Icon, Icon>> get icons;
  ListCopyWith<$R, Url, UrlCopyWith<$R, Url, Url>> get urls;
  $R call(
      {String? id,
      List<DisplayName>? displayNames,
      List<Icon>? icons,
      List<Url>? urls});
  ChannelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChannelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Channel, $Out>
    implements ChannelCopyWith<$R, Channel, $Out> {
  _ChannelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Channel> $mapper =
      ChannelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, DisplayName,
          DisplayNameCopyWith<$R, DisplayName, DisplayName>>
      get displayNames => ListCopyWith($value.displayNames,
          (v, t) => v.copyWith.$chain(t), (v) => call(displayNames: v));
  @override
  ListCopyWith<$R, Icon, IconCopyWith<$R, Icon, Icon>> get icons =>
      ListCopyWith(
          $value.icons, (v, t) => v.copyWith.$chain(t), (v) => call(icons: v));
  @override
  ListCopyWith<$R, Url, UrlCopyWith<$R, Url, Url>> get urls => ListCopyWith(
      $value.urls, (v, t) => v.copyWith.$chain(t), (v) => call(urls: v));
  @override
  $R call(
          {String? id,
          List<DisplayName>? displayNames,
          List<Icon>? icons,
          List<Url>? urls}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (displayNames != null) #displayNames: displayNames,
        if (icons != null) #icons: icons,
        if (urls != null) #urls: urls
      }));
  @override
  Channel $make(CopyWithData data) => Channel(
      id: data.get(#id, or: $value.id),
      displayNames: data.get(#displayNames, or: $value.displayNames),
      icons: data.get(#icons, or: $value.icons),
      urls: data.get(#urls, or: $value.urls));

  @override
  ChannelCopyWith<$R2, Channel, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChannelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
