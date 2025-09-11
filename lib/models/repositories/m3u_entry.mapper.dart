// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'm3u_entry.dart';

class M3uEntryMapper extends ClassMapperBase<M3uEntry> {
  M3uEntryMapper._();

  static M3uEntryMapper? _instance;
  static M3uEntryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = M3uEntryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'M3uEntry';

  static int _$id(M3uEntry v) => v.id;
  static const Field<M3uEntry, int> _f$id = Field('id', _$id);
  static String _$url(M3uEntry v) => v.url;
  static const Field<M3uEntry, String> _f$url = Field('url', _$url);
  static String _$name(M3uEntry v) => v.name;
  static const Field<M3uEntry, String> _f$name = Field('name', _$name);
  static String? _$tvgId(M3uEntry v) => v.tvgId;
  static const Field<M3uEntry, String> _f$tvgId =
      Field('tvgId', _$tvgId, opt: true);
  static String? _$groupTitle(M3uEntry v) => v.groupTitle;
  static const Field<M3uEntry, String> _f$groupTitle =
      Field('groupTitle', _$groupTitle, opt: true);
  static String? _$logoUrl(M3uEntry v) => v.logoUrl;
  static const Field<M3uEntry, String> _f$logoUrl =
      Field('logoUrl', _$logoUrl, opt: true);
  static Map<String, String> _$attributes(M3uEntry v) => v.attributes;
  static const Field<M3uEntry, Map<String, String>> _f$attributes =
      Field('attributes', _$attributes, opt: true, def: const {});
  static String _$providerName(M3uEntry v) => v.providerName;
  static const Field<M3uEntry, String> _f$providerName =
      Field('providerName', _$providerName);

  @override
  final MappableFields<M3uEntry> fields = const {
    #id: _f$id,
    #url: _f$url,
    #name: _f$name,
    #tvgId: _f$tvgId,
    #groupTitle: _f$groupTitle,
    #logoUrl: _f$logoUrl,
    #attributes: _f$attributes,
    #providerName: _f$providerName,
  };

  static M3uEntry _instantiate(DecodingData data) {
    return M3uEntry(
        id: data.dec(_f$id),
        url: data.dec(_f$url),
        name: data.dec(_f$name),
        tvgId: data.dec(_f$tvgId),
        groupTitle: data.dec(_f$groupTitle),
        logoUrl: data.dec(_f$logoUrl),
        attributes: data.dec(_f$attributes),
        providerName: data.dec(_f$providerName));
  }

  @override
  final Function instantiate = _instantiate;

  static M3uEntry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<M3uEntry>(map);
  }

  static M3uEntry fromJson(String json) {
    return ensureInitialized().decodeJson<M3uEntry>(json);
  }
}

mixin M3uEntryMappable {
  String toJson() {
    return M3uEntryMapper.ensureInitialized()
        .encodeJson<M3uEntry>(this as M3uEntry);
  }

  Map<String, dynamic> toMap() {
    return M3uEntryMapper.ensureInitialized()
        .encodeMap<M3uEntry>(this as M3uEntry);
  }

  M3uEntryCopyWith<M3uEntry, M3uEntry, M3uEntry> get copyWith =>
      _M3uEntryCopyWithImpl<M3uEntry, M3uEntry>(
          this as M3uEntry, $identity, $identity);
  @override
  String toString() {
    return M3uEntryMapper.ensureInitialized().stringifyValue(this as M3uEntry);
  }

  @override
  bool operator ==(Object other) {
    return M3uEntryMapper.ensureInitialized()
        .equalsValue(this as M3uEntry, other);
  }

  @override
  int get hashCode {
    return M3uEntryMapper.ensureInitialized().hashValue(this as M3uEntry);
  }
}

extension M3uEntryValueCopy<$R, $Out> on ObjectCopyWith<$R, M3uEntry, $Out> {
  M3uEntryCopyWith<$R, M3uEntry, $Out> get $asM3uEntry =>
      $base.as((v, t, t2) => _M3uEntryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class M3uEntryCopyWith<$R, $In extends M3uEntry, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get attributes;
  $R call(
      {int? id,
      String? url,
      String? name,
      String? tvgId,
      String? groupTitle,
      String? logoUrl,
      Map<String, String>? attributes,
      String? providerName});
  M3uEntryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _M3uEntryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, M3uEntry, $Out>
    implements M3uEntryCopyWith<$R, M3uEntry, $Out> {
  _M3uEntryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<M3uEntry> $mapper =
      M3uEntryMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get attributes => MapCopyWith(
          $value.attributes,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(attributes: v));
  @override
  $R call(
          {int? id,
          String? url,
          String? name,
          Object? tvgId = $none,
          Object? groupTitle = $none,
          Object? logoUrl = $none,
          Map<String, String>? attributes,
          String? providerName}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (url != null) #url: url,
        if (name != null) #name: name,
        if (tvgId != $none) #tvgId: tvgId,
        if (groupTitle != $none) #groupTitle: groupTitle,
        if (logoUrl != $none) #logoUrl: logoUrl,
        if (attributes != null) #attributes: attributes,
        if (providerName != null) #providerName: providerName
      }));
  @override
  M3uEntry $make(CopyWithData data) => M3uEntry(
      id: data.get(#id, or: $value.id),
      url: data.get(#url, or: $value.url),
      name: data.get(#name, or: $value.name),
      tvgId: data.get(#tvgId, or: $value.tvgId),
      groupTitle: data.get(#groupTitle, or: $value.groupTitle),
      logoUrl: data.get(#logoUrl, or: $value.logoUrl),
      attributes: data.get(#attributes, or: $value.attributes),
      providerName: data.get(#providerName, or: $value.providerName));

  @override
  M3uEntryCopyWith<$R2, M3uEntry, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _M3uEntryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
