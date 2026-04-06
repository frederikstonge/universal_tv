// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tmdb_find_response.dart';

class TmdbFindResponseMapper extends ClassMapperBase<TmdbFindResponse> {
  TmdbFindResponseMapper._();

  static TmdbFindResponseMapper? _instance;
  static TmdbFindResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TmdbFindResponseMapper._());
      TmdbEntryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TmdbFindResponse';

  static List<TmdbEntry> _$movieResults(TmdbFindResponse v) => v.movieResults;
  static const Field<TmdbFindResponse, List<TmdbEntry>> _f$movieResults = Field(
    'movieResults',
    _$movieResults,
    key: r'movie_results',
    opt: true,
    def: const [],
  );
  static List<TmdbEntry> _$personResults(TmdbFindResponse v) => v.personResults;
  static const Field<TmdbFindResponse, List<TmdbEntry>> _f$personResults =
      Field(
        'personResults',
        _$personResults,
        key: r'person_results',
        opt: true,
        def: const [],
      );
  static List<TmdbEntry> _$tvResults(TmdbFindResponse v) => v.tvResults;
  static const Field<TmdbFindResponse, List<TmdbEntry>> _f$tvResults = Field(
    'tvResults',
    _$tvResults,
    key: r'tv_results',
    opt: true,
    def: const [],
  );
  static List<TmdbEntry> _$tvEpisodeResults(TmdbFindResponse v) =>
      v.tvEpisodeResults;
  static const Field<TmdbFindResponse, List<TmdbEntry>> _f$tvEpisodeResults =
      Field(
        'tvEpisodeResults',
        _$tvEpisodeResults,
        key: r'tv_episode_results',
        opt: true,
        def: const [],
      );
  static List<TmdbEntry> _$tvSeasonResults(TmdbFindResponse v) =>
      v.tvSeasonResults;
  static const Field<TmdbFindResponse, List<TmdbEntry>> _f$tvSeasonResults =
      Field(
        'tvSeasonResults',
        _$tvSeasonResults,
        key: r'tv_season_results',
        opt: true,
        def: const [],
      );

  @override
  final MappableFields<TmdbFindResponse> fields = const {
    #movieResults: _f$movieResults,
    #personResults: _f$personResults,
    #tvResults: _f$tvResults,
    #tvEpisodeResults: _f$tvEpisodeResults,
    #tvSeasonResults: _f$tvSeasonResults,
  };

  static TmdbFindResponse _instantiate(DecodingData data) {
    return TmdbFindResponse(
      movieResults: data.dec(_f$movieResults),
      personResults: data.dec(_f$personResults),
      tvResults: data.dec(_f$tvResults),
      tvEpisodeResults: data.dec(_f$tvEpisodeResults),
      tvSeasonResults: data.dec(_f$tvSeasonResults),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TmdbFindResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TmdbFindResponse>(map);
  }

  static TmdbFindResponse fromJson(String json) {
    return ensureInitialized().decodeJson<TmdbFindResponse>(json);
  }
}

