// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_data.dart';

class MovieDataMapper extends ClassMapperBase<MovieData> {
  MovieDataMapper._();

  static MovieDataMapper? _instance;
  static MovieDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MovieData';

  static int? _$streamId(MovieData v) => v.streamId;
  static const Field<MovieData, int> _f$streamId =
      Field('streamId', _$streamId, key: r'stream_id');
  static String? _$name(MovieData v) => v.name;
  static const Field<MovieData, String> _f$name = Field('name', _$name);
  static String? _$title(MovieData v) => v.title;
  static const Field<MovieData, String> _f$title = Field('title', _$title);
  static String? _$year(MovieData v) => v.year;
  static const Field<MovieData, String> _f$year = Field('year', _$year);
  static DateTime? _$added(MovieData v) => v.added;
  static const Field<MovieData, DateTime> _f$added = Field('added', _$added);
  static int? _$categoryId(MovieData v) => v.categoryId;
  static const Field<MovieData, int> _f$categoryId =
      Field('categoryId', _$categoryId, key: r'category_id');
  static List<int>? _$categoryIds(MovieData v) => v.categoryIds;
  static const Field<MovieData, List<int>> _f$categoryIds =
      Field('categoryIds', _$categoryIds, key: r'category_ids');
  static String _$containerExtension(MovieData v) => v.containerExtension;
  static const Field<MovieData, String> _f$containerExtension = Field(
      'containerExtension', _$containerExtension,
      key: r'container_extension');
  static String? _$customSid(MovieData v) => v.customSid;
  static const Field<MovieData, String> _f$customSid =
      Field('customSid', _$customSid, key: r'custom_sid');
  static String? _$directSource(MovieData v) => v.directSource;
  static const Field<MovieData, String> _f$directSource =
      Field('directSource', _$directSource, key: r'direct_source');

  @override
  final MappableFields<MovieData> fields = const {
    #streamId: _f$streamId,
    #name: _f$name,
    #title: _f$title,
    #year: _f$year,
    #added: _f$added,
    #categoryId: _f$categoryId,
    #categoryIds: _f$categoryIds,
    #containerExtension: _f$containerExtension,
    #customSid: _f$customSid,
    #directSource: _f$directSource,
  };

  static MovieData _instantiate(DecodingData data) {
    return MovieData(
        streamId: data.dec(_f$streamId),
        name: data.dec(_f$name),
        title: data.dec(_f$title),
        year: data.dec(_f$year),
        added: data.dec(_f$added),
        categoryId: data.dec(_f$categoryId),
        categoryIds: data.dec(_f$categoryIds),
        containerExtension: data.dec(_f$containerExtension),
        customSid: data.dec(_f$customSid),
        directSource: data.dec(_f$directSource));
  }

  @override
  final Function instantiate = _instantiate;

  static MovieData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieData>(map);
  }

  static MovieData fromJson(String json) {
    return ensureInitialized().decodeJson<MovieData>(json);
  }
}

mixin MovieDataMappable {
  String toJson() {
    return MovieDataMapper.ensureInitialized()
        .encodeJson<MovieData>(this as MovieData);
  }

  Map<String, dynamic> toMap() {
    return MovieDataMapper.ensureInitialized()
        .encodeMap<MovieData>(this as MovieData);
  }

  MovieDataCopyWith<MovieData, MovieData, MovieData> get copyWith =>
      _MovieDataCopyWithImpl<MovieData, MovieData>(
          this as MovieData, $identity, $identity);
  @override
  String toString() {
    return MovieDataMapper.ensureInitialized()
        .stringifyValue(this as MovieData);
  }

  @override
  bool operator ==(Object other) {
    return MovieDataMapper.ensureInitialized()
        .equalsValue(this as MovieData, other);
  }

  @override
  int get hashCode {
    return MovieDataMapper.ensureInitialized().hashValue(this as MovieData);
  }
}

extension MovieDataValueCopy<$R, $Out> on ObjectCopyWith<$R, MovieData, $Out> {
  MovieDataCopyWith<$R, MovieData, $Out> get $asMovieData =>
      $base.as((v, t, t2) => _MovieDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MovieDataCopyWith<$R, $In extends MovieData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get categoryIds;
  $R call(
      {int? streamId,
      String? name,
      String? title,
      String? year,
      DateTime? added,
      int? categoryId,
      List<int>? categoryIds,
      String? containerExtension,
      String? customSid,
      String? directSource});
  MovieDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MovieDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieData, $Out>
    implements MovieDataCopyWith<$R, MovieData, $Out> {
  _MovieDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieData> $mapper =
      MovieDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get categoryIds =>
      $value.categoryIds != null
          ? ListCopyWith(
              $value.categoryIds!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(categoryIds: v))
          : null;
  @override
  $R call(
          {Object? streamId = $none,
          Object? name = $none,
          Object? title = $none,
          Object? year = $none,
          Object? added = $none,
          Object? categoryId = $none,
          Object? categoryIds = $none,
          String? containerExtension,
          Object? customSid = $none,
          Object? directSource = $none}) =>
      $apply(FieldCopyWithData({
        if (streamId != $none) #streamId: streamId,
        if (name != $none) #name: name,
        if (title != $none) #title: title,
        if (year != $none) #year: year,
        if (added != $none) #added: added,
        if (categoryId != $none) #categoryId: categoryId,
        if (categoryIds != $none) #categoryIds: categoryIds,
        if (containerExtension != null) #containerExtension: containerExtension,
        if (customSid != $none) #customSid: customSid,
        if (directSource != $none) #directSource: directSource
      }));
  @override
  MovieData $make(CopyWithData data) => MovieData(
      streamId: data.get(#streamId, or: $value.streamId),
      name: data.get(#name, or: $value.name),
      title: data.get(#title, or: $value.title),
      year: data.get(#year, or: $value.year),
      added: data.get(#added, or: $value.added),
      categoryId: data.get(#categoryId, or: $value.categoryId),
      categoryIds: data.get(#categoryIds, or: $value.categoryIds),
      containerExtension:
          data.get(#containerExtension, or: $value.containerExtension),
      customSid: data.get(#customSid, or: $value.customSid),
      directSource: data.get(#directSource, or: $value.directSource));

  @override
  MovieDataCopyWith<$R2, MovieData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
