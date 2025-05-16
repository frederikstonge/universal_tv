// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'episode.dart';

class XTremeCodeEpisodeMapper extends ClassMapperBase<XTremeCodeEpisode> {
  XTremeCodeEpisodeMapper._();

  static XTremeCodeEpisodeMapper? _instance;
  static XTremeCodeEpisodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeEpisodeMapper._());
      XTremeCodeEpisodeInfoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeEpisode';

  static int? _$id(XTremeCodeEpisode v) => v.id;
  static const Field<XTremeCodeEpisode, int> _f$id = Field('id', _$id);
  static int? _$episodeNum(XTremeCodeEpisode v) => v.episodeNum;
  static const Field<XTremeCodeEpisode, int> _f$episodeNum =
      Field('episodeNum', _$episodeNum, key: r'episode_num');
  static String? _$title(XTremeCodeEpisode v) => v.title;
  static const Field<XTremeCodeEpisode, String> _f$title =
      Field('title', _$title);
  static String? _$containerExtension(XTremeCodeEpisode v) =>
      v.containerExtension;
  static const Field<XTremeCodeEpisode, String> _f$containerExtension = Field(
      'containerExtension', _$containerExtension,
      key: r'container_extension');
  static XTremeCodeEpisodeInfo? _$info(XTremeCodeEpisode v) => v.info;
  static const Field<XTremeCodeEpisode, XTremeCodeEpisodeInfo> _f$info =
      Field('info', _$info);
  static List<String>? _$subtitles(XTremeCodeEpisode v) => v.subtitles;
  static const Field<XTremeCodeEpisode, List<String>> _f$subtitles =
      Field('subtitles', _$subtitles);
  static String? _$customSid(XTremeCodeEpisode v) => v.customSid;
  static const Field<XTremeCodeEpisode, String> _f$customSid =
      Field('customSid', _$customSid, key: r'custom_sid');
  static DateTime? _$added(XTremeCodeEpisode v) => v.added;
  static const Field<XTremeCodeEpisode, DateTime> _f$added =
      Field('added', _$added);
  static int? _$season(XTremeCodeEpisode v) => v.season;
  static const Field<XTremeCodeEpisode, int> _f$season =
      Field('season', _$season);
  static String? _$directSource(XTremeCodeEpisode v) => v.directSource;
  static const Field<XTremeCodeEpisode, String> _f$directSource =
      Field('directSource', _$directSource, key: r'direct_source');

  @override
  final MappableFields<XTremeCodeEpisode> fields = const {
    #id: _f$id,
    #episodeNum: _f$episodeNum,
    #title: _f$title,
    #containerExtension: _f$containerExtension,
    #info: _f$info,
    #subtitles: _f$subtitles,
    #customSid: _f$customSid,
    #added: _f$added,
    #season: _f$season,
    #directSource: _f$directSource,
  };

  static XTremeCodeEpisode _instantiate(DecodingData data) {
    return XTremeCodeEpisode(
        id: data.dec(_f$id),
        episodeNum: data.dec(_f$episodeNum),
        title: data.dec(_f$title),
        containerExtension: data.dec(_f$containerExtension),
        info: data.dec(_f$info),
        subtitles: data.dec(_f$subtitles),
        customSid: data.dec(_f$customSid),
        added: data.dec(_f$added),
        season: data.dec(_f$season),
        directSource: data.dec(_f$directSource));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeEpisode fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeEpisode>(map);
  }

  static XTremeCodeEpisode fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeEpisode>(json);
  }
}

mixin XTremeCodeEpisodeMappable {
  String toJson() {
    return XTremeCodeEpisodeMapper.ensureInitialized()
        .encodeJson<XTremeCodeEpisode>(this as XTremeCodeEpisode);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeEpisodeMapper.ensureInitialized()
        .encodeMap<XTremeCodeEpisode>(this as XTremeCodeEpisode);
  }

  XTremeCodeEpisodeCopyWith<XTremeCodeEpisode, XTremeCodeEpisode,
          XTremeCodeEpisode>
      get copyWith =>
          _XTremeCodeEpisodeCopyWithImpl<XTremeCodeEpisode, XTremeCodeEpisode>(
              this as XTremeCodeEpisode, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeEpisodeMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeEpisode);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeEpisodeMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeEpisode, other);
  }

  @override
  int get hashCode {
    return XTremeCodeEpisodeMapper.ensureInitialized()
        .hashValue(this as XTremeCodeEpisode);
  }
}

extension XTremeCodeEpisodeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeEpisode, $Out> {
  XTremeCodeEpisodeCopyWith<$R, XTremeCodeEpisode, $Out>
      get $asXTremeCodeEpisode => $base
          .as((v, t, t2) => _XTremeCodeEpisodeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeEpisodeCopyWith<$R, $In extends XTremeCodeEpisode,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  XTremeCodeEpisodeInfoCopyWith<$R, XTremeCodeEpisodeInfo,
      XTremeCodeEpisodeInfo>? get info;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get subtitles;
  $R call(
      {int? id,
      int? episodeNum,
      String? title,
      String? containerExtension,
      XTremeCodeEpisodeInfo? info,
      List<String>? subtitles,
      String? customSid,
      DateTime? added,
      int? season,
      String? directSource});
  XTremeCodeEpisodeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeEpisodeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeEpisode, $Out>
    implements XTremeCodeEpisodeCopyWith<$R, XTremeCodeEpisode, $Out> {
  _XTremeCodeEpisodeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeEpisode> $mapper =
      XTremeCodeEpisodeMapper.ensureInitialized();
  @override
  XTremeCodeEpisodeInfoCopyWith<$R, XTremeCodeEpisodeInfo,
          XTremeCodeEpisodeInfo>?
      get info => $value.info?.copyWith.$chain((v) => call(info: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get subtitles =>
      $value.subtitles != null
          ? ListCopyWith(
              $value.subtitles!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(subtitles: v))
          : null;
  @override
  $R call(
          {Object? id = $none,
          Object? episodeNum = $none,
          Object? title = $none,
          Object? containerExtension = $none,
          Object? info = $none,
          Object? subtitles = $none,
          Object? customSid = $none,
          Object? added = $none,
          Object? season = $none,
          Object? directSource = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (episodeNum != $none) #episodeNum: episodeNum,
        if (title != $none) #title: title,
        if (containerExtension != $none)
          #containerExtension: containerExtension,
        if (info != $none) #info: info,
        if (subtitles != $none) #subtitles: subtitles,
        if (customSid != $none) #customSid: customSid,
        if (added != $none) #added: added,
        if (season != $none) #season: season,
        if (directSource != $none) #directSource: directSource
      }));
  @override
  XTremeCodeEpisode $make(CopyWithData data) => XTremeCodeEpisode(
      id: data.get(#id, or: $value.id),
      episodeNum: data.get(#episodeNum, or: $value.episodeNum),
      title: data.get(#title, or: $value.title),
      containerExtension:
          data.get(#containerExtension, or: $value.containerExtension),
      info: data.get(#info, or: $value.info),
      subtitles: data.get(#subtitles, or: $value.subtitles),
      customSid: data.get(#customSid, or: $value.customSid),
      added: data.get(#added, or: $value.added),
      season: data.get(#season, or: $value.season),
      directSource: data.get(#directSource, or: $value.directSource));

  @override
  XTremeCodeEpisodeCopyWith<$R2, XTremeCodeEpisode, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _XTremeCodeEpisodeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
