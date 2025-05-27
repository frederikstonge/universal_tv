// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'vod_info.dart';

class VodInfoMapper extends ClassMapperBase<VodInfo> {
  VodInfoMapper._();

  static VodInfoMapper? _instance;
  static VodInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VodInfoMapper._());
      InfoVodMapper.ensureInitialized();
      MovieDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VodInfo';

  static InfoVod? _$info(VodInfo v) => v.info;
  static const Field<VodInfo, InfoVod> _f$info = Field('info', _$info);
  static MovieData? _$movieData(VodInfo v) => v.movieData;
  static const Field<VodInfo, MovieData> _f$movieData =
      Field('movieData', _$movieData, key: r'movie_data');

  @override
  final MappableFields<VodInfo> fields = const {
    #info: _f$info,
    #movieData: _f$movieData,
  };

  static VodInfo _instantiate(DecodingData data) {
    return VodInfo(info: data.dec(_f$info), movieData: data.dec(_f$movieData));
  }

  @override
  final Function instantiate = _instantiate;

  static VodInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VodInfo>(map);
  }

  static VodInfo fromJson(String json) {
    return ensureInitialized().decodeJson<VodInfo>(json);
  }
}

mixin VodInfoMappable {
  String toJson() {
    return VodInfoMapper.ensureInitialized()
        .encodeJson<VodInfo>(this as VodInfo);
  }

  Map<String, dynamic> toMap() {
    return VodInfoMapper.ensureInitialized()
        .encodeMap<VodInfo>(this as VodInfo);
  }

  VodInfoCopyWith<VodInfo, VodInfo, VodInfo> get copyWith =>
      _VodInfoCopyWithImpl<VodInfo, VodInfo>(
          this as VodInfo, $identity, $identity);
  @override
  String toString() {
    return VodInfoMapper.ensureInitialized().stringifyValue(this as VodInfo);
  }

  @override
  bool operator ==(Object other) {
    return VodInfoMapper.ensureInitialized()
        .equalsValue(this as VodInfo, other);
  }

  @override
  int get hashCode {
    return VodInfoMapper.ensureInitialized().hashValue(this as VodInfo);
  }
}

extension VodInfoValueCopy<$R, $Out> on ObjectCopyWith<$R, VodInfo, $Out> {
  VodInfoCopyWith<$R, VodInfo, $Out> get $asVodInfo =>
      $base.as((v, t, t2) => _VodInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VodInfoCopyWith<$R, $In extends VodInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  InfoVodCopyWith<$R, InfoVod, InfoVod>? get info;
  MovieDataCopyWith<$R, MovieData, MovieData>? get movieData;
  $R call({InfoVod? info, MovieData? movieData});
  VodInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VodInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VodInfo, $Out>
    implements VodInfoCopyWith<$R, VodInfo, $Out> {
  _VodInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VodInfo> $mapper =
      VodInfoMapper.ensureInitialized();
  @override
  InfoVodCopyWith<$R, InfoVod, InfoVod>? get info =>
      $value.info?.copyWith.$chain((v) => call(info: v));
  @override
  MovieDataCopyWith<$R, MovieData, MovieData>? get movieData =>
      $value.movieData?.copyWith.$chain((v) => call(movieData: v));
  @override
  $R call({Object? info = $none, Object? movieData = $none}) =>
      $apply(FieldCopyWithData({
        if (info != $none) #info: info,
        if (movieData != $none) #movieData: movieData
      }));
  @override
  VodInfo $make(CopyWithData data) => VodInfo(
      info: data.get(#info, or: $value.info),
      movieData: data.get(#movieData, or: $value.movieData));

  @override
  VodInfoCopyWith<$R2, VodInfo, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VodInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
