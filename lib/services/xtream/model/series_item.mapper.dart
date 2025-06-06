// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'series_item.dart';

class SeriesItemMapper extends ClassMapperBase<SeriesItem> {
  SeriesItemMapper._();

  static SeriesItemMapper? _instance;
  static SeriesItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeriesItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SeriesItem';

  static int? _$num(SeriesItem v) => v.num;
  static const Field<SeriesItem, int> _f$num = Field('num', _$num);
  static String? _$name(SeriesItem v) => v.name;
  static const Field<SeriesItem, String> _f$name = Field('name', _$name);
  static String? _$title(SeriesItem v) => v.title;
  static const Field<SeriesItem, String> _f$title = Field('title', _$title);
  static String? _$year(SeriesItem v) => v.year;
  static const Field<SeriesItem, String> _f$year = Field('year', _$year);
  static String? _$streamType(SeriesItem v) => v.streamType;
  static const Field<SeriesItem, String> _f$streamType =
      Field('streamType', _$streamType, key: r'stream_type');
  static int? _$seriesId(SeriesItem v) => v.seriesId;
  static const Field<SeriesItem, int> _f$seriesId =
      Field('seriesId', _$seriesId, key: r'series_id');
  static String? _$cover(SeriesItem v) => v.cover;
  static const Field<SeriesItem, String> _f$cover = Field('cover', _$cover);
  static String? _$plot(SeriesItem v) => v.plot;
  static const Field<SeriesItem, String> _f$plot = Field('plot', _$plot);
  static String? _$cast(SeriesItem v) => v.cast;
  static const Field<SeriesItem, String> _f$cast = Field('cast', _$cast);
  static String? _$director(SeriesItem v) => v.director;
  static const Field<SeriesItem, String> _f$director =
      Field('director', _$director);
  static String? _$genre(SeriesItem v) => v.genre;
  static const Field<SeriesItem, String> _f$genre = Field('genre', _$genre);
  static String? _$releaseDate(SeriesItem v) => v.releaseDate;
  static const Field<SeriesItem, String> _f$releaseDate =
      Field('releaseDate', _$releaseDate, key: r'release_date');
  static DateTime? _$lastModified(SeriesItem v) => v.lastModified;
  static const Field<SeriesItem, DateTime> _f$lastModified =
      Field('lastModified', _$lastModified, key: r'last_modified');
  static double? _$rating(SeriesItem v) => v.rating;
  static const Field<SeriesItem, double> _f$rating = Field('rating', _$rating);
  static double? _$rating5based(SeriesItem v) => v.rating5based;
  static const Field<SeriesItem, double> _f$rating5based =
      Field('rating5based', _$rating5based);
  static List<String>? _$backdropPath(SeriesItem v) => v.backdropPath;
  static const Field<SeriesItem, List<String>> _f$backdropPath =
      Field('backdropPath', _$backdropPath, key: r'backdrop_path');
  static String? _$youtubeTrailer(SeriesItem v) => v.youtubeTrailer;
  static const Field<SeriesItem, String> _f$youtubeTrailer =
      Field('youtubeTrailer', _$youtubeTrailer, key: r'youtube_trailer');
  static int? _$episodeRunTime(SeriesItem v) => v.episodeRunTime;
  static const Field<SeriesItem, int> _f$episodeRunTime =
      Field('episodeRunTime', _$episodeRunTime, key: r'episode_run_time');
  static int? _$categoryId(SeriesItem v) => v.categoryId;
  static const Field<SeriesItem, int> _f$categoryId =
      Field('categoryId', _$categoryId, key: r'category_id');
  static List<int>? _$categoryIds(SeriesItem v) => v.categoryIds;
  static const Field<SeriesItem, List<int>> _f$categoryIds =
      Field('categoryIds', _$categoryIds, key: r'category_ids');

  @override
  final MappableFields<SeriesItem> fields = const {
    #num: _f$num,
    #name: _f$name,
    #title: _f$title,
    #year: _f$year,
    #streamType: _f$streamType,
    #seriesId: _f$seriesId,
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

  static SeriesItem _instantiate(DecodingData data) {
    return SeriesItem(
        num: data.dec(_f$num),
        name: data.dec(_f$name),
        title: data.dec(_f$title),
        year: data.dec(_f$year),
        streamType: data.dec(_f$streamType),
        seriesId: data.dec(_f$seriesId),
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

  static SeriesItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeriesItem>(map);
  }

  static SeriesItem fromJson(String json) {
    return ensureInitialized().decodeJson<SeriesItem>(json);
  }
}

mixin SeriesItemMappable {
  String toJson() {
    return SeriesItemMapper.ensureInitialized()
        .encodeJson<SeriesItem>(this as SeriesItem);
  }

  Map<String, dynamic> toMap() {
    return SeriesItemMapper.ensureInitialized()
        .encodeMap<SeriesItem>(this as SeriesItem);
  }

  SeriesItemCopyWith<SeriesItem, SeriesItem, SeriesItem> get copyWith =>
      _SeriesItemCopyWithImpl<SeriesItem, SeriesItem>(
          this as SeriesItem, $identity, $identity);
  @override
  String toString() {
    return SeriesItemMapper.ensureInitialized()
        .stringifyValue(this as SeriesItem);
  }

  @override
  bool operator ==(Object other) {
    return SeriesItemMapper.ensureInitialized()
        .equalsValue(this as SeriesItem, other);
  }

  @override
  int get hashCode {
    return SeriesItemMapper.ensureInitialized().hashValue(this as SeriesItem);
  }
}

extension SeriesItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeriesItem, $Out> {
  SeriesItemCopyWith<$R, SeriesItem, $Out> get $asSeriesItem =>
      $base.as((v, t, t2) => _SeriesItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeriesItemCopyWith<$R, $In extends SeriesItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get backdropPath;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get categoryIds;
  $R call(
      {int? num,
      String? name,
      String? title,
      String? year,
      String? streamType,
      int? seriesId,
      String? cover,
      String? plot,
      String? cast,
      String? director,
      String? genre,
      String? releaseDate,
      DateTime? lastModified,
      double? rating,
      double? rating5based,
      List<String>? backdropPath,
      String? youtubeTrailer,
      int? episodeRunTime,
      int? categoryId,
      List<int>? categoryIds});
  SeriesItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SeriesItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeriesItem, $Out>
    implements SeriesItemCopyWith<$R, SeriesItem, $Out> {
  _SeriesItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeriesItem> $mapper =
      SeriesItemMapper.ensureInitialized();
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
          {Object? num = $none,
          Object? name = $none,
          Object? title = $none,
          Object? year = $none,
          Object? streamType = $none,
          Object? seriesId = $none,
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
        if (num != $none) #num: num,
        if (name != $none) #name: name,
        if (title != $none) #title: title,
        if (year != $none) #year: year,
        if (streamType != $none) #streamType: streamType,
        if (seriesId != $none) #seriesId: seriesId,
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
  SeriesItem $make(CopyWithData data) => SeriesItem(
      num: data.get(#num, or: $value.num),
      name: data.get(#name, or: $value.name),
      title: data.get(#title, or: $value.title),
      year: data.get(#year, or: $value.year),
      streamType: data.get(#streamType, or: $value.streamType),
      seriesId: data.get(#seriesId, or: $value.seriesId),
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
  SeriesItemCopyWith<$R2, SeriesItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SeriesItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
