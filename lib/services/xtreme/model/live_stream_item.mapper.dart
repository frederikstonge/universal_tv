// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'live_stream_item.dart';

class XTremeCodeLiveStreamItemMapper
    extends ClassMapperBase<XTremeCodeLiveStreamItem> {
  XTremeCodeLiveStreamItemMapper._();

  static XTremeCodeLiveStreamItemMapper? _instance;
  static XTremeCodeLiveStreamItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = XTremeCodeLiveStreamItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeLiveStreamItem';

  static int? _$num(XTremeCodeLiveStreamItem v) => v.num;
  static const Field<XTremeCodeLiveStreamItem, int> _f$num =
      Field('num', _$num);
  static String? _$name(XTremeCodeLiveStreamItem v) => v.name;
  static const Field<XTremeCodeLiveStreamItem, String> _f$name =
      Field('name', _$name);
  static String? _$streamType(XTremeCodeLiveStreamItem v) => v.streamType;
  static const Field<XTremeCodeLiveStreamItem, String> _f$streamType =
      Field('streamType', _$streamType, key: r'stream_type');
  static int? _$streamId(XTremeCodeLiveStreamItem v) => v.streamId;
  static const Field<XTremeCodeLiveStreamItem, int> _f$streamId =
      Field('streamId', _$streamId, key: r'stream_id');
  static String? _$streamIcon(XTremeCodeLiveStreamItem v) => v.streamIcon;
  static const Field<XTremeCodeLiveStreamItem, String> _f$streamIcon =
      Field('streamIcon', _$streamIcon, key: r'stream_icon');
  static String? _$epgChannelId(XTremeCodeLiveStreamItem v) => v.epgChannelId;
  static const Field<XTremeCodeLiveStreamItem, String> _f$epgChannelId =
      Field('epgChannelId', _$epgChannelId, key: r'epg_channel_id');
  static DateTime? _$added(XTremeCodeLiveStreamItem v) => v.added;
  static const Field<XTremeCodeLiveStreamItem, DateTime> _f$added =
      Field('added', _$added);
  static int? _$customSid(XTremeCodeLiveStreamItem v) => v.customSid;
  static const Field<XTremeCodeLiveStreamItem, int> _f$customSid =
      Field('customSid', _$customSid, key: r'custom_sid');
  static int? _$tvArchive(XTremeCodeLiveStreamItem v) => v.tvArchive;
  static const Field<XTremeCodeLiveStreamItem, int> _f$tvArchive =
      Field('tvArchive', _$tvArchive, key: r'tv_archive');
  static String? _$directSource(XTremeCodeLiveStreamItem v) => v.directSource;
  static const Field<XTremeCodeLiveStreamItem, String> _f$directSource =
      Field('directSource', _$directSource, key: r'direct_source');
  static int? _$tvArchiveDuration(XTremeCodeLiveStreamItem v) =>
      v.tvArchiveDuration;
  static const Field<XTremeCodeLiveStreamItem, int> _f$tvArchiveDuration =
      Field('tvArchiveDuration', _$tvArchiveDuration,
          key: r'tv_archive_duration');
  static int? _$categoryId(XTremeCodeLiveStreamItem v) => v.categoryId;
  static const Field<XTremeCodeLiveStreamItem, int> _f$categoryId =
      Field('categoryId', _$categoryId, key: r'category_id');
  static List<int>? _$categoryIds(XTremeCodeLiveStreamItem v) => v.categoryIds;
  static const Field<XTremeCodeLiveStreamItem, List<int>> _f$categoryIds =
      Field('categoryIds', _$categoryIds, key: r'category_ids');
  static String? _$thumbnail(XTremeCodeLiveStreamItem v) => v.thumbnail;
  static const Field<XTremeCodeLiveStreamItem, String> _f$thumbnail =
      Field('thumbnail', _$thumbnail);

  @override
  final MappableFields<XTremeCodeLiveStreamItem> fields = const {
    #num: _f$num,
    #name: _f$name,
    #streamType: _f$streamType,
    #streamId: _f$streamId,
    #streamIcon: _f$streamIcon,
    #epgChannelId: _f$epgChannelId,
    #added: _f$added,
    #customSid: _f$customSid,
    #tvArchive: _f$tvArchive,
    #directSource: _f$directSource,
    #tvArchiveDuration: _f$tvArchiveDuration,
    #categoryId: _f$categoryId,
    #categoryIds: _f$categoryIds,
    #thumbnail: _f$thumbnail,
  };

  static XTremeCodeLiveStreamItem _instantiate(DecodingData data) {
    return XTremeCodeLiveStreamItem(
        num: data.dec(_f$num),
        name: data.dec(_f$name),
        streamType: data.dec(_f$streamType),
        streamId: data.dec(_f$streamId),
        streamIcon: data.dec(_f$streamIcon),
        epgChannelId: data.dec(_f$epgChannelId),
        added: data.dec(_f$added),
        customSid: data.dec(_f$customSid),
        tvArchive: data.dec(_f$tvArchive),
        directSource: data.dec(_f$directSource),
        tvArchiveDuration: data.dec(_f$tvArchiveDuration),
        categoryId: data.dec(_f$categoryId),
        categoryIds: data.dec(_f$categoryIds),
        thumbnail: data.dec(_f$thumbnail));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeLiveStreamItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeLiveStreamItem>(map);
  }

  static XTremeCodeLiveStreamItem fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeLiveStreamItem>(json);
  }
}

