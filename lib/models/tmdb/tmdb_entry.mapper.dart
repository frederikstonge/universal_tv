// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tmdb_entry.dart';

class TmdbEntryMapper extends ClassMapperBase<TmdbEntry> {
  TmdbEntryMapper._();

  static TmdbEntryMapper? _instance;
  static TmdbEntryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TmdbEntryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TmdbEntry';

  static bool? _$adult(TmdbEntry v) => v.adult;
  static const Field<TmdbEntry, bool> _f$adult = Field(
    'adult',
    _$adult,
    opt: true,
  );
  static String? _$backdropPath(TmdbEntry v) => v.backdropPath;
  static const Field<TmdbEntry, String> _f$backdropPath = Field(
    'backdropPath',
    _$backdropPath,
    key: r'backdrop_path',
    opt: true,
  );
  static int? _$id(TmdbEntry v) => v.id;
  static const Field<TmdbEntry, int> _f$id = Field('id', _$id, opt: true);
  static String? _$title(TmdbEntry v) => v.title;
  static const Field<TmdbEntry, String> _f$title = Field(
    'title',
    _$title,
    opt: true,
  );
  static String? _$originalLanguage(TmdbEntry v) => v.originalLanguage;
  static const Field<TmdbEntry, String> _f$originalLanguage = Field(
    'originalLanguage',
    _$originalLanguage,
    key: r'original_language',
    opt: true,
  );
  static String? _$originalTitle(TmdbEntry v) => v.originalTitle;
  static const Field<TmdbEntry, String> _f$originalTitle = Field(
    'originalTitle',
    _$originalTitle,
    key: r'original_title',
    opt: true,
  );
  static String? _$overview(TmdbEntry v) => v.overview;
  static const Field<TmdbEntry, String> _f$overview = Field(
    'overview',
    _$overview,
    opt: true,
  );
  static String? _$posterPath(TmdbEntry v) => v.posterPath;
  static const Field<TmdbEntry, String> _f$posterPath = Field(
    'posterPath',
    _$posterPath,
    key: r'poster_path',
    opt: true,
  );
  static String? _$mediaType(TmdbEntry v) => v.mediaType;
  static const Field<TmdbEntry, String> _f$mediaType = Field(
    'mediaType',
    _$mediaType,
    key: r'media_type',
    opt: true,
  );
  static List<int>? _$genreIds(TmdbEntry v) => v.genreIds;
  static const Field<TmdbEntry, List<int>> _f$genreIds = Field(
    'genreIds',
    _$genreIds,
    key: r'genre_ids',
    opt: true,
  );
  static double? _$popularity(TmdbEntry v) => v.popularity;
  static const Field<TmdbEntry, double> _f$popularity = Field(
    'popularity',
    _$popularity,
    opt: true,
  );
  static String? _$releaseDate(TmdbEntry v) => v.releaseDate;
  static const Field<TmdbEntry, String> _f$releaseDate = Field(
    'releaseDate',
    _$releaseDate,
    key: r'release_date',
    opt: true,
  );
  static bool? _$video(TmdbEntry v) => v.video;
  static const Field<TmdbEntry, bool> _f$video = Field(
    'video',
    _$video,
    opt: true,
  );
  static double? _$voteAverage(TmdbEntry v) => v.voteAverage;
  static const Field<TmdbEntry, double> _f$voteAverage = Field(
    'voteAverage',
    _$voteAverage,
    key: r'vote_average',
    opt: true,
  );
  static int? _$voteCount(TmdbEntry v) => v.voteCount;
  static const Field<TmdbEntry, int> _f$voteCount = Field(
    'voteCount',
    _$voteCount,
    key: r'vote_count',
    opt: true,
  );

  @override
  final MappableFields<TmdbEntry> fields = const {
    #adult: _f$adult,
    #backdropPath: _f$backdropPath,
    #id: _f$id,
    #title: _f$title,
    #originalLanguage: _f$originalLanguage,
    #originalTitle: _f$originalTitle,
    #overview: _f$overview,
    #posterPath: _f$posterPath,
    #mediaType: _f$mediaType,
    #genreIds: _f$genreIds,
    #popularity: _f$popularity,
    #releaseDate: _f$releaseDate,
    #video: _f$video,
    #voteAverage: _f$voteAverage,
    #voteCount: _f$voteCount,
  };

