// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_details_state.dart';

class MovieDetailsStateMapper extends ClassMapperBase<MovieDetailsState> {
  MovieDetailsStateMapper._();

  static MovieDetailsStateMapper? _instance;
  static MovieDetailsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieDetailsStateMapper._());
      StateStatusMapper.ensureInitialized();
      MovieDetailsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieDetailsState';

  static StateStatus _$status(MovieDetailsState v) => v.status;
  static const Field<MovieDetailsState, StateStatus> _f$status = Field(
    'status',
    _$status,
  );
  static MovieDetails? _$movie(MovieDetailsState v) => v.movie;
  static const Field<MovieDetailsState, MovieDetails> _f$movie = Field(
    'movie',
    _$movie,
    opt: true,
  );

  @override
  final MappableFields<MovieDetailsState> fields = const {
    #status: _f$status,
    #movie: _f$movie,
  };

  static MovieDetailsState _instantiate(DecodingData data) {
    return MovieDetailsState(
      status: data.dec(_f$status),
      movie: data.dec(_f$movie),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MovieDetailsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieDetailsState>(map);
  }

  static MovieDetailsState fromJson(String json) {
    return ensureInitialized().decodeJson<MovieDetailsState>(json);
  }
}

mixin MovieDetailsStateMappable {
  String toJson() {
    return MovieDetailsStateMapper.ensureInitialized()
        .encodeJson<MovieDetailsState>(this as MovieDetailsState);
  }

  Map<String, dynamic> toMap() {
    return MovieDetailsStateMapper.ensureInitialized()
        .encodeMap<MovieDetailsState>(this as MovieDetailsState);
  }

  MovieDetailsStateCopyWith<
    MovieDetailsState,
    MovieDetailsState,
    MovieDetailsState
  >
  get copyWith =>
      _MovieDetailsStateCopyWithImpl<MovieDetailsState, MovieDetailsState>(
        this as MovieDetailsState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MovieDetailsStateMapper.ensureInitialized().stringifyValue(
      this as MovieDetailsState,
    );
  }

  @override
  bool operator ==(Object other) {
    return MovieDetailsStateMapper.ensureInitialized().equalsValue(
      this as MovieDetailsState,
      other,
    );
  }

  @override
  int get hashCode {
    return MovieDetailsStateMapper.ensureInitialized().hashValue(
      this as MovieDetailsState,
    );
  }
}

extension MovieDetailsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieDetailsState, $Out> {
  MovieDetailsStateCopyWith<$R, MovieDetailsState, $Out>
  get $asMovieDetailsState => $base.as(
    (v, t, t2) => _MovieDetailsStateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MovieDetailsStateCopyWith<
  $R,
  $In extends MovieDetailsState,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MovieDetailsCopyWith<$R, MovieDetails, MovieDetails>? get movie;
  $R call({StateStatus? status, MovieDetails? movie});
  MovieDetailsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MovieDetailsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieDetailsState, $Out>
    implements MovieDetailsStateCopyWith<$R, MovieDetailsState, $Out> {
  _MovieDetailsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieDetailsState> $mapper =
      MovieDetailsStateMapper.ensureInitialized();
  @override
  MovieDetailsCopyWith<$R, MovieDetails, MovieDetails>? get movie =>
      $value.movie?.copyWith.$chain((v) => call(movie: v));
  @override
  $R call({StateStatus? status, Object? movie = $none}) => $apply(
    FieldCopyWithData({
      if (status != null) #status: status,
      if (movie != $none) #movie: movie,
    }),
  );
  @override
  MovieDetailsState $make(CopyWithData data) => MovieDetailsState(
    status: data.get(#status, or: $value.status),
    movie: data.get(#movie, or: $value.movie),
  );

  @override
  MovieDetailsStateCopyWith<$R2, MovieDetailsState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MovieDetailsStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

