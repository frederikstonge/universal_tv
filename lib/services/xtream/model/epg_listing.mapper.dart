// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'epg_listing.dart';

class EpgListingMapper extends ClassMapperBase<EpgListing> {
  EpgListingMapper._();

  static EpgListingMapper? _instance;
  static EpgListingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EpgListingMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EpgListing';

  static int? _$id(EpgListing v) => v.id;
  static const Field<EpgListing, int> _f$id = Field('id', _$id);
  static int? _$epgId(EpgListing v) => v.epgId;
  static const Field<EpgListing, int> _f$epgId =
      Field('epgId', _$epgId, key: r'epg_id');
  static String? _$title(EpgListing v) => v.title;
  static const Field<EpgListing, String> _f$title = Field('title', _$title);
  static String? _$lang(EpgListing v) => v.lang;
  static const Field<EpgListing, String> _f$lang = Field('lang', _$lang);
  static DateTime? _$start(EpgListing v) => v.start;
  static const Field<EpgListing, DateTime> _f$start = Field('start', _$start);
  static DateTime? _$end(EpgListing v) => v.end;
  static const Field<EpgListing, DateTime> _f$end = Field('end', _$end);
  static String? _$description(EpgListing v) => v.description;
  static const Field<EpgListing, String> _f$description =
      Field('description', _$description);
  static String? _$channelId(EpgListing v) => v.channelId;
  static const Field<EpgListing, String> _f$channelId =
      Field('channelId', _$channelId, key: r'channel_id');
  static DateTime? _$startTimestamp(EpgListing v) => v.startTimestamp;
  static const Field<EpgListing, DateTime> _f$startTimestamp =
      Field('startTimestamp', _$startTimestamp, key: r'start_timestamp');
  static DateTime? _$stopTimestamp(EpgListing v) => v.stopTimestamp;
  static const Field<EpgListing, DateTime> _f$stopTimestamp =
      Field('stopTimestamp', _$stopTimestamp, key: r'stop_timestamp');
  static DateTime? _$stop(EpgListing v) => v.stop;
  static const Field<EpgListing, DateTime> _f$stop = Field('stop', _$stop);

  @override
  final MappableFields<EpgListing> fields = const {
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

  static EpgListing _instantiate(DecodingData data) {
    return EpgListing(
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

  static EpgListing fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EpgListing>(map);
  }

  static EpgListing fromJson(String json) {
    return ensureInitialized().decodeJson<EpgListing>(json);
  }
}

mixin EpgListingMappable {
  String toJson() {
    return EpgListingMapper.ensureInitialized()
        .encodeJson<EpgListing>(this as EpgListing);
  }

  Map<String, dynamic> toMap() {
    return EpgListingMapper.ensureInitialized()
        .encodeMap<EpgListing>(this as EpgListing);
  }

  EpgListingCopyWith<EpgListing, EpgListing, EpgListing> get copyWith =>
      _EpgListingCopyWithImpl<EpgListing, EpgListing>(
          this as EpgListing, $identity, $identity);
  @override
  String toString() {
    return EpgListingMapper.ensureInitialized()
        .stringifyValue(this as EpgListing);
  }

  @override
  bool operator ==(Object other) {
    return EpgListingMapper.ensureInitialized()
        .equalsValue(this as EpgListing, other);
  }

  @override
  int get hashCode {
    return EpgListingMapper.ensureInitialized().hashValue(this as EpgListing);
  }
}

extension EpgListingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EpgListing, $Out> {
  EpgListingCopyWith<$R, EpgListing, $Out> get $asEpgListing =>
      $base.as((v, t, t2) => _EpgListingCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EpgListingCopyWith<$R, $In extends EpgListing, $Out>
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
      DateTime? stop});
  EpgListingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EpgListingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EpgListing, $Out>
    implements EpgListingCopyWith<$R, EpgListing, $Out> {
  _EpgListingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EpgListing> $mapper =
      EpgListingMapper.ensureInitialized();
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
  EpgListing $make(CopyWithData data) => EpgListing(
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
  EpgListingCopyWith<$R2, EpgListing, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EpgListingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
