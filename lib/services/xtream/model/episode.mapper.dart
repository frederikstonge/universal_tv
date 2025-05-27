// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'episode.dart';

class EpisodeMapper extends ClassMapperBase<Episode> {
  EpisodeMapper._();

  static EpisodeMapper? _instance;
  static EpisodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EpisodeMapper._());
      EpisodeInfoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Episode';

  static int? _$id(Episode v) => v.id;
  static const Field<Episode, int> _f$id = Field('id', _$id);
  static int? _$episodeNum(Episode v) => v.episodeNum;
  static const Field<Episode, int> _f$episodeNum =
      Field('episodeNum', _$episodeNum, key: r'episode_num');
  static String? _$title(Episode v) => v.title;
  static const Field<Episode, String> _f$title = Field('title', _$title);
  static String? _$containerExtension(Episode v) => v.containerExtension;
  static const Field<Episode, String> _f$containerExtension = Field(
      'containerExtension', _$containerExtension,
      key: r'container_extension');
  static EpisodeInfo? _$info(Episode v) => v.info;
  static const Field<Episode, EpisodeInfo> _f$info = Field('info', _$info);
  static List<String>? _$subtitles(Episode v) => v.subtitles;
  static const Field<Episode, List<String>> _f$subtitles =
      Field('subtitles', _$subtitles);
  static String? _$customSid(Episode v) => v.customSid;
  static const Field<Episode, String> _f$customSid =
      Field('customSid', _$customSid, key: r'custom_sid');
  static DateTime? _$added(Episode v) => v.added;
  static const Field<Episode, DateTime> _f$added = Field('added', _$added);
  static int? _$season(Episode v) => v.season;
  static const Field<Episode, int> _f$season = Field('season', _$season);
  static String? _$directSource(Episode v) => v.directSource;
  static const Field<Episode, String> _f$directSource =
      Field('directSource', _$directSource, key: r'direct_source');

  @override
  final MappableFields<Episode> fields = const {
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

  static Episode _instantiate(DecodingData data) {
    return Episode(
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

  static Episode fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Episode>(map);
  }

  static Episode fromJson(String json) {
    return ensureInitialized().decodeJson<Episode>(json);
  }
}

mixin EpisodeMappable {
  String toJson() {
    return EpisodeMapper.ensureInitialized()
        .encodeJson<Episode>(this as Episode);
  }

  Map<String, dynamic> toMap() {
    return EpisodeMapper.ensureInitialized()
        .encodeMap<Episode>(this as Episode);
  }

  EpisodeCopyWith<Episode, Episode, Episode> get copyWith =>
      _EpisodeCopyWithImpl<Episode, Episode>(
          this as Episode, $identity, $identity);
  @override
  String toString() {
    return EpisodeMapper.ensureInitialized().stringifyValue(this as Episode);
  }

  @override
  bool operator ==(Object other) {
    return EpisodeMapper.ensureInitialized()
        .equalsValue(this as Episode, other);
  }

  @override
  int get hashCode {
    return EpisodeMapper.ensureInitialized().hashValue(this as Episode);
  }
}

extension EpisodeValueCopy<$R, $Out> on ObjectCopyWith<$R, Episode, $Out> {
  EpisodeCopyWith<$R, Episode, $Out> get $asEpisode =>
      $base.as((v, t, t2) => _EpisodeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EpisodeCopyWith<$R, $In extends Episode, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  EpisodeInfoCopyWith<$R, EpisodeInfo, EpisodeInfo>? get info;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get subtitles;
  $R call(
      {int? id,
      int? episodeNum,
      String? title,
      String? containerExtension,
      EpisodeInfo? info,
      List<String>? subtitles,
      String? customSid,
      DateTime? added,
      int? season,
      String? directSource});
  EpisodeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EpisodeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Episode, $Out>
    implements EpisodeCopyWith<$R, Episode, $Out> {
  _EpisodeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Episode> $mapper =
      EpisodeMapper.ensureInitialized();
  @override
  EpisodeInfoCopyWith<$R, EpisodeInfo, EpisodeInfo>? get info =>
      $value.info?.copyWith.$chain((v) => call(info: v));
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
  Episode $make(CopyWithData data) => Episode(
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
  EpisodeCopyWith<$R2, Episode, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EpisodeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
