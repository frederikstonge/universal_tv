// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'epg_listing.dart';

class XTremeCodeEpgListingMapper extends ClassMapperBase<XTremeCodeEpgListing> {
  XTremeCodeEpgListingMapper._();

  static XTremeCodeEpgListingMapper? _instance;
  static XTremeCodeEpgListingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeEpgListingMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeEpgListing';

  static int? _$id(XTremeCodeEpgListing v) => v.id;
  static const Field<XTremeCodeEpgListing, int> _f$id = Field('id', _$id);
  static int? _$epgId(XTremeCodeEpgListing v) => v.epgId;
  static const Field<XTremeCodeEpgListing, int> _f$epgId =
      Field('epgId', _$epgId, key: r'epg_id');
  static String? _$title(XTremeCodeEpgListing v) => v.title;
  static const Field<XTremeCodeEpgListing, String> _f$title =
      Field('title', _$title);
  static String? _$lang(XTremeCodeEpgListing v) => v.lang;
  static const Field<XTremeCodeEpgListing, String> _f$lang =
      Field('lang', _$lang);
  static DateTime? _$start(XTremeCodeEpgListing v) => v.start;
  static const Field<XTremeCodeEpgListing, DateTime> _f$start =
      Field('start', _$start);
  static DateTime? _$end(XTremeCodeEpgListing v) => v.end;
  static const Field<XTremeCodeEpgListing, DateTime> _f$end =
      Field('end', _$end);
  static String? _$description(XTremeCodeEpgListing v) => v.description;
  static const Field<XTremeCodeEpgListing, String> _f$description =
      Field('description', _$description);
  static String? _$channelId(XTremeCodeEpgListing v) => v.channelId;
  static const Field<XTremeCodeEpgListing, String> _f$channelId =
      Field('channelId', _$channelId, key: r'channel_id');
  static DateTime? _$startTimestamp(XTremeCodeEpgListing v) => v.startTimestamp;
  static const Field<XTremeCodeEpgListing, DateTime> _f$startTimestamp =
      Field('startTimestamp', _$startTimestamp, key: r'start_timestamp');
  static DateTime? _$stopTimestamp(XTremeCodeEpgListing v) => v.stopTimestamp;
  static const Field<XTremeCodeEpgListing, DateTime> _f$stopTimestamp =
      Field('stopTimestamp', _$stopTimestamp, key: r'stop_timestamp');
  static DateTime? _$stop(XTremeCodeEpgListing v) => v.stop;
  static const Field<XTremeCodeEpgListing, DateTime> _f$stop =
      Field('stop', _$stop);

  @override
  final MappableFields<XTremeCodeEpgListing> fields = const {
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
    #stop: _f$stop,
  };

  static XTremeCodeEpgListing _instantiate(DecodingData data) {
    return XTremeCodeEpgListing(
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
        stop: data.dec(_f$stop));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeEpgListing fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeEpgListing>(map);
  }

  static XTremeCodeEpgListing fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeEpgListing>(json);
  }
}

mixin XTremeCodeEpgListingMappable {
  String toJson() {
    return XTremeCodeEpgListingMapper.ensureInitialized()
        .encodeJson<XTremeCodeEpgListing>(this as XTremeCodeEpgListing);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeEpgListingMapper.ensureInitialized()
        .encodeMap<XTremeCodeEpgListing>(this as XTremeCodeEpgListing);
  }

  XTremeCodeEpgListingCopyWith<XTremeCodeEpgListing, XTremeCodeEpgListing,
      XTremeCodeEpgListing> get copyWith => _XTremeCodeEpgListingCopyWithImpl<
          XTremeCodeEpgListing, XTremeCodeEpgListing>(
      this as XTremeCodeEpgListing, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeEpgListingMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeEpgListing);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeEpgListingMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeEpgListing, other);
  }

  @override
  int get hashCode {
    return XTremeCodeEpgListingMapper.ensureInitialized()
        .hashValue(this as XTremeCodeEpgListing);
  }
}

extension XTremeCodeEpgListingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeEpgListing, $Out> {
  XTremeCodeEpgListingCopyWith<$R, XTremeCodeEpgListing, $Out>
      get $asXTremeCodeEpgListing => $base.as(
          (v, t, t2) => _XTremeCodeEpgListingCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeEpgListingCopyWith<
    $R,
    $In extends XTremeCodeEpgListing,
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
      DateTime? stop});
  XTremeCodeEpgListingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeEpgListingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeEpgListing, $Out>
    implements XTremeCodeEpgListingCopyWith<$R, XTremeCodeEpgListing, $Out> {
  _XTremeCodeEpgListingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeEpgListing> $mapper =
      XTremeCodeEpgListingMapper.ensureInitialized();
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
          Object? stop = $none}) =>
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
        if (stop != $none) #stop: stop
      }));
  @override
  XTremeCodeEpgListing $make(CopyWithData data) => XTremeCodeEpgListing(
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
      stop: data.get(#stop, or: $value.stop));

  @override
  XTremeCodeEpgListingCopyWith<$R2, XTremeCodeEpgListing, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _XTremeCodeEpgListingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
