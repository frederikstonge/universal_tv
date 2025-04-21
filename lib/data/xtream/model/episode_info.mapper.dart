// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'episode_info.dart';

class XTremeCodeEpisodeInfoMapper
    extends ClassMapperBase<XTremeCodeEpisodeInfo> {
  XTremeCodeEpisodeInfoMapper._();

  static XTremeCodeEpisodeInfoMapper? _instance;
  static XTremeCodeEpisodeInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeEpisodeInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeEpisodeInfo';

  static int? _$tmdbId(XTremeCodeEpisodeInfo v) => v.tmdbId;
  static const Field<XTremeCodeEpisodeInfo, int> _f$tmdbId =
      Field('tmdbId', _$tmdbId, key: r'tmdb_id');
  static DateTime? _$releaseDate(XTremeCodeEpisodeInfo v) => v.releaseDate;
  static const Field<XTremeCodeEpisodeInfo, DateTime> _f$releaseDate =
      Field('releaseDate', _$releaseDate, key: r'release_date');
  static String? _$plot(XTremeCodeEpisodeInfo v) => v.plot;
  static const Field<XTremeCodeEpisodeInfo, String> _f$plot =
      Field('plot', _$plot);
  static int? _$durationSecs(XTremeCodeEpisodeInfo v) => v.durationSecs;
  static const Field<XTremeCodeEpisodeInfo, int> _f$durationSecs =
      Field('durationSecs', _$durationSecs, key: r'duration_secs');
  static String? _$duration(XTremeCodeEpisodeInfo v) => v.duration;
  static const Field<XTremeCodeEpisodeInfo, String> _f$duration =
      Field('duration', _$duration);
  static String? _$movieImage(XTremeCodeEpisodeInfo v) => v.movieImage;
  static const Field<XTremeCodeEpisodeInfo, String> _f$movieImage =
      Field('movieImage', _$movieImage, key: r'movie_image');
  static int? _$bitrate(XTremeCodeEpisodeInfo v) => v.bitrate;
  static const Field<XTremeCodeEpisodeInfo, int> _f$bitrate =
      Field('bitrate', _$bitrate);
  static double? _$rating(XTremeCodeEpisodeInfo v) => v.rating;
  static const Field<XTremeCodeEpisodeInfo, double> _f$rating =
      Field('rating', _$rating);
  static int? _$season(XTremeCodeEpisodeInfo v) => v.season;
  static const Field<XTremeCodeEpisodeInfo, int> _f$season =
      Field('season', _$season);
  static String? _$coverBig(XTremeCodeEpisodeInfo v) => v.coverBig;
  static const Field<XTremeCodeEpisodeInfo, String> _f$coverBig =
      Field('coverBig', _$coverBig, key: r'cover_big');

  @override
  final MappableFields<XTremeCodeEpisodeInfo> fields = const {
    #tmdbId: _f$tmdbId,
    #releaseDate: _f$releaseDate,
    #plot: _f$plot,
    #durationSecs: _f$durationSecs,
    #duration: _f$duration,
    #movieImage: _f$movieImage,
    #bitrate: _f$bitrate,
    #rating: _f$rating,
    #season: _f$season,
    #coverBig: _f$coverBig,
  };

  static XTremeCodeEpisodeInfo _instantiate(DecodingData data) {
    return XTremeCodeEpisodeInfo(
        tmdbId: data.dec(_f$tmdbId),
        releaseDate: data.dec(_f$releaseDate),
        plot: data.dec(_f$plot),
        durationSecs: data.dec(_f$durationSecs),
        duration: data.dec(_f$duration),
        movieImage: data.dec(_f$movieImage),
        bitrate: data.dec(_f$bitrate),
        rating: data.dec(_f$rating),
        season: data.dec(_f$season),
        coverBig: data.dec(_f$coverBig));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeEpisodeInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeEpisodeInfo>(map);
  }

  static XTremeCodeEpisodeInfo fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeEpisodeInfo>(json);
  }
}

