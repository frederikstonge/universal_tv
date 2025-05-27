// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'live_stream_item.dart';

class LiveStreamItemMapper extends ClassMapperBase<LiveStreamItem> {
  LiveStreamItemMapper._();

  static LiveStreamItemMapper? _instance;
  static LiveStreamItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LiveStreamItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LiveStreamItem';

  static int? _$num(LiveStreamItem v) => v.num;
  static const Field<LiveStreamItem, int> _f$num = Field('num', _$num);
  static String? _$name(LiveStreamItem v) => v.name;
  static const Field<LiveStreamItem, String> _f$name = Field('name', _$name);
  static String? _$streamType(LiveStreamItem v) => v.streamType;
  static const Field<LiveStreamItem, String> _f$streamType =
      Field('streamType', _$streamType, key: r'stream_type');
  static int? _$streamId(LiveStreamItem v) => v.streamId;
  static const Field<LiveStreamItem, int> _f$streamId =
      Field('streamId', _$streamId, key: r'stream_id');
  static String? _$streamIcon(LiveStreamItem v) => v.streamIcon;
  static const Field<LiveStreamItem, String> _f$streamIcon =
      Field('streamIcon', _$streamIcon, key: r'stream_icon');
  static String? _$epgChannelId(LiveStreamItem v) => v.epgChannelId;
  static const Field<LiveStreamItem, String> _f$epgChannelId =
      Field('epgChannelId', _$epgChannelId, key: r'epg_channel_id');
  static DateTime? _$added(LiveStreamItem v) => v.added;
  static const Field<LiveStreamItem, DateTime> _f$added =
      Field('added', _$added);
  static int? _$customSid(LiveStreamItem v) => v.customSid;
  static const Field<LiveStreamItem, int> _f$customSid =
      Field('customSid', _$customSid, key: r'custom_sid');
  static int? _$tvArchive(LiveStreamItem v) => v.tvArchive;
  static const Field<LiveStreamItem, int> _f$tvArchive =
      Field('tvArchive', _$tvArchive, key: r'tv_archive');
  static String? _$directSource(LiveStreamItem v) => v.directSource;
  static const Field<LiveStreamItem, String> _f$directSource =
      Field('directSource', _$directSource, key: r'direct_source');
  static int? _$tvArchiveDuration(LiveStreamItem v) => v.tvArchiveDuration;
  static const Field<LiveStreamItem, int> _f$tvArchiveDuration = Field(
      'tvArchiveDuration', _$tvArchiveDuration,
      key: r'tv_archive_duration');
  static int? _$categoryId(LiveStreamItem v) => v.categoryId;
  static const Field<LiveStreamItem, int> _f$categoryId =
      Field('categoryId', _$categoryId, key: r'category_id');
  static List<int>? _$categoryIds(LiveStreamItem v) => v.categoryIds;
  static const Field<LiveStreamItem, List<int>> _f$categoryIds =
      Field('categoryIds', _$categoryIds, key: r'category_ids');
  static String? _$thumbnail(LiveStreamItem v) => v.thumbnail;
  static const Field<LiveStreamItem, String> _f$thumbnail =
      Field('thumbnail', _$thumbnail);

  @override
  final MappableFields<LiveStreamItem> fields = const {
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

  static LiveStreamItem _instantiate(DecodingData data) {
    return LiveStreamItem(
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

  static LiveStreamItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LiveStreamItem>(map);
  }

  static LiveStreamItem fromJson(String json) {
    return ensureInitialized().decodeJson<LiveStreamItem>(json);
  }
}

mixin LiveStreamItemMappable {
  String toJson() {
    return LiveStreamItemMapper.ensureInitialized()
        .encodeJson<LiveStreamItem>(this as LiveStreamItem);
  }

  Map<String, dynamic> toMap() {
    return LiveStreamItemMapper.ensureInitialized()
        .encodeMap<LiveStreamItem>(this as LiveStreamItem);
  }

  LiveStreamItemCopyWith<LiveStreamItem, LiveStreamItem, LiveStreamItem>
      get copyWith =>
          _LiveStreamItemCopyWithImpl<LiveStreamItem, LiveStreamItem>(
              this as LiveStreamItem, $identity, $identity);
  @override
  String toString() {
    return LiveStreamItemMapper.ensureInitialized()
        .stringifyValue(this as LiveStreamItem);
  }

  @override
  bool operator ==(Object other) {
    return LiveStreamItemMapper.ensureInitialized()
        .equalsValue(this as LiveStreamItem, other);
  }

  @override
  int get hashCode {
    return LiveStreamItemMapper.ensureInitialized()
        .hashValue(this as LiveStreamItem);
  }
}

extension LiveStreamItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LiveStreamItem, $Out> {
  LiveStreamItemCopyWith<$R, LiveStreamItem, $Out> get $asLiveStreamItem =>
      $base.as((v, t, t2) => _LiveStreamItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LiveStreamItemCopyWith<$R, $In extends LiveStreamItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
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
  LiveStreamItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LiveStreamItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LiveStreamItem, $Out>
    implements LiveStreamItemCopyWith<$R, LiveStreamItem, $Out> {
  _LiveStreamItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LiveStreamItem> $mapper =
      LiveStreamItemMapper.ensureInitialized();
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
  LiveStreamItem $make(CopyWithData data) => LiveStreamItem(
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
  LiveStreamItemCopyWith<$R2, LiveStreamItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LiveStreamItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
