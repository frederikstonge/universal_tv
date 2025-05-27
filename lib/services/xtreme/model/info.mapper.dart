// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'info.dart';

class XTremeCodeInfoMapper extends ClassMapperBase<XTremeCodeInfo> {
  XTremeCodeInfoMapper._();

  static XTremeCodeInfoMapper? _instance;
  static XTremeCodeInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeInfo';

  static String? _$name(XTremeCodeInfo v) => v.name;
  static const Field<XTremeCodeInfo, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$title(XTremeCodeInfo v) => v.title;
  static const Field<XTremeCodeInfo, String> _f$title =
      Field('title', _$title, opt: true);
  static String? _$year(XTremeCodeInfo v) => v.year;
  static const Field<XTremeCodeInfo, String> _f$year =
      Field('year', _$year, opt: true);
  static String? _$cover(XTremeCodeInfo v) => v.cover;
  static const Field<XTremeCodeInfo, String> _f$cover =
      Field('cover', _$cover, opt: true);
  static String? _$plot(XTremeCodeInfo v) => v.plot;
  static const Field<XTremeCodeInfo, String> _f$plot =
      Field('plot', _$plot, opt: true);
  static String? _$cast(XTremeCodeInfo v) => v.cast;
  static const Field<XTremeCodeInfo, String> _f$cast =
      Field('cast', _$cast, opt: true);
  static String? _$director(XTremeCodeInfo v) => v.director;
  static const Field<XTremeCodeInfo, String> _f$director =
      Field('director', _$director, opt: true);
  static String? _$genre(XTremeCodeInfo v) => v.genre;
  static const Field<XTremeCodeInfo, String> _f$genre =
      Field('genre', _$genre, opt: true);
  static DateTime? _$releaseDate(XTremeCodeInfo v) => v.releaseDate;
  static const Field<XTremeCodeInfo, DateTime> _f$releaseDate =
      Field('releaseDate', _$releaseDate, key: r'release_date', opt: true);
  static DateTime? _$lastModified(XTremeCodeInfo v) => v.lastModified;
  static const Field<XTremeCodeInfo, DateTime> _f$lastModified =
      Field('lastModified', _$lastModified, key: r'last_modified', opt: true);
  static double? _$rating(XTremeCodeInfo v) => v.rating;
  static const Field<XTremeCodeInfo, double> _f$rating =
      Field('rating', _$rating, opt: true);
  static double? _$rating5based(XTremeCodeInfo v) => v.rating5based;
  static const Field<XTremeCodeInfo, double> _f$rating5based =
      Field('rating5based', _$rating5based, opt: true);
  static List<String>? _$backdropPath(XTremeCodeInfo v) => v.backdropPath;
  static const Field<XTremeCodeInfo, List<String>> _f$backdropPath = Field(
      'backdropPath', _$backdropPath,
      key: r'backdrop_path', opt: true, def: const []);
  static String? _$youtubeTrailer(XTremeCodeInfo v) => v.youtubeTrailer;
  static const Field<XTremeCodeInfo, String> _f$youtubeTrailer = Field(
      'youtubeTrailer', _$youtubeTrailer,
      key: r'youtube_trailer', opt: true);
  static int? _$episodeRunTime(XTremeCodeInfo v) => v.episodeRunTime;
  static const Field<XTremeCodeInfo, int> _f$episodeRunTime = Field(
      'episodeRunTime', _$episodeRunTime,
      key: r'episode_run_time', opt: true);
  static int? _$categoryId(XTremeCodeInfo v) => v.categoryId;
  static const Field<XTremeCodeInfo, int> _f$categoryId =
      Field('categoryId', _$categoryId, key: r'category_id', opt: true);
  static List<int>? _$categoryIds(XTremeCodeInfo v) => v.categoryIds;
  static const Field<XTremeCodeInfo, List<int>> _f$categoryIds = Field(
      'categoryIds', _$categoryIds,
      key: r'category_ids', opt: true, def: const []);

  @override
  final MappableFields<XTremeCodeInfo> fields = const {
    #name: _f$name,
    #title: _f$title,
    #year: _f$year,
    #cover: _f$cover,
    #plot: _f$plot,
    #cast: _f$cast,
    #director: _f$director,
    #genre: _f$genre,
    #releaseDate: _f$releaseDate,
    #lastModified: _f$lastModified,
    #rating: _f$rating,
    #rating5based: _f$rating5based,
    #backdropPath: _f$backdropPath,
    #youtubeTrailer: _f$youtubeTrailer,
    #episodeRunTime: _f$episodeRunTime,
    #categoryId: _f$categoryId,
    #categoryIds: _f$categoryIds,
  };

  static XTremeCodeInfo _instantiate(DecodingData data) {
    return XTremeCodeInfo(
        name: data.dec(_f$name),
        title: data.dec(_f$title),
        year: data.dec(_f$year),
        cover: data.dec(_f$cover),
        plot: data.dec(_f$plot),
        cast: data.dec(_f$cast),
        director: data.dec(_f$director),
        genre: data.dec(_f$genre),
        releaseDate: data.dec(_f$releaseDate),
        lastModified: data.dec(_f$lastModified),
        rating: data.dec(_f$rating),
        rating5based: data.dec(_f$rating5based),
        backdropPath: data.dec(_f$backdropPath),
        youtubeTrailer: data.dec(_f$youtubeTrailer),
        episodeRunTime: data.dec(_f$episodeRunTime),
        categoryId: data.dec(_f$categoryId),
        categoryIds: data.dec(_f$categoryIds));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeInfo>(map);
  }