mixin XTremeCodeEpisodeInfoMappable {
  String toJson() {
    return XTremeCodeEpisodeInfoMapper.ensureInitialized()
        .encodeJson<XTremeCodeEpisodeInfo>(this as XTremeCodeEpisodeInfo);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeEpisodeInfoMapper.ensureInitialized()
        .encodeMap<XTremeCodeEpisodeInfo>(this as XTremeCodeEpisodeInfo);
  }

  XTremeCodeEpisodeInfoCopyWith<XTremeCodeEpisodeInfo, XTremeCodeEpisodeInfo,
      XTremeCodeEpisodeInfo> get copyWith => _XTremeCodeEpisodeInfoCopyWithImpl<
          XTremeCodeEpisodeInfo, XTremeCodeEpisodeInfo>(
      this as XTremeCodeEpisodeInfo, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeEpisodeInfoMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeEpisodeInfo);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeEpisodeInfoMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeEpisodeInfo, other);
  }

  @override
  int get hashCode {
    return XTremeCodeEpisodeInfoMapper.ensureInitialized()
        .hashValue(this as XTremeCodeEpisodeInfo);
  }
}

extension XTremeCodeEpisodeInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeEpisodeInfo, $Out> {
  XTremeCodeEpisodeInfoCopyWith<$R, XTremeCodeEpisodeInfo, $Out>
      get $asXTremeCodeEpisodeInfo => $base.as(
          (v, t, t2) => _XTremeCodeEpisodeInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeEpisodeInfoCopyWith<
    $R,
    $In extends XTremeCodeEpisodeInfo,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? tmdbId,
      DateTime? releaseDate,
      String? plot,
      int? durationSecs,
      String? duration,
      String? movieImage,
      int? bitrate,
      double? rating,
      int? season,
      String? coverBig});
  XTremeCodeEpisodeInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeEpisodeInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeEpisodeInfo, $Out>
    implements XTremeCodeEpisodeInfoCopyWith<$R, XTremeCodeEpisodeInfo, $Out> {
  _XTremeCodeEpisodeInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeEpisodeInfo> $mapper =
      XTremeCodeEpisodeInfoMapper.ensureInitialized();
  @override
  $R call(
          {Object? tmdbId = $none,
          Object? releaseDate = $none,
          Object? plot = $none,
          Object? durationSecs = $none,
          Object? duration = $none,
          Object? movieImage = $none,
          Object? bitrate = $none,
          Object? rating = $none,
          Object? season = $none,
          Object? coverBig = $none}) =>
      $apply(FieldCopyWithData({
        if (tmdbId != $none) #tmdbId: tmdbId,
        if (releaseDate != $none) #releaseDate: releaseDate,
        if (plot != $none) #plot: plot,
        if (durationSecs != $none) #durationSecs: durationSecs,
        if (duration != $none) #duration: duration,
        if (movieImage != $none) #movieImage: movieImage,
        if (bitrate != $none) #bitrate: bitrate,
        if (rating != $none) #rating: rating,
        if (season != $none) #season: season,
        if (coverBig != $none) #coverBig: coverBig
      }));
  @override
  XTremeCodeEpisodeInfo $make(CopyWithData data) => XTremeCodeEpisodeInfo(
      tmdbId: data.get(#tmdbId, or: $value.tmdbId),
      releaseDate: data.get(#releaseDate, or: $value.releaseDate),
      plot: data.get(#plot, or: $value.plot),
      durationSecs: data.get(#durationSecs, or: $value.durationSecs),
      duration: data.get(#duration, or: $value.duration),
      movieImage: data.get(#movieImage, or: $value.movieImage),
      bitrate: data.get(#bitrate, or: $value.bitrate),
      rating: data.get(#rating, or: $value.rating),
      season: data.get(#season, or: $value.season),
      coverBig: data.get(#coverBig, or: $value.coverBig));

  @override
  XTremeCodeEpisodeInfoCopyWith<$R2, XTremeCodeEpisodeInfo, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _XTremeCodeEpisodeInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
