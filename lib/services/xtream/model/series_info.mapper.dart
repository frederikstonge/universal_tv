// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_info.dart';

class SeriesInfoMapper extends ClassMapperBase<SeriesInfo> {
  SeriesInfoMapper._();

  static SeriesInfoMapper? _instance;
  static SeriesInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesInfoMapper._());
      SeasonMapper.ensureInitialized();
      InfoMapper.ensureInitialized();
      EpisodeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesInfo';

  static List<Season>? _$seasons(SeriesInfo v) => v.seasons;
  static const Field<SeriesInfo, List<Season>> _f$seasons =
      Field('seasons', _$seasons);
  static Info? _$info(SeriesInfo v) => v.info;
  static const Field<SeriesInfo, Info> _f$info = Field('info', _$info);
  static Map<String, List<Episode>>? _$episodes(SeriesInfo v) => v.episodes;
  static const Field<SeriesInfo, Map<String, List<Episode>>> _f$episodes =
      Field('episodes', _$episodes);

  @override
  final MappableFields<SeriesInfo> fields = const {
    #seasons: _f$seasons,
    #info: _f$info,
    #episodes: _f$episodes,
  };

  static SeriesInfo _instantiate(DecodingData data) {
    return SeriesInfo(
        seasons: data.dec(_f$seasons),
        info: data.dec(_f$info),
        episodes: data.dec(_f$episodes));
  }

  @override
  final Function instantiate = _instantiate;

  static SeriesInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesInfo>(map);
  }

  static SeriesInfo fromJson(String json) {
    return ensureInitialized().decodeJson<SeriesInfo>(json);
  }
}

mixin SeriesInfoMappable {
  String toJson() {
    return SeriesInfoMapper.ensureInitialized()
        .encodeJson<SeriesInfo>(this as SeriesInfo);
  }

  Map<String, dynamic> toMap() {
    return SeriesInfoMapper.ensureInitialized()
        .encodeMap<SeriesInfo>(this as SeriesInfo);
  }

  SeriesInfoCopyWith<SeriesInfo, SeriesInfo, SeriesInfo> get copyWith =>
      _SeriesInfoCopyWithImpl<SeriesInfo, SeriesInfo>(
          this as SeriesInfo, $identity, $identity);
  @override
  String toString() {
    return SeriesInfoMapper.ensureInitialized()
        .stringifyValue(this as SeriesInfo);
  }

  @override
  bool operator ==(Object other) {
    return SeriesInfoMapper.ensureInitialized()
        .equalsValue(this as SeriesInfo, other);
  }

  @override
  int get hashCode {
    return SeriesInfoMapper.ensureInitialized().hashValue(this as SeriesInfo);
  }
}

extension SeriesInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesInfo, $Out> {
  SeriesInfoCopyWith<$R, SeriesInfo, $Out> get $asSeriesInfo =>
      $base.as((v, t, t2) => _SeriesInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesInfoCopyWith<$R, $In extends SeriesInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Season, SeasonCopyWith<$R, Season, Season>>? get seasons;
  InfoCopyWith<$R, Info, Info>? get info;
  MapCopyWith<$R, String, List<Episode>,
      ObjectCopyWith<$R, List<Episode>, List<Episode>>>? get episodes;
  $R call(
      {List<Season>? seasons,
      Info? info,
      Map<String, List<Episode>>? episodes});
  SeriesInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SeriesInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesInfo, $Out>
    implements SeriesInfoCopyWith<$R, SeriesInfo, $Out> {
  _SeriesInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesInfo> $mapper =
      SeriesInfoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Season, SeasonCopyWith<$R, Season, Season>>? get seasons =>
      $value.seasons != null
          ? ListCopyWith($value.seasons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(seasons: v))
          : null;
  @override
  InfoCopyWith<$R, Info, Info>? get info =>
      $value.info?.copyWith.$chain((v) => call(info: v));
  @override
  MapCopyWith<$R, String, List<Episode>,
          ObjectCopyWith<$R, List<Episode>, List<Episode>>>?
      get episodes => $value.episodes != null
          ? MapCopyWith(
              $value.episodes!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(episodes: v))
          : null;
  @override
  $R call(
          {Object? seasons = $none,
          Object? info = $none,
          Object? episodes = $none}) =>
      $apply(FieldCopyWithData({
        if (seasons != $none) #seasons: seasons,
        if (info != $none) #info: info,
        if (episodes != $none) #episodes: episodes
      }));
  @override
  SeriesInfo $make(CopyWithData data) => SeriesInfo(
      seasons: data.get(#seasons, or: $value.seasons),
      info: data.get(#info, or: $value.info),
      episodes: data.get(#episodes, or: $value.episodes));

  @override
  SeriesInfoCopyWith<$R2, SeriesInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SeriesInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
