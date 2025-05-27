// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'episode_info.dart';

class EpisodeInfoMapper extends ClassMapperBase<EpisodeInfo> {
  EpisodeInfoMapper._();

  static EpisodeInfoMapper? _instance;
  static EpisodeInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EpisodeInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EpisodeInfo';

  static int? _$tmdbId(EpisodeInfo v) => v.tmdbId;
  static const Field<EpisodeInfo, int> _f$tmdbId =
      Field('tmdbId', _$tmdbId, key: r'tmdb_id');
  static DateTime? _$releaseDate(EpisodeInfo v) => v.releaseDate;
  static const Field<EpisodeInfo, DateTime> _f$releaseDate =
      Field('releaseDate', _$releaseDate, key: r'release_date');
  static String? _$plot(EpisodeInfo v) => v.plot;
  static const Field<EpisodeInfo, String> _f$plot = Field('plot', _$plot);
  static int? _$durationSecs(EpisodeInfo v) => v.durationSecs;
  static const Field<EpisodeInfo, int> _f$durationSecs =
      Field('durationSecs', _$durationSecs, key: r'duration_secs');
  static String? _$duration(EpisodeInfo v) => v.duration;
  static const Field<EpisodeInfo, String> _f$duration =
      Field('duration', _$duration);
  static String? _$movieImage(EpisodeInfo v) => v.movieImage;
  static const Field<EpisodeInfo, String> _f$movieImage =
      Field('movieImage', _$movieImage, key: r'movie_image');
  static int? _$bitrate(EpisodeInfo v) => v.bitrate;
  static const Field<EpisodeInfo, int> _f$bitrate = Field('bitrate', _$bitrate);
  static double? _$rating(EpisodeInfo v) => v.rating;
  static const Field<EpisodeInfo, double> _f$rating = Field('rating', _$rating);
  static int? _$season(EpisodeInfo v) => v.season;
  static const Field<EpisodeInfo, int> _f$season = Field('season', _$season);
  static String? _$coverBig(EpisodeInfo v) => v.coverBig;
  static const Field<EpisodeInfo, String> _f$coverBig =
      Field('coverBig', _$coverBig, key: r'cover_big');

  @override
  final MappableFields<EpisodeInfo> fields = const {
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

  static EpisodeInfo _instantiate(DecodingData data) {
    return EpisodeInfo(
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

  static EpisodeInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EpisodeInfo>(map);
  }

  static EpisodeInfo fromJson(String json) {
    return ensureInitialized().decodeJson<EpisodeInfo>(json);
  }
}

mixin EpisodeInfoMappable {
  String toJson() {
    return EpisodeInfoMapper.ensureInitialized()
        .encodeJson<EpisodeInfo>(this as EpisodeInfo);
  }

  Map<String, dynamic> toMap() {
    return EpisodeInfoMapper.ensureInitialized()
        .encodeMap<EpisodeInfo>(this as EpisodeInfo);
  }

  EpisodeInfoCopyWith<EpisodeInfo, EpisodeInfo, EpisodeInfo> get copyWith =>
      _EpisodeInfoCopyWithImpl<EpisodeInfo, EpisodeInfo>(
          this as EpisodeInfo, $identity, $identity);
  @override
  String toString() {
    return EpisodeInfoMapper.ensureInitialized()
        .stringifyValue(this as EpisodeInfo);
  }

  @override
  bool operator ==(Object other) {
    return EpisodeInfoMapper.ensureInitialized()
        .equalsValue(this as EpisodeInfo, other);
  }

  @override
  int get hashCode {
    return EpisodeInfoMapper.ensureInitialized().hashValue(this as EpisodeInfo);
  }
}

extension EpisodeInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EpisodeInfo, $Out> {
  EpisodeInfoCopyWith<$R, EpisodeInfo, $Out> get $asEpisodeInfo =>
      $base.as((v, t, t2) => _EpisodeInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EpisodeInfoCopyWith<$R, $In extends EpisodeInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
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
  EpisodeInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EpisodeInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EpisodeInfo, $Out>
    implements EpisodeInfoCopyWith<$R, EpisodeInfo, $Out> {
  _EpisodeInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EpisodeInfo> $mapper =
      EpisodeInfoMapper.ensureInitialized();
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
  EpisodeInfo $make(CopyWithData data) => EpisodeInfo(
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
  EpisodeInfoCopyWith<$R2, EpisodeInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EpisodeInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