  static XTremeCodeInfo fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeInfo>(json);
  }
}

mixin XTremeCodeInfoMappable {
  String toJson() {
    return XTremeCodeInfoMapper.ensureInitialized()
        .encodeJson<XTremeCodeInfo>(this as XTremeCodeInfo);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeInfoMapper.ensureInitialized()
        .encodeMap<XTremeCodeInfo>(this as XTremeCodeInfo);
  }

  XTremeCodeInfoCopyWith<XTremeCodeInfo, XTremeCodeInfo, XTremeCodeInfo>
      get copyWith =>
          _XTremeCodeInfoCopyWithImpl<XTremeCodeInfo, XTremeCodeInfo>(
              this as XTremeCodeInfo, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeInfoMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeInfo);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeInfoMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeInfo, other);
  }

  @override
  int get hashCode {
    return XTremeCodeInfoMapper.ensureInitialized()
        .hashValue(this as XTremeCodeInfo);
  }
}

extension XTremeCodeInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeInfo, $Out> {
  XTremeCodeInfoCopyWith<$R, XTremeCodeInfo, $Out> get $asXTremeCodeInfo =>
      $base.as((v, t, t2) => _XTremeCodeInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeInfoCopyWith<$R, $In extends XTremeCodeInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get backdropPath;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get categoryIds;
  $R call(
      {String? name,
      String? title,
      String? year,
      String? cover,
      String? plot,
      String? cast,
      String? director,
      String? genre,
      DateTime? releaseDate,
      DateTime? lastModified,
      double? rating,
      double? rating5based,
      List<String>? backdropPath,
      String? youtubeTrailer,
      int? episodeRunTime,
      int? categoryId,
      List<int>? categoryIds});
  XTremeCodeInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeInfo, $Out>
    implements XTremeCodeInfoCopyWith<$R, XTremeCodeInfo, $Out> {
  _XTremeCodeInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeInfo> $mapper =
      XTremeCodeInfoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get backdropPath => $value.backdropPath != null
          ? ListCopyWith(
              $value.backdropPath!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(backdropPath: v))
          : null;
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
          {Object? name = $none,
          Object? title = $none,
          Object? year = $none,
          Object? cover = $none,
          Object? plot = $none,
          Object? cast = $none,
          Object? director = $none,
          Object? genre = $none,
          Object? releaseDate = $none,
          Object? lastModified = $none,
          Object? rating = $none,
          Object? rating5based = $none,
          Object? backdropPath = $none,
          Object? youtubeTrailer = $none,
          Object? episodeRunTime = $none,
          Object? categoryId = $none,
          Object? categoryIds = $none}) =>
      $apply(FieldCopyWithData({
        if (name != $none) #name: name,
        if (title != $none) #title: title,
        if (year != $none) #year: year,
        if (cover != $none) #cover: cover,
        if (plot != $none) #plot: plot,
        if (cast != $none) #cast: cast,
        if (director != $none) #director: director,
        if (genre != $none) #genre: genre,
        if (releaseDate != $none) #releaseDate: releaseDate,
        if (lastModified != $none) #lastModified: lastModified,
        if (rating != $none) #rating: rating,
        if (rating5based != $none) #rating5based: rating5based,
        if (backdropPath != $none) #backdropPath: backdropPath,
        if (youtubeTrailer != $none) #youtubeTrailer: youtubeTrailer,
        if (episodeRunTime != $none) #episodeRunTime: episodeRunTime,
        if (categoryId != $none) #categoryId: categoryId,
        if (categoryIds != $none) #categoryIds: categoryIds
      }));
  @override
  XTremeCodeInfo $make(CopyWithData data) => XTremeCodeInfo(
      name: data.get(#name, or: $value.name),
      title: data.get(#title, or: $value.title),
      year: data.get(#year, or: $value.year),
      cover: data.get(#cover, or: $value.cover),
      plot: data.get(#plot, or: $value.plot),
      cast: data.get(#cast, or: $value.cast),
      director: data.get(#director, or: $value.director),
      genre: data.get(#genre, or: $value.genre),
      releaseDate: data.get(#releaseDate, or: $value.releaseDate),
      lastModified: data.get(#lastModified, or: $value.lastModified),
      rating: data.get(#rating, or: $value.rating),
      rating5based: data.get(#rating5based, or: $value.rating5based),
      backdropPath: data.get(#backdropPath, or: $value.backdropPath),
      youtubeTrailer: data.get(#youtubeTrailer, or: $value.youtubeTrailer),
      episodeRunTime: data.get(#episodeRunTime, or: $value.episodeRunTime),
      categoryId: data.get(#categoryId, or: $value.categoryId),
      categoryIds: data.get(#categoryIds, or: $value.categoryIds));

  @override
  XTremeCodeInfoCopyWith<$R2, XTremeCodeInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _XTremeCodeInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
