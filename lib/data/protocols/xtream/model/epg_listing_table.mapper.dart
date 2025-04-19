// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'epg_listing_table.dart';

class XTremeCodeEpgListingTableMapper
    extends ClassMapperBase<XTremeCodeEpgListingTable> {
  XTremeCodeEpgListingTableMapper._();

  static XTremeCodeEpgListingTableMapper? _instance;
  static XTremeCodeEpgListingTableMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = XTremeCodeEpgListingTableMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeEpgListingTable';

  static int? _$id(XTremeCodeEpgListingTable v) => v.id;
  static const Field<XTremeCodeEpgListingTable, int> _f$id = Field('id', _$id);
  static int? _$epgId(XTremeCodeEpgListingTable v) => v.epgId;
  static const Field<XTremeCodeEpgListingTable, int> _f$epgId =
      Field('epgId', _$epgId, key: r'epg_id');
  static String? _$title(XTremeCodeEpgListingTable v) => v.title;
  static const Field<XTremeCodeEpgListingTable, String> _f$title =
      Field('title', _$title);
  static String? _$lang(XTremeCodeEpgListingTable v) => v.lang;
  static const Field<XTremeCodeEpgListingTable, String> _f$lang =
      Field('lang', _$lang);
  static DateTime? _$start(XTremeCodeEpgListingTable v) => v.start;
  static const Field<XTremeCodeEpgListingTable, DateTime> _f$start =
      Field('start', _$start);
  static DateTime? _$end(XTremeCodeEpgListingTable v) => v.end;
  static const Field<XTremeCodeEpgListingTable, DateTime> _f$end =
      Field('end', _$end);
  static String? _$description(XTremeCodeEpgListingTable v) => v.description;
  static const Field<XTremeCodeEpgListingTable, String> _f$description =
      Field('description', _$description);
  static String? _$channelId(XTremeCodeEpgListingTable v) => v.channelId;
  static const Field<XTremeCodeEpgListingTable, String> _f$channelId =
      Field('channelId', _$channelId, key: r'channel_id');
  static DateTime? _$startTimestamp(XTremeCodeEpgListingTable v) =>
      v.startTimestamp;
  static const Field<XTremeCodeEpgListingTable, DateTime> _f$startTimestamp =
      Field('startTimestamp', _$startTimestamp, key: r'start_timestamp');
  static DateTime? _$stopTimestamp(XTremeCodeEpgListingTable v) =>
      v.stopTimestamp;
  static const Field<XTremeCodeEpgListingTable, DateTime> _f$stopTimestamp =
      Field('stopTimestamp', _$stopTimestamp, key: r'stop_timestamp');
  static bool? _$nowPlaying(XTremeCodeEpgListingTable v) => v.nowPlaying;
  static const Field<XTremeCodeEpgListingTable, bool> _f$nowPlaying =
      Field('nowPlaying', _$nowPlaying, key: r'now_playing');
  static bool? _$hasArchive(XTremeCodeEpgListingTable v) => v.hasArchive;
  static const Field<XTremeCodeEpgListingTable, bool> _f$hasArchive =
      Field('hasArchive', _$hasArchive, key: r'has_archive');

  @override
  final MappableFields<XTremeCodeEpgListingTable> fields = const {
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

  static XTremeCodeEpgListingTable _instantiate(DecodingData data) {
    return XTremeCodeEpgListingTable(
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

  static XTremeCodeEpgListingTable fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeEpgListingTable>(map);
  }

  static XTremeCodeEpgListingTable fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeEpgListingTable>(json);
  }
}

mixin XTremeCodeEpgListingTableMappable {
  String toJson() {
    return XTremeCodeEpgListingTableMapper.ensureInitialized()
        .encodeJson<XTremeCodeEpgListingTable>(
            this as XTremeCodeEpgListingTable);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeEpgListingTableMapper.ensureInitialized()
        .encodeMap<XTremeCodeEpgListingTable>(
            this as XTremeCodeEpgListingTable);
  }

  XTremeCodeEpgListingTableCopyWith<XTremeCodeEpgListingTable,
          XTremeCodeEpgListingTable, XTremeCodeEpgListingTable>
      get copyWith => _XTremeCodeEpgListingTableCopyWithImpl<
              XTremeCodeEpgListingTable, XTremeCodeEpgListingTable>(
          this as XTremeCodeEpgListingTable, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeEpgListingTableMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeEpgListingTable);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeEpgListingTableMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeEpgListingTable, other);
  }

  @override
  int get hashCode {
    return XTremeCodeEpgListingTableMapper.ensureInitialized()
        .hashValue(this as XTremeCodeEpgListingTable);
  }
}

extension XTremeCodeEpgListingTableValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeEpgListingTable, $Out> {
  XTremeCodeEpgListingTableCopyWith<$R, XTremeCodeEpgListingTable, $Out>
      get $asXTremeCodeEpgListingTable => $base.as((v, t, t2) =>
          _XTremeCodeEpgListingTableCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeEpgListingTableCopyWith<
    $R,
    $In extends XTremeCodeEpgListingTable,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
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
  XTremeCodeEpgListingTableCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeEpgListingTableCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeEpgListingTable, $Out>
    implements
        XTremeCodeEpgListingTableCopyWith<$R, XTremeCodeEpgListingTable, $Out> {
  _XTremeCodeEpgListingTableCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeEpgListingTable> $mapper =
      XTremeCodeEpgListingTableMapper.ensureInitialized();
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
  XTremeCodeEpgListingTable $make(CopyWithData data) =>
      XTremeCodeEpgListingTable(
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
  XTremeCodeEpgListingTableCopyWith<$R2, XTremeCodeEpgListingTable, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _XTremeCodeEpgListingTableCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
