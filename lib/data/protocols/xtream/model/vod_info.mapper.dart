// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'vod_info.dart';

class XTremeCodeVodInfoMapper extends ClassMapperBase<XTremeCodeVodInfo> {
  XTremeCodeVodInfoMapper._();

  static XTremeCodeVodInfoMapper? _instance;
  static XTremeCodeVodInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeVodInfoMapper._());
      XTremeCodeInfoVodMapper.ensureInitialized();
      XTremeCodeMovieDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeVodInfo';

  static XTremeCodeInfoVod? _$info(XTremeCodeVodInfo v) => v.info;
  static const Field<XTremeCodeVodInfo, XTremeCodeInfoVod> _f$info =
      Field('info', _$info);
  static XTremeCodeMovieData? _$movieData(XTremeCodeVodInfo v) => v.movieData;
  static const Field<XTremeCodeVodInfo, XTremeCodeMovieData> _f$movieData =
      Field('movieData', _$movieData, key: r'movie_data');

  @override
  final MappableFields<XTremeCodeVodInfo> fields = const {
    #info: _f$info,
    #movieData: _f$movieData,
  };

  static XTremeCodeVodInfo _instantiate(DecodingData data) {
    return XTremeCodeVodInfo(
        info: data.dec(_f$info), movieData: data.dec(_f$movieData));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeVodInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeVodInfo>(map);
  }

  static XTremeCodeVodInfo fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeVodInfo>(json);
  }
}

mixin XTremeCodeVodInfoMappable {
  String toJson() {
    return XTremeCodeVodInfoMapper.ensureInitialized()
        .encodeJson<XTremeCodeVodInfo>(this as XTremeCodeVodInfo);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeVodInfoMapper.ensureInitialized()
        .encodeMap<XTremeCodeVodInfo>(this as XTremeCodeVodInfo);
  }

  XTremeCodeVodInfoCopyWith<XTremeCodeVodInfo, XTremeCodeVodInfo,
          XTremeCodeVodInfo>
      get copyWith =>
          _XTremeCodeVodInfoCopyWithImpl<XTremeCodeVodInfo, XTremeCodeVodInfo>(
              this as XTremeCodeVodInfo, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeVodInfoMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeVodInfo);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeVodInfoMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeVodInfo, other);
  }

  @override
  int get hashCode {
    return XTremeCodeVodInfoMapper.ensureInitialized()
        .hashValue(this as XTremeCodeVodInfo);
  }
}

extension XTremeCodeVodInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeVodInfo, $Out> {
  XTremeCodeVodInfoCopyWith<$R, XTremeCodeVodInfo, $Out>
      get $asXTremeCodeVodInfo => $base
          .as((v, t, t2) => _XTremeCodeVodInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeVodInfoCopyWith<$R, $In extends XTremeCodeVodInfo,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  XTremeCodeInfoVodCopyWith<$R, XTremeCodeInfoVod, XTremeCodeInfoVod>? get info;
  XTremeCodeMovieDataCopyWith<$R, XTremeCodeMovieData, XTremeCodeMovieData>?
      get movieData;
  $R call({XTremeCodeInfoVod? info, XTremeCodeMovieData? movieData});
  XTremeCodeVodInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeVodInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeVodInfo, $Out>
    implements XTremeCodeVodInfoCopyWith<$R, XTremeCodeVodInfo, $Out> {
  _XTremeCodeVodInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeVodInfo> $mapper =
      XTremeCodeVodInfoMapper.ensureInitialized();
  @override
  XTremeCodeInfoVodCopyWith<$R, XTremeCodeInfoVod, XTremeCodeInfoVod>?
      get info => $value.info?.copyWith.$chain((v) => call(info: v));
  @override
  XTremeCodeMovieDataCopyWith<$R, XTremeCodeMovieData, XTremeCodeMovieData>?
      get movieData =>
          $value.movieData?.copyWith.$chain((v) => call(movieData: v));
  @override
  $R call({Object? info = $none, Object? movieData = $none}) =>
      $apply(FieldCopyWithData({
        if (info != $none) #info: info,
        if (movieData != $none) #movieData: movieData
      }));
  @override
  XTremeCodeVodInfo $make(CopyWithData data) => XTremeCodeVodInfo(
      info: data.get(#info, or: $value.info),
      movieData: data.get(#movieData, or: $value.movieData));

  @override
  XTremeCodeVodInfoCopyWith<$R2, XTremeCodeVodInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _XTremeCodeVodInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
