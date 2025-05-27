// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'epg_listing_table.dart';

class EpgListingTableMapper extends ClassMapperBase<EpgListingTable> {
  EpgListingTableMapper._();

  static EpgListingTableMapper? _instance;
  static EpgListingTableMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EpgListingTableMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EpgListingTable';

  static int? _$id(EpgListingTable v) => v.id;
  static const Field<EpgListingTable, int> _f$id = Field('id', _$id);
  static int? _$epgId(EpgListingTable v) => v.epgId;
  static const Field<EpgListingTable, int> _f$epgId =
      Field('epgId', _$epgId, key: r'epg_id');
  static String? _$title(EpgListingTable v) => v.title;
  static const Field<EpgListingTable, String> _f$title =
      Field('title', _$title);
  static String? _$lang(EpgListingTable v) => v.lang;
  static const Field<EpgListingTable, String> _f$lang = Field('lang', _$lang);
  static DateTime? _$start(EpgListingTable v) => v.start;
  static const Field<EpgListingTable, DateTime> _f$start =
      Field('start', _$start);
  static DateTime? _$end(EpgListingTable v) => v.end;
  static const Field<EpgListingTable, DateTime> _f$end = Field('end', _$end);
  static String? _$description(EpgListingTable v) => v.description;
  static const Field<EpgListingTable, String> _f$description =
      Field('description', _$description);
  static String? _$channelId(EpgListingTable v) => v.channelId;
  static const Field<EpgListingTable, String> _f$channelId =
      Field('channelId', _$channelId, key: r'channel_id');
  static DateTime? _$startTimestamp(EpgListingTable v) => v.startTimestamp;
  static const Field<EpgListingTable, DateTime> _f$startTimestamp =
      Field('startTimestamp', _$startTimestamp, key: r'start_timestamp');
  static DateTime? _$stopTimestamp(EpgListingTable v) => v.stopTimestamp;
  static const Field<EpgListingTable, DateTime> _f$stopTimestamp =
      Field('stopTimestamp', _$stopTimestamp, key: r'stop_timestamp');
  static bool? _$nowPlaying(EpgListingTable v) => v.nowPlaying;
  static const Field<EpgListingTable, bool> _f$nowPlaying =
      Field('nowPlaying', _$nowPlaying, key: r'now_playing');
  static bool? _$hasArchive(EpgListingTable v) => v.hasArchive;
  static const Field<EpgListingTable, bool> _f$hasArchive =
      Field('hasArchive', _$hasArchive, key: r'has_archive');

  @override
  final MappableFields<EpgListingTable> fields = const {
    #id: _f$id,
    #epgId: _f$epgId,
    #title: _f$title,
    #lang: _f$lang,
    #start: _f$start,
    #end: _f$end,
    #description: _f$description,
    #channelId: _f$channelId,
    #startTimestamp: _f$startTimestamp,
    #stopTimestamp: _f$stopTimestamp,
    #nowPlaying: _f$nowPlaying,
    #hasArchive: _f$hasArchive,
  };

  static EpgListingTable _instantiate(DecodingData data) {
    return EpgListingTable(
        id: data.dec(_f$id),
        epgId: data.dec(_f$epgId),
        title: data.dec(_f$title),
        lang: data.dec(_f$lang),
        start: data.dec(_f$start),
        end: data.dec(_f$end),
        description: data.dec(_f$description),
        channelId: data.dec(_f$channelId),
        startTimestamp: data.dec(_f$startTimestamp),
        stopTimestamp: data.dec(_f$stopTimestamp),
        nowPlaying: data.dec(_f$nowPlaying),
        hasArchive: data.dec(_f$hasArchive));
  }

  @override
  final Function instantiate = _instantiate;

  static EpgListingTable fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EpgListingTable>(map);
  }

  static EpgListingTable fromJson(String json) {
    return ensureInitialized().decodeJson<EpgListingTable>(json);
  }
}

mixin EpgListingTableMappable {
  String toJson() {
    return EpgListingTableMapper.ensureInitialized()
        .encodeJson<EpgListingTable>(this as EpgListingTable);
  }

  Map<String, dynamic> toMap() {
    return EpgListingTableMapper.ensureInitialized()
        .encodeMap<EpgListingTable>(this as EpgListingTable);
  }

  EpgListingTableCopyWith<EpgListingTable, EpgListingTable, EpgListingTable>
      get copyWith =>
          _EpgListingTableCopyWithImpl<EpgListingTable, EpgListingTable>(
              this as EpgListingTable, $identity, $identity);
  @override
  String toString() {
    return EpgListingTableMapper.ensureInitialized()
        .stringifyValue(this as EpgListingTable);
  }

  @override
  bool operator ==(Object other) {
    return EpgListingTableMapper.ensureInitialized()
        .equalsValue(this as EpgListingTable, other);
  }

  @override
  int get hashCode {
    return EpgListingTableMapper.ensureInitialized()
        .hashValue(this as EpgListingTable);
  }
}

extension EpgListingTableValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EpgListingTable, $Out> {
  EpgListingTableCopyWith<$R, EpgListingTable, $Out> get $asEpgListingTable =>
      $base.as((v, t, t2) => _EpgListingTableCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EpgListingTableCopyWith<$R, $In extends EpgListingTable, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      int? epgId,
      String? title,
      String? lang,
      DateTime? start,
      DateTime? end,
      String? description,
      String? channelId,
      DateTime? startTimestamp,
      DateTime? stopTimestamp,
      bool? nowPlaying,
      bool? hasArchive});
  EpgListingTableCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _EpgListingTableCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EpgListingTable, $Out>
    implements EpgListingTableCopyWith<$R, EpgListingTable, $Out> {
  _EpgListingTableCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EpgListingTable> $mapper =
      EpgListingTableMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? epgId = $none,
          Object? title = $none,
          Object? lang = $none,
          Object? start = $none,
          Object? end = $none,
          Object? description = $none,
          Object? channelId = $none,
          Object? startTimestamp = $none,
          Object? stopTimestamp = $none,
          Object? nowPlaying = $none,
          Object? hasArchive = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (epgId != $none) #epgId: epgId,
        if (title != $none) #title: title,
        if (lang != $none) #lang: lang,
        if (start != $none) #start: start,
        if (end != $none) #end: end,
        if (description != $none) #description: description,
        if (channelId != $none) #channelId: channelId,
        if (startTimestamp != $none) #startTimestamp: startTimestamp,
        if (stopTimestamp != $none) #stopTimestamp: stopTimestamp,
        if (nowPlaying != $none) #nowPlaying: nowPlaying,
        if (hasArchive != $none) #hasArchive: hasArchive
      }));
  @override
  EpgListingTable $make(CopyWithData data) => EpgListingTable(
      id: data.get(#id, or: $value.id),
      epgId: data.get(#epgId, or: $value.epgId),
      title: data.get(#title, or: $value.title),
      lang: data.get(#lang, or: $value.lang),
      start: data.get(#start, or: $value.start),
      end: data.get(#end, or: $value.end),
      description: data.get(#description, or: $value.description),
      channelId: data.get(#channelId, or: $value.channelId),
      startTimestamp: data.get(#startTimestamp, or: $value.startTimestamp),
      stopTimestamp: data.get(#stopTimestamp, or: $value.stopTimestamp),
      nowPlaying: data.get(#nowPlaying, or: $value.nowPlaying),
      hasArchive: data.get(#hasArchive, or: $value.hasArchive));

  @override
  EpgListingTableCopyWith<$R2, EpgListingTable, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EpgListingTableCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