mixin XTremeCodeLiveStreamItemMappable {
  String toJson() {
    return XTremeCodeLiveStreamItemMapper.ensureInitialized()
        .encodeJson<XTremeCodeLiveStreamItem>(this as XTremeCodeLiveStreamItem);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeLiveStreamItemMapper.ensureInitialized()
        .encodeMap<XTremeCodeLiveStreamItem>(this as XTremeCodeLiveStreamItem);
  }

  XTremeCodeLiveStreamItemCopyWith<XTremeCodeLiveStreamItem,
          XTremeCodeLiveStreamItem, XTremeCodeLiveStreamItem>
      get copyWith => _XTremeCodeLiveStreamItemCopyWithImpl<
              XTremeCodeLiveStreamItem, XTremeCodeLiveStreamItem>(
          this as XTremeCodeLiveStreamItem, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeLiveStreamItemMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeLiveStreamItem);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeLiveStreamItemMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeLiveStreamItem, other);
  }

  @override
  int get hashCode {
    return XTremeCodeLiveStreamItemMapper.ensureInitialized()
        .hashValue(this as XTremeCodeLiveStreamItem);
  }
}

extension XTremeCodeLiveStreamItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeLiveStreamItem, $Out> {
  XTremeCodeLiveStreamItemCopyWith<$R, XTremeCodeLiveStreamItem, $Out>
      get $asXTremeCodeLiveStreamItem => $base.as((v, t, t2) =>
          _XTremeCodeLiveStreamItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeLiveStreamItemCopyWith<
    $R,
    $In extends XTremeCodeLiveStreamItem,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get categoryIds;
  $R call(
      {int? num,
      String? name,
      String? streamType,
      int? streamId,
      String? streamIcon,
      String? epgChannelId,
      DateTime? added,
      int? customSid,
      int? tvArchive,
      String? directSource,
      int? tvArchiveDuration,
      int? categoryId,
      List<int>? categoryIds,
      String? thumbnail});
  XTremeCodeLiveStreamItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeLiveStreamItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeLiveStreamItem, $Out>
    implements
        XTremeCodeLiveStreamItemCopyWith<$R, XTremeCodeLiveStreamItem, $Out> {
  _XTremeCodeLiveStreamItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeLiveStreamItem> $mapper =
      XTremeCodeLiveStreamItemMapper.ensureInitialized();
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
          {Object? num = $none,
          Object? name = $none,
          Object? streamType = $none,
          Object? streamId = $none,
          Object? streamIcon = $none,
          Object? epgChannelId = $none,
          Object? added = $none,
          Object? customSid = $none,
          Object? tvArchive = $none,
          Object? directSource = $none,
          Object? tvArchiveDuration = $none,
          Object? categoryId = $none,
          Object? categoryIds = $none,
          Object? thumbnail = $none}) =>
      $apply(FieldCopyWithData({
        if (num != $none) #num: num,
        if (name != $none) #name: name,
        if (streamType != $none) #streamType: streamType,
        if (streamId != $none) #streamId: streamId,
        if (streamIcon != $none) #streamIcon: streamIcon,
        if (epgChannelId != $none) #epgChannelId: epgChannelId,
        if (added != $none) #added: added,
        if (customSid != $none) #customSid: customSid,
        if (tvArchive != $none) #tvArchive: tvArchive,
        if (directSource != $none) #directSource: directSource,
        if (tvArchiveDuration != $none) #tvArchiveDuration: tvArchiveDuration,
        if (categoryId != $none) #categoryId: categoryId,
        if (categoryIds != $none) #categoryIds: categoryIds,
        if (thumbnail != $none) #thumbnail: thumbnail
      }));
  @override
  XTremeCodeLiveStreamItem $make(CopyWithData data) => XTremeCodeLiveStreamItem(
      num: data.get(#num, or: $value.num),
      name: data.get(#name, or: $value.name),
      streamType: data.get(#streamType, or: $value.streamType),
      streamId: data.get(#streamId, or: $value.streamId),
      streamIcon: data.get(#streamIcon, or: $value.streamIcon),
      epgChannelId: data.get(#epgChannelId, or: $value.epgChannelId),
      added: data.get(#added, or: $value.added),
      customSid: data.get(#customSid, or: $value.customSid),
      tvArchive: data.get(#tvArchive, or: $value.tvArchive),
      directSource: data.get(#directSource, or: $value.directSource),
      tvArchiveDuration:
          data.get(#tvArchiveDuration, or: $value.tvArchiveDuration),
      categoryId: data.get(#categoryId, or: $value.categoryId),
      categoryIds: data.get(#categoryIds, or: $value.categoryIds),
      thumbnail: data.get(#thumbnail, or: $value.thumbnail));

  @override
  XTremeCodeLiveStreamItemCopyWith<$R2, XTremeCodeLiveStreamItem, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _XTremeCodeLiveStreamItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
