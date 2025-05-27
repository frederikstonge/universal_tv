// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'vod_item.dart';

class XTremeCodeVodItemMapper extends ClassMapperBase<XTremeCodeVodItem> {
  XTremeCodeVodItemMapper._();

  static XTremeCodeVodItemMapper? _instance;
  static XTremeCodeVodItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeVodItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeVodItem';

  static int? _$streamId(XTremeCodeVodItem v) => v.streamId;
  static const Field<XTremeCodeVodItem, int> _f$streamId =
      Field('streamId', _$streamId, key: r'stream_id');
  static int? _$num(XTremeCodeVodItem v) => v.num;
  static const Field<XTremeCodeVodItem, int> _f$num = Field('num', _$num);
  static String? _$name(XTremeCodeVodItem v) => v.name;
  static const Field<XTremeCodeVodItem, String> _f$name = Field('name', _$name);
  static String? _$title(XTremeCodeVodItem v) => v.title;
  static const Field<XTremeCodeVodItem, String> _f$title =
      Field('title', _$title);
  static String? _$year(XTremeCodeVodItem v) => v.year;
  static const Field<XTremeCodeVodItem, String> _f$year = Field('year', _$year);
  static String? _$streamType(XTremeCodeVodItem v) => v.streamType;
  static const Field<XTremeCodeVodItem, String> _f$streamType =
      Field('streamType', _$streamType, key: r'stream_type');
  static String? _$streamIcon(XTremeCodeVodItem v) => v.streamIcon;
  static const Field<XTremeCodeVodItem, String> _f$streamIcon =
      Field('streamIcon', _$streamIcon, key: r'stream_icon');
  static double? _$rating(XTremeCodeVodItem v) => v.rating;
  static const Field<XTremeCodeVodItem, double> _f$rating =
      Field('rating', _$rating);
  static double? _$rating5based(XTremeCodeVodItem v) => v.rating5based;
  static const Field<XTremeCodeVodItem, double> _f$rating5based =
      Field('rating5based', _$rating5based);
  static DateTime? _$added(XTremeCodeVodItem v) => v.added;
  static const Field<XTremeCodeVodItem, DateTime> _f$added =
      Field('added', _$added);
  static int? _$categoryId(XTremeCodeVodItem v) => v.categoryId;
  static const Field<XTremeCodeVodItem, int> _f$categoryId =
      Field('categoryId', _$categoryId, key: r'category_id');
  static List<int>? _$categoryIds(XTremeCodeVodItem v) => v.categoryIds;
  static const Field<XTremeCodeVodItem, List<int>> _f$categoryIds =
      Field('categoryIds', _$categoryIds, key: r'category_ids');
  static String? _$containerExtension(XTremeCodeVodItem v) =>
      v.containerExtension;
  static const Field<XTremeCodeVodItem, String> _f$containerExtension = Field(
      'containerExtension', _$containerExtension,
      key: r'container_extension');
  static String? _$customSid(XTremeCodeVodItem v) => v.customSid;
  static const Field<XTremeCodeVodItem, String> _f$customSid =
      Field('customSid', _$customSid, key: r'custom_sid');
  static String? _$directSource(XTremeCodeVodItem v) => v.directSource;
  static const Field<XTremeCodeVodItem, String> _f$directSource =
      Field('directSource', _$directSource, key: r'direct_source');

  @override
  final MappableFields<XTremeCodeVodItem> fields = const {
    #streamId: _f$streamId,
    #num: _f$num,
    #name: _f$name,
    #title: _f$title,
    #year: _f$year,
    #streamType: _f$streamType,
    #streamIcon: _f$streamIcon,
    #rating: _f$rating,
    #rating5based: _f$rating5based,
    #added: _f$added,
    #categoryId: _f$categoryId,
    #categoryIds: _f$categoryIds,
    #containerExtension: _f$containerExtension,
    #customSid: _f$customSid,
    #directSource: _f$directSource,
  };

  static XTremeCodeVodItem _instantiate(DecodingData data) {
    return XTremeCodeVodItem(
        streamId: data.dec(_f$streamId),
        num: data.dec(_f$num),
        name: data.dec(_f$name),
        title: data.dec(_f$title),
        year: data.dec(_f$year),
        streamType: data.dec(_f$streamType),
        streamIcon: data.dec(_f$streamIcon),
        rating: data.dec(_f$rating),
        rating5based: data.dec(_f$rating5based),
        added: data.dec(_f$added),
        categoryId: data.dec(_f$categoryId),
        categoryIds: data.dec(_f$categoryIds),
        containerExtension: data.dec(_f$containerExtension),
        customSid: data.dec(_f$customSid),
        directSource: data.dec(_f$directSource));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeVodItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeVodItem>(map);
  }

