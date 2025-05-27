// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'info_vod.dart';

class XTremeCodeInfoVodMapper extends ClassMapperBase<XTremeCodeInfoVod> {
  XTremeCodeInfoVodMapper._();

  static XTremeCodeInfoVodMapper? _instance;
  static XTremeCodeInfoVodMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeInfoVodMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeInfoVod';

  static String? _$kinopoiskUrl(XTremeCodeInfoVod v) => v.kinopoiskUrl;
  static const Field<XTremeCodeInfoVod, String> _f$kinopoiskUrl =
      Field('kinopoiskUrl', _$kinopoiskUrl, key: r'kinopoisk_url');
  static int? _$tmdbId(XTremeCodeInfoVod v) => v.tmdbId;
  static const Field<XTremeCodeInfoVod, int> _f$tmdbId =
      Field('tmdbId', _$tmdbId, key: r'tmdb_id');
  static String? _$name(XTremeCodeInfoVod v) => v.name;
  static const Field<XTremeCodeInfoVod, String> _f$name = Field('name', _$name);
  static String? _$oName(XTremeCodeInfoVod v) => v.oName;
  static const Field<XTremeCodeInfoVod, String> _f$oName =
      Field('oName', _$oName, key: r'o_name');
  static String? _$coverBig(XTremeCodeInfoVod v) => v.coverBig;
  static const Field<XTremeCodeInfoVod, String> _f$coverBig =
      Field('coverBig', _$coverBig, key: r'cover_big');
  static String? _$movieImage(XTremeCodeInfoVod v) => v.movieImage;
  static const Field<XTremeCodeInfoVod, String> _f$movieImage =
      Field('movieImage', _$movieImage, key: r'movie_image');
  static DateTime? _$releaseDate(XTremeCodeInfoVod v) => v.releaseDate;
  static const Field<XTremeCodeInfoVod, DateTime> _f$releaseDate =
      Field('releaseDate', _$releaseDate, key: r'release_date');
  static int? _$episodeRunTime(XTremeCodeInfoVod v) => v.episodeRunTime;
  static const Field<XTremeCodeInfoVod, int> _f$episodeRunTime =
      Field('episodeRunTime', _$episodeRunTime, key: r'episode_run_time');
  static String? _$youtubeTrailer(XTremeCodeInfoVod v) => v.youtubeTrailer;
  static const Field<XTremeCodeInfoVod, String> _f$youtubeTrailer =
      Field('youtubeTrailer', _$youtubeTrailer, key: r'youtube_trailer');
  static String? _$director(XTremeCodeInfoVod v) => v.director;
  static const Field<XTremeCodeInfoVod, String> _f$director =
      Field('director', _$director);
  static String? _$actors(XTremeCodeInfoVod v) => v.actors;
  static const Field<XTremeCodeInfoVod, String> _f$actors =
      Field('actors', _$actors);
  static String? _$cast(XTremeCodeInfoVod v) => v.cast;
  static const Field<XTremeCodeInfoVod, String> _f$cast = Field('cast', _$cast);
  static String? _$description(XTremeCodeInfoVod v) => v.description;
  static const Field<XTremeCodeInfoVod, String> _f$description =
      Field('description', _$description);
  static String? _$plot(XTremeCodeInfoVod v) => v.plot;
  static const Field<XTremeCodeInfoVod, String> _f$plot = Field('plot', _$plot);
  static String? _$age(XTremeCodeInfoVod v) => v.age;
  static const Field<XTremeCodeInfoVod, String> _f$age = Field('age', _$age);
  static String? _$mpaaRating(XTremeCodeInfoVod v) => v.mpaaRating;
  static const Field<XTremeCodeInfoVod, String> _f$mpaaRating =
      Field('mpaaRating', _$mpaaRating, key: r'mpaa_rating');
  static int? _$ratingCountKinopoisk(XTremeCodeInfoVod v) =>
      v.ratingCountKinopoisk;
  static const Field<XTremeCodeInfoVod, int> _f$ratingCountKinopoisk = Field(
      'ratingCountKinopoisk', _$ratingCountKinopoisk,
      key: r'rating_count_kinopoisk');
  static String? _$country(XTremeCodeInfoVod v) => v.country;
  static const Field<XTremeCodeInfoVod, String> _f$country =
      Field('country', _$country);
  static String? _$genre(XTremeCodeInfoVod v) => v.genre;
  static const Field<XTremeCodeInfoVod, String> _f$genre =
      Field('genre', _$genre);
  static List<String>? _$backdropPath(XTremeCodeInfoVod v) => v.backdropPath;
  static const Field<XTremeCodeInfoVod, List<String>> _f$backdropPath =
      Field('backdropPath', _$backdropPath, key: r'backdrop_path');
  static int? _$durationSecs(XTremeCodeInfoVod v) => v.durationSecs;
  static const Field<XTremeCodeInfoVod, int> _f$durationSecs =
      Field('durationSecs', _$durationSecs, key: r'duration_secs');
  static String? _$duration(XTremeCodeInfoVod v) => v.duration;
  static const Field<XTremeCodeInfoVod, String> _f$duration =
      Field('duration', _$duration);
  static int? _$bitrate(XTremeCodeInfoVod v) => v.bitrate;
  static const Field<XTremeCodeInfoVod, int> _f$bitrate =
      Field('bitrate', _$bitrate);
  static double? _$rating(XTremeCodeInfoVod v) => v.rating;
  static const Field<XTremeCodeInfoVod, double> _f$rating =
      Field('rating', _$rating);
  static DateTime? _$releasedate(XTremeCodeInfoVod v) => v.releasedate;
  static const Field<XTremeCodeInfoVod, DateTime> _f$releasedate =
      Field('releasedate', _$releasedate);
  static List<dynamic>? _$subtitles(XTremeCodeInfoVod v) => v.subtitles;
  static const Field<XTremeCodeInfoVod, List<dynamic>> _f$subtitles =
      Field('subtitles', _$subtitles);

