// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'vod_item.dart';

class VodItemMapper extends ClassMapperBase<VodItem> {
  VodItemMapper._();

  static VodItemMapper? _instance;
  static VodItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VodItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VodItem';

  static int? _$streamId(VodItem v) => v.streamId;
  static const Field<VodItem, int> _f$streamId =
      Field('streamId', _$streamId, key: r'stream_id');
  static int? _$num(VodItem v) => v.num;
  static const Field<VodItem, int> _f$num = Field('num', _$num);
  static String? _$name(VodItem v) => v.name;
  static const Field<VodItem, String> _f$name = Field('name', _$name);
  static String? _$title(VodItem v) => v.title;
  static const Field<VodItem, String> _f$title = Field('title', _$title);
  static String? _$year(VodItem v) => v.year;
  static const Field<VodItem, String> _f$year = Field('year', _$year);
  static String? _$streamType(VodItem v) => v.streamType;
  static const Field<VodItem, String> _f$streamType =
      Field('streamType', _$streamType, key: r'stream_type');
  static String? _$streamIcon(VodItem v) => v.streamIcon;
  static const Field<VodItem, String> _f$streamIcon =
      Field('streamIcon', _$streamIcon, key: r'stream_icon');
  static double? _$rating(VodItem v) => v.rating;
  static const Field<VodItem, double> _f$rating = Field('rating', _$rating);
  static double? _$rating5based(VodItem v) => v.rating5based;
  static const Field<VodItem, double> _f$rating5based =
      Field('rating5based', _$rating5based);
  static DateTime? _$added(VodItem v) => v.added;
  static const Field<VodItem, DateTime> _f$added = Field('added', _$added);
  static int? _$categoryId(VodItem v) => v.categoryId;
  static const Field<VodItem, int> _f$categoryId =
      Field('categoryId', _$categoryId, key: r'category_id');
  static List<int>? _$categoryIds(VodItem v) => v.categoryIds;
  static const Field<VodItem, List<int>> _f$categoryIds =
      Field('categoryIds', _$categoryIds, key: r'category_ids');
  static String? _$containerExtension(VodItem v) => v.containerExtension;
  static const Field<VodItem, String> _f$containerExtension = Field(
      'containerExtension', _$containerExtension,
      key: r'container_extension');
  static String? _$customSid(VodItem v) => v.customSid;
  static const Field<VodItem, String> _f$customSid =
      Field('customSid', _$customSid, key: r'custom_sid');
  static String? _$directSource(VodItem v) => v.directSource;
  static const Field<VodItem, String> _f$directSource =
      Field('directSource', _$directSource, key: r'direct_source');

  @override
  final MappableFields<VodItem> fields = const {
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

  static VodItem _instantiate(DecodingData data) {
    return VodItem(
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

  static VodItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VodItem>(map);
  }

  static VodItem fromJson(String json) {
    return ensureInitialized().decodeJson<VodItem>(json);
  }
}

mixin VodItemMappable {
  String toJson() {
    return VodItemMapper.ensureInitialized()
        .encodeJson<VodItem>(this as VodItem);
  }

  Map<String, dynamic> toMap() {
    return VodItemMapper.ensureInitialized()
        .encodeMap<VodItem>(this as VodItem);
  }

  VodItemCopyWith<VodItem, VodItem, VodItem> get copyWith =>
      _VodItemCopyWithImpl<VodItem, VodItem>(
          this as VodItem, $identity, $identity);
  @override
  String toString() {
    return VodItemMapper.ensureInitialized().stringifyValue(this as VodItem);
  }

  @override
  bool operator ==(Object other) {
    return VodItemMapper.ensureInitialized()
        .equalsValue(this as VodItem, other);
  }

  @override
  int get hashCode {
    return VodItemMapper.ensureInitialized().hashValue(this as VodItem);
  }
}

extension VodItemValueCopy<$R, $Out> on ObjectCopyWith<$R, VodItem, $Out> {
  VodItemCopyWith<$R, VodItem, $Out> get $asVodItem =>
      $base.as((v, t, t2) => _VodItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VodItemCopyWith<$R, $In extends VodItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
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
  VodItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VodItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VodItem, $Out>
    implements VodItemCopyWith<$R, VodItem, $Out> {
  _VodItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VodItem> $mapper =
      VodItemMapper.ensureInitialized();
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
  VodItem $make(CopyWithData data) => VodItem(
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
  VodItemCopyWith<$R2, VodItem, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VodItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
