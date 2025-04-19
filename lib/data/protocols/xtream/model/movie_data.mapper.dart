// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_data.dart';

class XTremeCodeMovieDataMapper extends ClassMapperBase<XTremeCodeMovieData> {
  XTremeCodeMovieDataMapper._();

  static XTremeCodeMovieDataMapper? _instance;
  static XTremeCodeMovieDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeMovieDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeMovieData';

  static int? _$streamId(XTremeCodeMovieData v) => v.streamId;
  static const Field<XTremeCodeMovieData, int> _f$streamId =
      Field('streamId', _$streamId, key: r'stream_id');
  static String? _$name(XTremeCodeMovieData v) => v.name;
  static const Field<XTremeCodeMovieData, String> _f$name =
      Field('name', _$name);
  static String? _$title(XTremeCodeMovieData v) => v.title;
  static const Field<XTremeCodeMovieData, String> _f$title =
      Field('title', _$title);
  static String? _$year(XTremeCodeMovieData v) => v.year;
  static const Field<XTremeCodeMovieData, String> _f$year =
      Field('year', _$year);
  static DateTime? _$added(XTremeCodeMovieData v) => v.added;
  static const Field<XTremeCodeMovieData, DateTime> _f$added =
      Field('added', _$added);
  static int? _$categoryId(XTremeCodeMovieData v) => v.categoryId;
  static const Field<XTremeCodeMovieData, int> _f$categoryId =
      Field('categoryId', _$categoryId, key: r'category_id');
  static List<int>? _$categoryIds(XTremeCodeMovieData v) => v.categoryIds;
  static const Field<XTremeCodeMovieData, List<int>> _f$categoryIds =
      Field('categoryIds', _$categoryIds, key: r'category_ids');
  static String _$containerExtension(XTremeCodeMovieData v) =>
      v.containerExtension;
  static const Field<XTremeCodeMovieData, String> _f$containerExtension = Field(
      'containerExtension', _$containerExtension,
      key: r'container_extension');
  static String? _$customSid(XTremeCodeMovieData v) => v.customSid;
  static const Field<XTremeCodeMovieData, String> _f$customSid =
      Field('customSid', _$customSid, key: r'custom_sid');
  static String? _$directSource(XTremeCodeMovieData v) => v.directSource;
  static const Field<XTremeCodeMovieData, String> _f$directSource =
      Field('directSource', _$directSource, key: r'direct_source');

  @override
  final MappableFields<XTremeCodeMovieData> fields = const {
    #streamId: _f$streamId,
    #name: _f$name,
    #title: _f$title,
    #year: _f$year,
    #added: _f$added,
    #categoryId: _f$categoryId,
    #categoryIds: _f$categoryIds,
    #containerExtension: _f$containerExtension,
    #customSid: _f$customSid,
    #directSource: _f$directSource,
  };

  static XTremeCodeMovieData _instantiate(DecodingData data) {
    return XTremeCodeMovieData(
        streamId: data.dec(_f$streamId),
        name: data.dec(_f$name),
        title: data.dec(_f$title),
        year: data.dec(_f$year),
        added: data.dec(_f$added),
        categoryId: data.dec(_f$categoryId),
        categoryIds: data.dec(_f$categoryIds),
        containerExtension: data.dec(_f$containerExtension),
        customSid: data.dec(_f$customSid),
        directSource: data.dec(_f$directSource));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeMovieData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeMovieData>(map);
  }

  static XTremeCodeMovieData fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeMovieData>(json);
  }
}

mixin XTremeCodeMovieDataMappable {
  String toJson() {
    return XTremeCodeMovieDataMapper.ensureInitialized()
        .encodeJson<XTremeCodeMovieData>(this as XTremeCodeMovieData);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeMovieDataMapper.ensureInitialized()
        .encodeMap<XTremeCodeMovieData>(this as XTremeCodeMovieData);
  }

  XTremeCodeMovieDataCopyWith<XTremeCodeMovieData, XTremeCodeMovieData,
      XTremeCodeMovieData> get copyWith => _XTremeCodeMovieDataCopyWithImpl<
          XTremeCodeMovieData, XTremeCodeMovieData>(
      this as XTremeCodeMovieData, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeMovieDataMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeMovieData);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeMovieDataMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeMovieData, other);
  }

  @override
  int get hashCode {
    return XTremeCodeMovieDataMapper.ensureInitialized()
        .hashValue(this as XTremeCodeMovieData);
  }
}

extension XTremeCodeMovieDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeMovieData, $Out> {
  XTremeCodeMovieDataCopyWith<$R, XTremeCodeMovieData, $Out>
      get $asXTremeCodeMovieData => $base.as(
          (v, t, t2) => _XTremeCodeMovieDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeMovieDataCopyWith<$R, $In extends XTremeCodeMovieData,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get categoryIds;
  $R call(
      {int? streamId,
      String? name,
      String? title,
      String? year,
      DateTime? added,
      int? categoryId,
      List<int>? categoryIds,
      String? containerExtension,
      String? customSid,
      String? directSource});
  XTremeCodeMovieDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeMovieDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeMovieData, $Out>
    implements XTremeCodeMovieDataCopyWith<$R, XTremeCodeMovieData, $Out> {
  _XTremeCodeMovieDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeMovieData> $mapper =
      XTremeCodeMovieDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get categoryIds =>
      $value.categoryIds != null
          ? ListCopyWith(
              $value.categoryIds!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(categoryIds: v))
          : null;
  @override
  $R call(
          {Object? streamId = $none,
          Object? name = $none,
          Object? title = $none,
          Object? year = $none,
          Object? added = $none,
          Object? categoryId = $none,
          Object? categoryIds = $none,
          String? containerExtension,
          Object? customSid = $none,
          Object? directSource = $none}) =>
      $apply(FieldCopyWithData({
        if (streamId != $none) #streamId: streamId,
        if (name != $none) #name: name,
        if (title != $none) #title: title,
        if (year != $none) #year: year,
        if (added != $none) #added: added,
        if (categoryId != $none) #categoryId: categoryId,
        if (categoryIds != $none) #categoryIds: categoryIds,
        if (containerExtension != null) #containerExtension: containerExtension,
        if (customSid != $none) #customSid: customSid,
        if (directSource != $none) #directSource: directSource
      }));
  @override
  XTremeCodeMovieData $make(CopyWithData data) => XTremeCodeMovieData(
      streamId: data.get(#streamId, or: $value.streamId),
      name: data.get(#name, or: $value.name),
      title: data.get(#title, or: $value.title),
      year: data.get(#year, or: $value.year),
      added: data.get(#added, or: $value.added),
      categoryId: data.get(#categoryId, or: $value.categoryId),
      categoryIds: data.get(#categoryIds, or: $value.categoryIds),
      containerExtension:
          data.get(#containerExtension, or: $value.containerExtension),
      customSid: data.get(#customSid, or: $value.customSid),
      directSource: data.get(#directSource, or: $value.directSource));

  @override
  XTremeCodeMovieDataCopyWith<$R2, XTremeCodeMovieData, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _XTremeCodeMovieDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