  @override
  final MappableFields<XTremeCodeInfoVod> fields = const {
    #kinopoiskUrl: _f$kinopoiskUrl,
    #tmdbId: _f$tmdbId,
    #name: _f$name,
    #oName: _f$oName,
    #coverBig: _f$coverBig,
    #movieImage: _f$movieImage,
    #releaseDate: _f$releaseDate,
    #episodeRunTime: _f$episodeRunTime,
    #youtubeTrailer: _f$youtubeTrailer,
    #director: _f$director,
    #actors: _f$actors,
    #cast: _f$cast,
    #description: _f$description,
    #plot: _f$plot,
    #age: _f$age,
    #mpaaRating: _f$mpaaRating,
    #ratingCountKinopoisk: _f$ratingCountKinopoisk,
    #country: _f$country,
    #genre: _f$genre,
    #backdropPath: _f$backdropPath,
    #durationSecs: _f$durationSecs,
    #duration: _f$duration,
    #bitrate: _f$bitrate,
    #rating: _f$rating,
    #releasedate: _f$releasedate,
    #subtitles: _f$subtitles,
  };

  static XTremeCodeInfoVod _instantiate(DecodingData data) {
    return XTremeCodeInfoVod(
        kinopoiskUrl: data.dec(_f$kinopoiskUrl),
        tmdbId: data.dec(_f$tmdbId),
        name: data.dec(_f$name),
        oName: data.dec(_f$oName),
        coverBig: data.dec(_f$coverBig),
        movieImage: data.dec(_f$movieImage),
        releaseDate: data.dec(_f$releaseDate),
        episodeRunTime: data.dec(_f$episodeRunTime),
        youtubeTrailer: data.dec(_f$youtubeTrailer),
        director: data.dec(_f$director),
        actors: data.dec(_f$actors),
        cast: data.dec(_f$cast),
        description: data.dec(_f$description),
        plot: data.dec(_f$plot),
        age: data.dec(_f$age),
        mpaaRating: data.dec(_f$mpaaRating),
        ratingCountKinopoisk: data.dec(_f$ratingCountKinopoisk),
        country: data.dec(_f$country),
        genre: data.dec(_f$genre),
        backdropPath: data.dec(_f$backdropPath),
        durationSecs: data.dec(_f$durationSecs),
        duration: data.dec(_f$duration),
        bitrate: data.dec(_f$bitrate),
        rating: data.dec(_f$rating),
        releasedate: data.dec(_f$releasedate),
        subtitles: data.dec(_f$subtitles));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeInfoVod fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeInfoVod>(map);
  }

