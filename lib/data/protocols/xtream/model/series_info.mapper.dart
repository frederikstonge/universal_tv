// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_info.dart';

class XTremeCodeSeriesInfoMapper extends ClassMapperBase<XTremeCodeSeriesInfo> {
  XTremeCodeSeriesInfoMapper._();

  static XTremeCodeSeriesInfoMapper? _instance;
  static XTremeCodeSeriesInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeSeriesInfoMapper._());
      XTremeCodeSeasonMapper.ensureInitialized();
      XTremeCodeInfoMapper.ensureInitialized();
      XTremeCodeEpisodeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeSeriesInfo';

  static List<XTremeCodeSeason>? _$seasons(XTremeCodeSeriesInfo v) => v.seasons;
  static const Field<XTremeCodeSeriesInfo, List<XTremeCodeSeason>> _f$seasons =
      Field('seasons', _$seasons);
  static XTremeCodeInfo? _$info(XTremeCodeSeriesInfo v) => v.info;
  static const Field<XTremeCodeSeriesInfo, XTremeCodeInfo> _f$info =
      Field('info', _$info);
  static Map<String, List<XTremeCodeEpisode>>? _$episodes(
          XTremeCodeSeriesInfo v) =>
      v.episodes;
  static const Field<XTremeCodeSeriesInfo, Map<String, List<XTremeCodeEpisode>>>
      _f$episodes = Field('episodes', _$episodes);

  @override
  final MappableFields<XTremeCodeSeriesInfo> fields = const {
    #seasons: _f$seasons,
    #info: _f$info,
    #episodes: _f$episodes,
  };

  static XTremeCodeSeriesInfo _instantiate(DecodingData data) {
    return XTremeCodeSeriesInfo(
        seasons: data.dec(_f$seasons),
        info: data.dec(_f$info),
        episodes: data.dec(_f$episodes));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeSeriesInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeSeriesInfo>(map);
  }

  static XTremeCodeSeriesInfo fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeSeriesInfo>(json);
  }
}

mixin XTremeCodeSeriesInfoMappable {
  String toJson() {
    return XTremeCodeSeriesInfoMapper.ensureInitialized()
        .encodeJson<XTremeCodeSeriesInfo>(this as XTremeCodeSeriesInfo);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeSeriesInfoMapper.ensureInitialized()
        .encodeMap<XTremeCodeSeriesInfo>(this as XTremeCodeSeriesInfo);
  }

  XTremeCodeSeriesInfoCopyWith<XTremeCodeSeriesInfo, XTremeCodeSeriesInfo,
      XTremeCodeSeriesInfo> get copyWith => _XTremeCodeSeriesInfoCopyWithImpl<
          XTremeCodeSeriesInfo, XTremeCodeSeriesInfo>(
      this as XTremeCodeSeriesInfo, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeSeriesInfoMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeSeriesInfo);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeSeriesInfoMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeSeriesInfo, other);
  }

  @override
  int get hashCode {
    return XTremeCodeSeriesInfoMapper.ensureInitialized()
        .hashValue(this as XTremeCodeSeriesInfo);
  }
}

extension XTremeCodeSeriesInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeSeriesInfo, $Out> {
  XTremeCodeSeriesInfoCopyWith<$R, XTremeCodeSeriesInfo, $Out>
      get $asXTremeCodeSeriesInfo => $base.as(
          (v, t, t2) => _XTremeCodeSeriesInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeSeriesInfoCopyWith<
    $R,
    $In extends XTremeCodeSeriesInfo,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, XTremeCodeSeason,
          XTremeCodeSeasonCopyWith<$R, XTremeCodeSeason, XTremeCodeSeason>>?
      get seasons;
  XTremeCodeInfoCopyWith<$R, XTremeCodeInfo, XTremeCodeInfo>? get info;
  MapCopyWith<$R, String, List<XTremeCodeEpisode>,
          ObjectCopyWith<$R, List<XTremeCodeEpisode>, List<XTremeCodeEpisode>>>?
      get episodes;
  $R call(
      {List<XTremeCodeSeason>? seasons,
      XTremeCodeInfo? info,
      Map<String, List<XTremeCodeEpisode>>? episodes});
  XTremeCodeSeriesInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeSeriesInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeSeriesInfo, $Out>
    implements XTremeCodeSeriesInfoCopyWith<$R, XTremeCodeSeriesInfo, $Out> {
  _XTremeCodeSeriesInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeSeriesInfo> $mapper =
      XTremeCodeSeriesInfoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, XTremeCodeSeason,
          XTremeCodeSeasonCopyWith<$R, XTremeCodeSeason, XTremeCodeSeason>>?
      get seasons => $value.seasons != null
          ? ListCopyWith($value.seasons!, (v, t) => v.copyWith.$chain(t),
              (v) => call(seasons: v))
          : null;
  @override
  XTremeCodeInfoCopyWith<$R, XTremeCodeInfo, XTremeCodeInfo>? get info =>
      $value.info?.copyWith.$chain((v) => call(info: v));
  @override
  MapCopyWith<$R, String, List<XTremeCodeEpisode>,
          ObjectCopyWith<$R, List<XTremeCodeEpisode>, List<XTremeCodeEpisode>>>?
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
  XTremeCodeSeriesInfo $make(CopyWithData data) => XTremeCodeSeriesInfo(
      seasons: data.get(#seasons, or: $value.seasons),
      info: data.get(#info, or: $value.info),
      episodes: data.get(#episodes, or: $value.episodes));

  @override
  XTremeCodeSeriesInfoCopyWith<$R2, XTremeCodeSeriesInfo, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _XTremeCodeSeriesInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
