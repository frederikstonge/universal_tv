// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_details.dart';

class MovieDetailsMapper extends ClassMapperBase<MovieDetails> {
  MovieDetailsMapper._();

  static MovieDetailsMapper? _instance;
  static MovieDetailsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieDetailsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MovieDetails';

  static int _$streamId(MovieDetails v) => v.streamId;
  static const Field<MovieDetails, int> _f$streamId =
      Field('streamId', _$streamId);
  static String _$name(MovieDetails v) => v.name;
  static const Field<MovieDetails, String> _f$name = Field('name', _$name);
  static String? _$plot(MovieDetails v) => v.plot;
  static const Field<MovieDetails, String> _f$plot =
      Field('plot', _$plot, opt: true);
  static double? _$rating(MovieDetails v) => v.rating;
  static const Field<MovieDetails, double> _f$rating =
      Field('rating', _$rating, opt: true);
  static int? _$year(MovieDetails v) => v.year;
  static const Field<MovieDetails, int> _f$year =
      Field('year', _$year, opt: true);
  static Duration? _$duration(MovieDetails v) => v.duration;
  static const Field<MovieDetails, Duration> _f$duration =
      Field('duration', _$duration, opt: true);
  static String? _$posterUrl(MovieDetails v) => v.posterUrl;
  static const Field<MovieDetails, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl, opt: true);
  static String _$providerName(MovieDetails v) => v.providerName;
  static const Field<MovieDetails, String> _f$providerName =
      Field('providerName', _$providerName);

  @override
  final MappableFields<MovieDetails> fields = const {
    #streamId: _f$streamId,
    #name: _f$name,
    #plot: _f$plot,
    #rating: _f$rating,
    #year: _f$year,
    #duration: _f$duration,
    #posterUrl: _f$posterUrl,
    #providerName: _f$providerName,
  };

  static MovieDetails _instantiate(DecodingData data) {
    return MovieDetails(
        streamId: data.dec(_f$streamId),
        name: data.dec(_f$name),
        plot: data.dec(_f$plot),
        rating: data.dec(_f$rating),
        year: data.dec(_f$year),
        duration: data.dec(_f$duration),
        posterUrl: data.dec(_f$posterUrl),
        providerName: data.dec(_f$providerName));
  }

  @override
  final Function instantiate = _instantiate;

  static MovieDetails fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieDetails>(map);
  }

  static MovieDetails fromJson(String json) {
    return ensureInitialized().decodeJson<MovieDetails>(json);
  }
}

mixin MovieDetailsMappable {
  String toJson() {
    return MovieDetailsMapper.ensureInitialized()
        .encodeJson<MovieDetails>(this as MovieDetails);
  }

  Map<String, dynamic> toMap() {
    return MovieDetailsMapper.ensureInitialized()
        .encodeMap<MovieDetails>(this as MovieDetails);
  }

  MovieDetailsCopyWith<MovieDetails, MovieDetails, MovieDetails> get copyWith =>
      _MovieDetailsCopyWithImpl<MovieDetails, MovieDetails>(
          this as MovieDetails, $identity, $identity);
  @override
  String toString() {
    return MovieDetailsMapper.ensureInitialized()
        .stringifyValue(this as MovieDetails);
  }

  @override
  bool operator ==(Object other) {
    return MovieDetailsMapper.ensureInitialized()
        .equalsValue(this as MovieDetails, other);
  }

  @override
  int get hashCode {
    return MovieDetailsMapper.ensureInitialized()
        .hashValue(this as MovieDetails);
  }
}

extension MovieDetailsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieDetails, $Out> {
  MovieDetailsCopyWith<$R, MovieDetails, $Out> get $asMovieDetails =>
      $base.as((v, t, t2) => _MovieDetailsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MovieDetailsCopyWith<$R, $In extends MovieDetails, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? streamId,
      String? name,
      String? plot,
      double? rating,
      int? year,
      Duration? duration,
      String? posterUrl,
      String? providerName});
  MovieDetailsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MovieDetailsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieDetails, $Out>
    implements MovieDetailsCopyWith<$R, MovieDetails, $Out> {
  _MovieDetailsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieDetails> $mapper =
      MovieDetailsMapper.ensureInitialized();
  @override
  $R call(
          {int? streamId,
          String? name,
          Object? plot = $none,
          Object? rating = $none,
          Object? year = $none,
          Object? duration = $none,
          Object? posterUrl = $none,
          String? providerName}) =>
      $apply(FieldCopyWithData({
        if (streamId != null) #streamId: streamId,
        if (name != null) #name: name,
        if (plot != $none) #plot: plot,
        if (rating != $none) #rating: rating,
        if (year != $none) #year: year,
        if (duration != $none) #duration: duration,
        if (posterUrl != $none) #posterUrl: posterUrl,
        if (providerName != null) #providerName: providerName
      }));
  @override
  MovieDetails $make(CopyWithData data) => MovieDetails(
      streamId: data.get(#streamId, or: $value.streamId),
      name: data.get(#name, or: $value.name),
      plot: data.get(#plot, or: $value.plot),
      rating: data.get(#rating, or: $value.rating),
      year: data.get(#year, or: $value.year),
      duration: data.get(#duration, or: $value.duration),
      posterUrl: data.get(#posterUrl, or: $value.posterUrl),
      providerName: data.get(#providerName, or: $value.providerName));

  @override
  MovieDetailsCopyWith<$R2, MovieDetails, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieDetailsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