  static XTremeCodeVodItem fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeVodItem>(json);
  }
}

mixin XTremeCodeVodItemMappable {
  String toJson() {
    return XTremeCodeVodItemMapper.ensureInitialized()
        .encodeJson<XTremeCodeVodItem>(this as XTremeCodeVodItem);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeVodItemMapper.ensureInitialized()
        .encodeMap<XTremeCodeVodItem>(this as XTremeCodeVodItem);
  }

  XTremeCodeVodItemCopyWith<XTremeCodeVodItem, XTremeCodeVodItem,
          XTremeCodeVodItem>
      get copyWith =>
          _XTremeCodeVodItemCopyWithImpl<XTremeCodeVodItem, XTremeCodeVodItem>(
              this as XTremeCodeVodItem, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeVodItemMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeVodItem);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeVodItemMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeVodItem, other);
  }

  @override
  int get hashCode {
    return XTremeCodeVodItemMapper.ensureInitialized()
        .hashValue(this as XTremeCodeVodItem);
  }
}

extension XTremeCodeVodItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeVodItem, $Out> {
  XTremeCodeVodItemCopyWith<$R, XTremeCodeVodItem, $Out>
      get $asXTremeCodeVodItem => $base
          .as((v, t, t2) => _XTremeCodeVodItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeVodItemCopyWith<$R, $In extends XTremeCodeVodItem,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get categoryIds;
  $R call(
      {int? streamId,
      int? num,
      String? name,
      String? title,
      String? year,
      String? streamType,
      String? streamIcon,
      double? rating,
      double? rating5based,
      DateTime? added,
      int? categoryId,
      List<int>? categoryIds,
      String? containerExtension,
      String? customSid,
      String? directSource});
  XTremeCodeVodItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeVodItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeVodItem, $Out>
    implements XTremeCodeVodItemCopyWith<$R, XTremeCodeVodItem, $Out> {
  _XTremeCodeVodItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeVodItem> $mapper =
      XTremeCodeVodItemMapper.ensureInitialized();
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
          Object? num = $none,
          Object? name = $none,
          Object? title = $none,
          Object? year = $none,
          Object? streamType = $none,
          Object? streamIcon = $none,
          Object? rating = $none,
          Object? rating5based = $none,
          Object? added = $none,
          Object? categoryId = $none,
          Object? categoryIds = $none,
          Object? containerExtension = $none,
          Object? customSid = $none,
          Object? directSource = $none}) =>
      $apply(FieldCopyWithData({
        if (streamId != $none) #streamId: streamId,
        if (num != $none) #num: num,
        if (name != $none) #name: name,
        if (title != $none) #title: title,
        if (year != $none) #year: year,
        if (streamType != $none) #streamType: streamType,
        if (streamIcon != $none) #streamIcon: streamIcon,
        if (rating != $none) #rating: rating,
        if (rating5based != $none) #rating5based: rating5based,
        if (added != $none) #added: added,
        if (categoryId != $none) #categoryId: categoryId,
        if (categoryIds != $none) #categoryIds: categoryIds,
        if (containerExtension != $none)
          #containerExtension: containerExtension,
        if (customSid != $none) #customSid: customSid,
        if (directSource != $none) #directSource: directSource
      }));
  @override
  XTremeCodeVodItem $make(CopyWithData data) => XTremeCodeVodItem(
      streamId: data.get(#streamId, or: $value.streamId),
      num: data.get(#num, or: $value.num),
      name: data.get(#name, or: $value.name),
      title: data.get(#title, or: $value.title),
      year: data.get(#year, or: $value.year),
      streamType: data.get(#streamType, or: $value.streamType),
      streamIcon: data.get(#streamIcon, or: $value.streamIcon),
      rating: data.get(#rating, or: $value.rating),
      rating5based: data.get(#rating5based, or: $value.rating5based),
      added: data.get(#added, or: $value.added),
      categoryId: data.get(#categoryId, or: $value.categoryId),
      categoryIds: data.get(#categoryIds, or: $value.categoryIds),
      containerExtension:
          data.get(#containerExtension, or: $value.containerExtension),
      customSid: data.get(#customSid, or: $value.customSid),
      directSource: data.get(#directSource, or: $value.directSource));

  @override
  XTremeCodeVodItemCopyWith<$R2, XTremeCodeVodItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _XTremeCodeVodItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