mixin TmdbFindResponseMappable {
  String toJson() {
    return TmdbFindResponseMapper.ensureInitialized()
        .encodeJson<TmdbFindResponse>(this as TmdbFindResponse);
  }

  Map<String, dynamic> toMap() {
    return TmdbFindResponseMapper.ensureInitialized()
        .encodeMap<TmdbFindResponse>(this as TmdbFindResponse);
  }

  TmdbFindResponseCopyWith<TmdbFindResponse, TmdbFindResponse, TmdbFindResponse>
  get copyWith =>
      _TmdbFindResponseCopyWithImpl<TmdbFindResponse, TmdbFindResponse>(
        this as TmdbFindResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TmdbFindResponseMapper.ensureInitialized().stringifyValue(
      this as TmdbFindResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return TmdbFindResponseMapper.ensureInitialized().equalsValue(
      this as TmdbFindResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return TmdbFindResponseMapper.ensureInitialized().hashValue(
      this as TmdbFindResponse,
    );
  }
}

extension TmdbFindResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TmdbFindResponse, $Out> {
  TmdbFindResponseCopyWith<$R, TmdbFindResponse, $Out>
  get $asTmdbFindResponse =>
      $base.as((v, t, t2) => _TmdbFindResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TmdbFindResponseCopyWith<$R, $In extends TmdbFindResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, TmdbEntry, TmdbEntryCopyWith<$R, TmdbEntry, TmdbEntry>>
  get movieResults;
  ListCopyWith<$R, TmdbEntry, TmdbEntryCopyWith<$R, TmdbEntry, TmdbEntry>>
  get personResults;
  ListCopyWith<$R, TmdbEntry, TmdbEntryCopyWith<$R, TmdbEntry, TmdbEntry>>
  get tvResults;
  ListCopyWith<$R, TmdbEntry, TmdbEntryCopyWith<$R, TmdbEntry, TmdbEntry>>
  get tvEpisodeResults;
  ListCopyWith<$R, TmdbEntry, TmdbEntryCopyWith<$R, TmdbEntry, TmdbEntry>>
  get tvSeasonResults;
  $R call({
    List<TmdbEntry>? movieResults,
    List<TmdbEntry>? personResults,
    List<TmdbEntry>? tvResults,
    List<TmdbEntry>? tvEpisodeResults,
    List<TmdbEntry>? tvSeasonResults,
  });
  TmdbFindResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TmdbFindResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TmdbFindResponse, $Out>
    implements TmdbFindResponseCopyWith<$R, TmdbFindResponse, $Out> {
  _TmdbFindResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TmdbFindResponse> $mapper =
      TmdbFindResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, TmdbEntry, TmdbEntryCopyWith<$R, TmdbEntry, TmdbEntry>>
  get movieResults => ListCopyWith(
    $value.movieResults,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(movieResults: v),
  );
  @override
  ListCopyWith<$R, TmdbEntry, TmdbEntryCopyWith<$R, TmdbEntry, TmdbEntry>>
  get personResults => ListCopyWith(
    $value.personResults,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(personResults: v),
  );
  @override
  ListCopyWith<$R, TmdbEntry, TmdbEntryCopyWith<$R, TmdbEntry, TmdbEntry>>
  get tvResults => ListCopyWith(
    $value.tvResults,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(tvResults: v),
  );
  @override
  ListCopyWith<$R, TmdbEntry, TmdbEntryCopyWith<$R, TmdbEntry, TmdbEntry>>
  get tvEpisodeResults => ListCopyWith(
    $value.tvEpisodeResults,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(tvEpisodeResults: v),
  );
  @override
  ListCopyWith<$R, TmdbEntry, TmdbEntryCopyWith<$R, TmdbEntry, TmdbEntry>>
  get tvSeasonResults => ListCopyWith(
    $value.tvSeasonResults,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(tvSeasonResults: v),
  );
  @override
  $R call({
    List<TmdbEntry>? movieResults,
    List<TmdbEntry>? personResults,
    List<TmdbEntry>? tvResults,
    List<TmdbEntry>? tvEpisodeResults,
    List<TmdbEntry>? tvSeasonResults,
  }) => $apply(
    FieldCopyWithData({
      if (movieResults != null) #movieResults: movieResults,
      if (personResults != null) #personResults: personResults,
      if (tvResults != null) #tvResults: tvResults,
      if (tvEpisodeResults != null) #tvEpisodeResults: tvEpisodeResults,
      if (tvSeasonResults != null) #tvSeasonResults: tvSeasonResults,
    }),
  );
  @override
  TmdbFindResponse $make(CopyWithData data) => TmdbFindResponse(
    movieResults: data.get(#movieResults, or: $value.movieResults),
    personResults: data.get(#personResults, or: $value.personResults),
    tvResults: data.get(#tvResults, or: $value.tvResults),
    tvEpisodeResults: data.get(#tvEpisodeResults, or: $value.tvEpisodeResults),
    tvSeasonResults: data.get(#tvSeasonResults, or: $value.tvSeasonResults),
  );

  @override
  TmdbFindResponseCopyWith<$R2, TmdbFindResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TmdbFindResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

