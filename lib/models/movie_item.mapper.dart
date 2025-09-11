// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_item.dart';

class MovieItemMapper extends ClassMapperBase<MovieItem> {
  MovieItemMapper._();

  static MovieItemMapper? _instance;
  static MovieItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MovieItem';

  static int _$streamId(MovieItem v) => v.streamId;
  static const Field<MovieItem, int> _f$streamId =
      Field('streamId', _$streamId);
  static String _$name(MovieItem v) => v.name;
  static const Field<MovieItem, String> _f$name = Field('name', _$name);
  static String _$categoryId(MovieItem v) => v.categoryId;
  static const Field<MovieItem, String> _f$categoryId =
      Field('categoryId', _$categoryId);
  static String? _$posterUrl(MovieItem v) => v.posterUrl;
  static const Field<MovieItem, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl, opt: true);
  static String _$providerName(MovieItem v) => v.providerName;
  static const Field<MovieItem, String> _f$providerName =
      Field('providerName', _$providerName);

  @override
  final MappableFields<MovieItem> fields = const {
    #streamId: _f$streamId,
    #name: _f$name,
    #categoryId: _f$categoryId,
    #posterUrl: _f$posterUrl,
    #providerName: _f$providerName,
  };

  static MovieItem _instantiate(DecodingData data) {
    return MovieItem(
        streamId: data.dec(_f$streamId),
        name: data.dec(_f$name),
        categoryId: data.dec(_f$categoryId),
        posterUrl: data.dec(_f$posterUrl),
        providerName: data.dec(_f$providerName));
  }

  @override
  final Function instantiate = _instantiate;

  static MovieItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieItem>(map);
  }

  static MovieItem fromJson(String json) {
    return ensureInitialized().decodeJson<MovieItem>(json);
  }
}

mixin MovieItemMappable {
  String toJson() {
    return MovieItemMapper.ensureInitialized()
        .encodeJson<MovieItem>(this as MovieItem);
  }

  Map<String, dynamic> toMap() {
    return MovieItemMapper.ensureInitialized()
        .encodeMap<MovieItem>(this as MovieItem);
  }

  MovieItemCopyWith<MovieItem, MovieItem, MovieItem> get copyWith =>
      _MovieItemCopyWithImpl<MovieItem, MovieItem>(
          this as MovieItem, $identity, $identity);
  @override
  String toString() {
    return MovieItemMapper.ensureInitialized()
        .stringifyValue(this as MovieItem);
  }

  @override
  bool operator ==(Object other) {
    return MovieItemMapper.ensureInitialized()
        .equalsValue(this as MovieItem, other);
  }

  @override
  int get hashCode {
    return MovieItemMapper.ensureInitialized().hashValue(this as MovieItem);
  }
}

extension MovieItemValueCopy<$R, $Out> on ObjectCopyWith<$R, MovieItem, $Out> {
  MovieItemCopyWith<$R, MovieItem, $Out> get $asMovieItem =>
      $base.as((v, t, t2) => _MovieItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MovieItemCopyWith<$R, $In extends MovieItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? streamId,
      String? name,
      String? categoryId,
      String? posterUrl,
      String? providerName});
  MovieItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MovieItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieItem, $Out>
    implements MovieItemCopyWith<$R, MovieItem, $Out> {
  _MovieItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieItem> $mapper =
      MovieItemMapper.ensureInitialized();
  @override
  $R call(
          {int? streamId,
          String? name,
          String? categoryId,
          Object? posterUrl = $none,
          String? providerName}) =>
      $apply(FieldCopyWithData({
        if (streamId != null) #streamId: streamId,
        if (name != null) #name: name,
        if (categoryId != null) #categoryId: categoryId,
        if (posterUrl != $none) #posterUrl: posterUrl,
        if (providerName != null) #providerName: providerName
      }));
  @override
  MovieItem $make(CopyWithData data) => MovieItem(
      streamId: data.get(#streamId, or: $value.streamId),
      name: data.get(#name, or: $value.name),
      categoryId: data.get(#categoryId, or: $value.categoryId),
      posterUrl: data.get(#posterUrl, or: $value.posterUrl),
      providerName: data.get(#providerName, or: $value.providerName));

  @override
  MovieItemCopyWith<$R2, MovieItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