  static XTremeCodeInfoVod fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeInfoVod>(json);
  }
}

mixin XTremeCodeInfoVodMappable {
  String toJson() {
    return XTremeCodeInfoVodMapper.ensureInitialized()
        .encodeJson<XTremeCodeInfoVod>(this as XTremeCodeInfoVod);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeInfoVodMapper.ensureInitialized()
        .encodeMap<XTremeCodeInfoVod>(this as XTremeCodeInfoVod);
  }

  XTremeCodeInfoVodCopyWith<XTremeCodeInfoVod, XTremeCodeInfoVod,
          XTremeCodeInfoVod>
      get copyWith =>
          _XTremeCodeInfoVodCopyWithImpl<XTremeCodeInfoVod, XTremeCodeInfoVod>(
              this as XTremeCodeInfoVod, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeInfoVodMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeInfoVod);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeInfoVodMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeInfoVod, other);
  }

  @override
  int get hashCode {
    return XTremeCodeInfoVodMapper.ensureInitialized()
        .hashValue(this as XTremeCodeInfoVod);
  }
}

extension XTremeCodeInfoVodValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeInfoVod, $Out> {
  XTremeCodeInfoVodCopyWith<$R, XTremeCodeInfoVod, $Out>
      get $asXTremeCodeInfoVod => $base
          .as((v, t, t2) => _XTremeCodeInfoVodCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeInfoVodCopyWith<$R, $In extends XTremeCodeInfoVod,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get backdropPath;
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get subtitles;
  $R call(
      {String? kinopoiskUrl,
      int? tmdbId,
      String? name,
      String? oName,
      String? coverBig,
      String? movieImage,
      DateTime? releaseDate,
      int? episodeRunTime,
      String? youtubeTrailer,
      String? director,
      String? actors,
      String? cast,
      String? description,
      String? plot,
      String? age,
      String? mpaaRating,
      int? ratingCountKinopoisk,
      String? country,
      String? genre,
      List<String>? backdropPath,
      int? durationSecs,
      String? duration,
      int? bitrate,
      double? rating,
      DateTime? releasedate,
      List<dynamic>? subtitles});
  XTremeCodeInfoVodCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeInfoVodCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeInfoVod, $Out>
    implements XTremeCodeInfoVodCopyWith<$R, XTremeCodeInfoVod, $Out> {
  _XTremeCodeInfoVodCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeInfoVod> $mapper =
      XTremeCodeInfoVodMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get backdropPath => $value.backdropPath != null
          ? ListCopyWith(
              $value.backdropPath!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(backdropPath: v))
          : null;
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get subtitles => $value.subtitles != null
          ? ListCopyWith(
              $value.subtitles!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(subtitles: v))
          : null;
  @override
  $R call(
          {Object? kinopoiskUrl = $none,
          Object? tmdbId = $none,
          Object? name = $none,
          Object? oName = $none,
          Object? coverBig = $none,
          Object? movieImage = $none,
          Object? releaseDate = $none,
          Object? episodeRunTime = $none,
          Object? youtubeTrailer = $none,
          Object? director = $none,
          Object? actors = $none,
          Object? cast = $none,
          Object? description = $none,
          Object? plot = $none,
          Object? age = $none,
          Object? mpaaRating = $none,
          Object? ratingCountKinopoisk = $none,
          Object? country = $none,
          Object? genre = $none,
          Object? backdropPath = $none,
          Object? durationSecs = $none,
          Object? duration = $none,
          Object? bitrate = $none,
          Object? rating = $none,
          Object? releasedate = $none,
          Object? subtitles = $none}) =>
      $apply(FieldCopyWithData({
        if (kinopoiskUrl != $none) #kinopoiskUrl: kinopoiskUrl,
        if (tmdbId != $none) #tmdbId: tmdbId,
        if (name != $none) #name: name,
        if (oName != $none) #oName: oName,
        if (coverBig != $none) #coverBig: coverBig,
        if (movieImage != $none) #movieImage: movieImage,
        if (releaseDate != $none) #releaseDate: releaseDate,
        if (episodeRunTime != $none) #episodeRunTime: episodeRunTime,
        if (youtubeTrailer != $none) #youtubeTrailer: youtubeTrailer,
        if (director != $none) #director: director,
        if (actors != $none) #actors: actors,
        if (cast != $none) #cast: cast,
        if (description != $none) #description: description,
        if (plot != $none) #plot: plot,
        if (age != $none) #age: age,
        if (mpaaRating != $none) #mpaaRating: mpaaRating,
        if (ratingCountKinopoisk != $none)
          #ratingCountKinopoisk: ratingCountKinopoisk,
        if (country != $none) #country: country,
        if (genre != $none) #genre: genre,
        if (backdropPath != $none) #backdropPath: backdropPath,
        if (durationSecs != $none) #durationSecs: durationSecs,
        if (duration != $none) #duration: duration,
        if (bitrate != $none) #bitrate: bitrate,
        if (rating != $none) #rating: rating,
        if (releasedate != $none) #releasedate: releasedate,
        if (subtitles != $none) #subtitles: subtitles
      }));
  @override
  XTremeCodeInfoVod $make(CopyWithData data) => XTremeCodeInfoVod(
      kinopoiskUrl: data.get(#kinopoiskUrl, or: $value.kinopoiskUrl),
      tmdbId: data.get(#tmdbId, or: $value.tmdbId),
      name: data.get(#name, or: $value.name),
      oName: data.get(#oName, or: $value.oName),
      coverBig: data.get(#coverBig, or: $value.coverBig),
      movieImage: data.get(#movieImage, or: $value.movieImage),
      releaseDate: data.get(#releaseDate, or: $value.releaseDate),
      episodeRunTime: data.get(#episodeRunTime, or: $value.episodeRunTime),
      youtubeTrailer: data.get(#youtubeTrailer, or: $value.youtubeTrailer),
      director: data.get(#director, or: $value.director),
      actors: data.get(#actors, or: $value.actors),
      cast: data.get(#cast, or: $value.cast),
      description: data.get(#description, or: $value.description),
      plot: data.get(#plot, or: $value.plot),
      age: data.get(#age, or: $value.age),
      mpaaRating: data.get(#mpaaRating, or: $value.mpaaRating),
      ratingCountKinopoisk:
          data.get(#ratingCountKinopoisk, or: $value.ratingCountKinopoisk),
      country: data.get(#country, or: $value.country),
      genre: data.get(#genre, or: $value.genre),
      backdropPath: data.get(#backdropPath, or: $value.backdropPath),
      durationSecs: data.get(#durationSecs, or: $value.durationSecs),
      duration: data.get(#duration, or: $value.duration),
      bitrate: data.get(#bitrate, or: $value.bitrate),
      rating: data.get(#rating, or: $value.rating),
      releasedate: data.get(#releasedate, or: $value.releasedate),
      subtitles: data.get(#subtitles, or: $value.subtitles));

  @override
  XTremeCodeInfoVodCopyWith<$R2, XTremeCodeInfoVod, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _XTremeCodeInfoVodCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