  static TmdbEntry _instantiate(DecodingData data) {
    return TmdbEntry(
      adult: data.dec(_f$adult),
      backdropPath: data.dec(_f$backdropPath),
      id: data.dec(_f$id),
      title: data.dec(_f$title),
      originalLanguage: data.dec(_f$originalLanguage),
      originalTitle: data.dec(_f$originalTitle),
      overview: data.dec(_f$overview),
      posterPath: data.dec(_f$posterPath),
      mediaType: data.dec(_f$mediaType),
      genreIds: data.dec(_f$genreIds),
      popularity: data.dec(_f$popularity),
      releaseDate: data.dec(_f$releaseDate),
      video: data.dec(_f$video),
      voteAverage: data.dec(_f$voteAverage),
      voteCount: data.dec(_f$voteCount),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TmdbEntry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TmdbEntry>(map);
  }

  static TmdbEntry fromJson(String json) {
    return ensureInitialized().decodeJson<TmdbEntry>(json);
  }
}

mixin TmdbEntryMappable {
  String toJson() {
    return TmdbEntryMapper.ensureInitialized().encodeJson<TmdbEntry>(
      this as TmdbEntry,
    );
  }

  Map<String, dynamic> toMap() {
    return TmdbEntryMapper.ensureInitialized().encodeMap<TmdbEntry>(
      this as TmdbEntry,
    );
  }

  TmdbEntryCopyWith<TmdbEntry, TmdbEntry, TmdbEntry> get copyWith =>
      _TmdbEntryCopyWithImpl<TmdbEntry, TmdbEntry>(
        this as TmdbEntry,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TmdbEntryMapper.ensureInitialized().stringifyValue(
      this as TmdbEntry,
    );
  }

  @override
  bool operator ==(Object other) {
    return TmdbEntryMapper.ensureInitialized().equalsValue(
      this as TmdbEntry,
      other,
    );
  }

  @override
  int get hashCode {
    return TmdbEntryMapper.ensureInitialized().hashValue(this as TmdbEntry);
  }
}

extension TmdbEntryValueCopy<$R, $Out> on ObjectCopyWith<$R, TmdbEntry, $Out> {
  TmdbEntryCopyWith<$R, TmdbEntry, $Out> get $asTmdbEntry =>
      $base.as((v, t, t2) => _TmdbEntryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TmdbEntryCopyWith<$R, $In extends TmdbEntry, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get genreIds;
  $R call({
    bool? adult,
    String? backdropPath,
    int? id,
    String? title,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    String? posterPath,
    String? mediaType,
    List<int>? genreIds,
    double? popularity,
    String? releaseDate,
    bool? video,
    double? voteAverage,
    int? voteCount,
  });
  TmdbEntryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TmdbEntryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TmdbEntry, $Out>
    implements TmdbEntryCopyWith<$R, TmdbEntry, $Out> {
  _TmdbEntryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TmdbEntry> $mapper =
      TmdbEntryMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get genreIds =>
      $value.genreIds != null
      ? ListCopyWith(
          $value.genreIds!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(genreIds: v),
        )
      : null;
  @override
  $R call({
    Object? adult = $none,
    Object? backdropPath = $none,
    Object? id = $none,
    Object? title = $none,
    Object? originalLanguage = $none,
    Object? originalTitle = $none,
    Object? overview = $none,
    Object? posterPath = $none,
    Object? mediaType = $none,
    Object? genreIds = $none,
    Object? popularity = $none,
    Object? releaseDate = $none,
    Object? video = $none,
    Object? voteAverage = $none,
    Object? voteCount = $none,
  }) => $apply(
    FieldCopyWithData({
      if (adult != $none) #adult: adult,
      if (backdropPath != $none) #backdropPath: backdropPath,
      if (id != $none) #id: id,
      if (title != $none) #title: title,
      if (originalLanguage != $none) #originalLanguage: originalLanguage,
      if (originalTitle != $none) #originalTitle: originalTitle,
      if (overview != $none) #overview: overview,
      if (posterPath != $none) #posterPath: posterPath,
      if (mediaType != $none) #mediaType: mediaType,
      if (genreIds != $none) #genreIds: genreIds,
      if (popularity != $none) #popularity: popularity,
      if (releaseDate != $none) #releaseDate: releaseDate,
      if (video != $none) #video: video,
      if (voteAverage != $none) #voteAverage: voteAverage,
      if (voteCount != $none) #voteCount: voteCount,
    }),
  );
  @override
  TmdbEntry $make(CopyWithData data) => TmdbEntry(
    adult: data.get(#adult, or: $value.adult),
    backdropPath: data.get(#backdropPath, or: $value.backdropPath),
    id: data.get(#id, or: $value.id),
    title: data.get(#title, or: $value.title),
    originalLanguage: data.get(#originalLanguage, or: $value.originalLanguage),
    originalTitle: data.get(#originalTitle, or: $value.originalTitle),
    overview: data.get(#overview, or: $value.overview),
    posterPath: data.get(#posterPath, or: $value.posterPath),
    mediaType: data.get(#mediaType, or: $value.mediaType),
    genreIds: data.get(#genreIds, or: $value.genreIds),
    popularity: data.get(#popularity, or: $value.popularity),
    releaseDate: data.get(#releaseDate, or: $value.releaseDate),
    video: data.get(#video, or: $value.video),
    voteAverage: data.get(#voteAverage, or: $value.voteAverage),
    voteCount: data.get(#voteCount, or: $value.voteCount),
  );

  @override
  TmdbEntryCopyWith<$R2, TmdbEntry, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TmdbEntryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

