// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'iptv_entry.dart';

class IptvEntryMapper extends ClassMapperBase<IptvEntry> {
  IptvEntryMapper._();

  static IptvEntryMapper? _instance;
  static IptvEntryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IptvEntryMapper._());
      IptvTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'IptvEntry';

  static String _$id(IptvEntry v) => v.id;
  static const Field<IptvEntry, String> _f$id = Field('id', _$id);
  static String _$name(IptvEntry v) => v.name;
  static const Field<IptvEntry, String> _f$name = Field('name', _$name);
  static String _$title(IptvEntry v) => v.title;
  static const Field<IptvEntry, String> _f$title = Field('title', _$title);
  static String _$url(IptvEntry v) => v.url;
  static const Field<IptvEntry, String> _f$url = Field('url', _$url);
  static IptvType _$type(IptvEntry v) => v.type;
  static const Field<IptvEntry, IptvType> _f$type = Field('type', _$type);
  static List<String> _$categories(IptvEntry v) => v.categories;
  static const Field<IptvEntry, List<String>> _f$categories =
      Field('categories', _$categories);

  @override
  final MappableFields<IptvEntry> fields = const {
    #id: _f$id,
    #name: _f$name,
    #title: _f$title,
    #url: _f$url,
    #type: _f$type,
    #categories: _f$categories,
  };

  static IptvEntry _instantiate(DecodingData data) {
    return IptvEntry(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        title: data.dec(_f$title),
        url: data.dec(_f$url),
        type: data.dec(_f$type),
        categories: data.dec(_f$categories));
  }

  @override
  final Function instantiate = _instantiate;

  static IptvEntry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IptvEntry>(map);
  }

  static IptvEntry fromJson(String json) {
    return ensureInitialized().decodeJson<IptvEntry>(json);
  }
}

mixin IptvEntryMappable {
  String toJson() {
    return IptvEntryMapper.ensureInitialized()
        .encodeJson<IptvEntry>(this as IptvEntry);
  }

  Map<String, dynamic> toMap() {
    return IptvEntryMapper.ensureInitialized()
        .encodeMap<IptvEntry>(this as IptvEntry);
  }

  IptvEntryCopyWith<IptvEntry, IptvEntry, IptvEntry> get copyWith =>
      _IptvEntryCopyWithImpl<IptvEntry, IptvEntry>(
          this as IptvEntry, $identity, $identity);
  @override
  String toString() {
    return IptvEntryMapper.ensureInitialized()
        .stringifyValue(this as IptvEntry);
  }

  @override
  bool operator ==(Object other) {
    return IptvEntryMapper.ensureInitialized()
        .equalsValue(this as IptvEntry, other);
  }

  @override
  int get hashCode {
    return IptvEntryMapper.ensureInitialized().hashValue(this as IptvEntry);
  }
}

extension IptvEntryValueCopy<$R, $Out> on ObjectCopyWith<$R, IptvEntry, $Out> {
  IptvEntryCopyWith<$R, IptvEntry, $Out> get $asIptvEntry =>
      $base.as((v, t, t2) => _IptvEntryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class IptvEntryCopyWith<$R, $In extends IptvEntry, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get categories;
  $R call(
      {String? id,
      String? name,
      String? title,
      String? url,
      IptvType? type,
      List<String>? categories});
  IptvEntryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IptvEntryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IptvEntry, $Out>
    implements IptvEntryCopyWith<$R, IptvEntry, $Out> {
  _IptvEntryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IptvEntry> $mapper =
      IptvEntryMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get categories =>
      ListCopyWith($value.categories, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(categories: v));
  @override
  $R call(
          {String? id,
          String? name,
          String? title,
          String? url,
          IptvType? type,
          List<String>? categories}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (title != null) #title: title,
        if (url != null) #url: url,
        if (type != null) #type: type,
        if (categories != null) #categories: categories
      }));
  @override
  IptvEntry $make(CopyWithData data) => IptvEntry(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      title: data.get(#title, or: $value.title),
      url: data.get(#url, or: $value.url),
      type: data.get(#type, or: $value.type),
      categories: data.get(#categories, or: $value.categories));

  @override
  IptvEntryCopyWith<$R2, IptvEntry, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _IptvEntryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
