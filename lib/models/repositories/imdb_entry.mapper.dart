// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'imdb_entry.dart';

class ImdbEntryMapper extends ClassMapperBase<ImdbEntry> {
  ImdbEntryMapper._();

  static ImdbEntryMapper? _instance;
  static ImdbEntryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImdbEntryMapper._());
      ImdbImageMapper.ensureInitialized();
      ImdbRatingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImdbEntry';

  static String? _$id(ImdbEntry v) => v.id;
  static const Field<ImdbEntry, String> _f$id = Field('id', _$id, opt: true);
  static String? _$type(ImdbEntry v) => v.type;
  static const Field<ImdbEntry, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
  );
  static String? _$primaryTitle(ImdbEntry v) => v.primaryTitle;
  static const Field<ImdbEntry, String> _f$primaryTitle = Field(
    'primaryTitle',
    _$primaryTitle,
    opt: true,
  );
  static String? _$originalTitle(ImdbEntry v) => v.originalTitle;
  static const Field<ImdbEntry, String> _f$originalTitle = Field(
    'originalTitle',
    _$originalTitle,
    opt: true,
  );
  static ImdbImage? _$primaryImage(ImdbEntry v) => v.primaryImage;
  static const Field<ImdbEntry, ImdbImage> _f$primaryImage = Field(
    'primaryImage',
    _$primaryImage,
    opt: true,
  );
  static int? _$startYear(ImdbEntry v) => v.startYear;
  static const Field<ImdbEntry, int> _f$startYear = Field(
    'startYear',
    _$startYear,
    opt: true,
  );
  static int? _$endYear(ImdbEntry v) => v.endYear;
  static const Field<ImdbEntry, int> _f$endYear = Field(
    'endYear',
    _$endYear,
    opt: true,
  );
  static int? _$runtimeSeconds(ImdbEntry v) => v.runtimeSeconds;
  static const Field<ImdbEntry, int> _f$runtimeSeconds = Field(
    'runtimeSeconds',
    _$runtimeSeconds,
    opt: true,
  );
  static List<String>? _$genres(ImdbEntry v) => v.genres;
  static const Field<ImdbEntry, List<String>> _f$genres = Field(
    'genres',
    _$genres,
    opt: true,
  );
  static ImdbRating? _$rating(ImdbEntry v) => v.rating;
  static const Field<ImdbEntry, ImdbRating> _f$rating = Field(
    'rating',
    _$rating,
    opt: true,
  );
  static String? _$plot(ImdbEntry v) => v.plot;
  static const Field<ImdbEntry, String> _f$plot = Field(
    'plot',
    _$plot,
    opt: true,
  );

  @override
  final MappableFields<ImdbEntry> fields = const {
    #id: _f$id,
    #type: _f$type,
    #primaryTitle: _f$primaryTitle,
    #originalTitle: _f$originalTitle,
    #primaryImage: _f$primaryImage,
    #startYear: _f$startYear,
    #endYear: _f$endYear,
    #runtimeSeconds: _f$runtimeSeconds,
    #genres: _f$genres,
    #rating: _f$rating,
    #plot: _f$plot,
  };

  static ImdbEntry _instantiate(DecodingData data) {
    return ImdbEntry(
      id: data.dec(_f$id),
      type: data.dec(_f$type),
      primaryTitle: data.dec(_f$primaryTitle),
      originalTitle: data.dec(_f$originalTitle),
      primaryImage: data.dec(_f$primaryImage),
      startYear: data.dec(_f$startYear),
      endYear: data.dec(_f$endYear),
      runtimeSeconds: data.dec(_f$runtimeSeconds),
      genres: data.dec(_f$genres),
      rating: data.dec(_f$rating),
      plot: data.dec(_f$plot),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ImdbEntry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImdbEntry>(map);
  }

  static ImdbEntry fromJson(String json) {
    return ensureInitialized().decodeJson<ImdbEntry>(json);
  }
}

mixin ImdbEntryMappable {
  String toJson() {
    return ImdbEntryMapper.ensureInitialized().encodeJson<ImdbEntry>(
      this as ImdbEntry,
    );
  }

  Map<String, dynamic> toMap() {
    return ImdbEntryMapper.ensureInitialized().encodeMap<ImdbEntry>(
      this as ImdbEntry,
    );
  }

  ImdbEntryCopyWith<ImdbEntry, ImdbEntry, ImdbEntry> get copyWith =>
      _ImdbEntryCopyWithImpl<ImdbEntry, ImdbEntry>(
        this as ImdbEntry,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ImdbEntryMapper.ensureInitialized().stringifyValue(
      this as ImdbEntry,
    );
  }

  @override
  bool operator ==(Object other) {
    return ImdbEntryMapper.ensureInitialized().equalsValue(
      this as ImdbEntry,
      other,
    );
  }

  @override
  int get hashCode {
    return ImdbEntryMapper.ensureInitialized().hashValue(this as ImdbEntry);
  }
}

extension ImdbEntryValueCopy<$R, $Out> on ObjectCopyWith<$R, ImdbEntry, $Out> {
  ImdbEntryCopyWith<$R, ImdbEntry, $Out> get $asImdbEntry =>
      $base.as((v, t, t2) => _ImdbEntryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ImdbEntryCopyWith<$R, $In extends ImdbEntry, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ImdbImageCopyWith<$R, ImdbImage, ImdbImage>? get primaryImage;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get genres;
  ImdbRatingCopyWith<$R, ImdbRating, ImdbRating>? get rating;
  $R call({
    String? id,
    String? type,
    String? primaryTitle,
    String? originalTitle,
    ImdbImage? primaryImage,
    int? startYear,
    int? endYear,
    int? runtimeSeconds,
    List<String>? genres,
    ImdbRating? rating,
    String? plot,
  });
  ImdbEntryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImdbEntryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImdbEntry, $Out>
    implements ImdbEntryCopyWith<$R, ImdbEntry, $Out> {
  _ImdbEntryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImdbEntry> $mapper =
      ImdbEntryMapper.ensureInitialized();
  @override
  ImdbImageCopyWith<$R, ImdbImage, ImdbImage>? get primaryImage =>
      $value.primaryImage?.copyWith.$chain((v) => call(primaryImage: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get genres =>
      $value.genres != null
      ? ListCopyWith(
          $value.genres!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(genres: v),
        )
      : null;
  @override
  ImdbRatingCopyWith<$R, ImdbRating, ImdbRating>? get rating =>
      $value.rating?.copyWith.$chain((v) => call(rating: v));
  @override
  $R call({
    Object? id = $none,
    Object? type = $none,
    Object? primaryTitle = $none,
    Object? originalTitle = $none,
    Object? primaryImage = $none,
    Object? startYear = $none,
    Object? endYear = $none,
    Object? runtimeSeconds = $none,
    Object? genres = $none,
    Object? rating = $none,
    Object? plot = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (type != $none) #type: type,
      if (primaryTitle != $none) #primaryTitle: primaryTitle,
      if (originalTitle != $none) #originalTitle: originalTitle,
      if (primaryImage != $none) #primaryImage: primaryImage,
      if (startYear != $none) #startYear: startYear,
      if (endYear != $none) #endYear: endYear,
      if (runtimeSeconds != $none) #runtimeSeconds: runtimeSeconds,
      if (genres != $none) #genres: genres,
      if (rating != $none) #rating: rating,
      if (plot != $none) #plot: plot,
    }),
  );
  @override
  ImdbEntry $make(CopyWithData data) => ImdbEntry(
    id: data.get(#id, or: $value.id),
    type: data.get(#type, or: $value.type),
    primaryTitle: data.get(#primaryTitle, or: $value.primaryTitle),
    originalTitle: data.get(#originalTitle, or: $value.originalTitle),
    primaryImage: data.get(#primaryImage, or: $value.primaryImage),
    startYear: data.get(#startYear, or: $value.startYear),
    endYear: data.get(#endYear, or: $value.endYear),
    runtimeSeconds: data.get(#runtimeSeconds, or: $value.runtimeSeconds),
    genres: data.get(#genres, or: $value.genres),
    rating: data.get(#rating, or: $value.rating),
    plot: data.get(#plot, or: $value.plot),
  );

  @override
  ImdbEntryCopyWith<$R2, ImdbEntry, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImdbEntryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ImdbImageMapper extends ClassMapperBase<ImdbImage> {
  ImdbImageMapper._();

  static ImdbImageMapper? _instance;
  static ImdbImageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImdbImageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImdbImage';

  static String? _$url(ImdbImage v) => v.url;
  static const Field<ImdbImage, String> _f$url = Field('url', _$url, opt: true);
  static int? _$width(ImdbImage v) => v.width;
  static const Field<ImdbImage, int> _f$width = Field(
    'width',
    _$width,
    opt: true,
  );
  static int? _$height(ImdbImage v) => v.height;
  static const Field<ImdbImage, int> _f$height = Field(
    'height',
    _$height,
    opt: true,
  );
  static String? _$type(ImdbImage v) => v.type;
  static const Field<ImdbImage, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
  );

  @override
  final MappableFields<ImdbImage> fields = const {
    #url: _f$url,
    #width: _f$width,
    #height: _f$height,
    #type: _f$type,
  };

  static ImdbImage _instantiate(DecodingData data) {
    return ImdbImage(
      url: data.dec(_f$url),
      width: data.dec(_f$width),
      height: data.dec(_f$height),
      type: data.dec(_f$type),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ImdbImage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImdbImage>(map);
  }

  static ImdbImage fromJson(String json) {
    return ensureInitialized().decodeJson<ImdbImage>(json);
  }
}

mixin ImdbImageMappable {
  String toJson() {
    return ImdbImageMapper.ensureInitialized().encodeJson<ImdbImage>(
      this as ImdbImage,
    );
  }

  Map<String, dynamic> toMap() {
    return ImdbImageMapper.ensureInitialized().encodeMap<ImdbImage>(
      this as ImdbImage,
    );
  }

  ImdbImageCopyWith<ImdbImage, ImdbImage, ImdbImage> get copyWith =>
      _ImdbImageCopyWithImpl<ImdbImage, ImdbImage>(
        this as ImdbImage,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ImdbImageMapper.ensureInitialized().stringifyValue(
      this as ImdbImage,
    );
  }

  @override
  bool operator ==(Object other) {
    return ImdbImageMapper.ensureInitialized().equalsValue(
      this as ImdbImage,
      other,
    );
  }

  @override
  int get hashCode {
    return ImdbImageMapper.ensureInitialized().hashValue(this as ImdbImage);
  }
}

extension ImdbImageValueCopy<$R, $Out> on ObjectCopyWith<$R, ImdbImage, $Out> {
  ImdbImageCopyWith<$R, ImdbImage, $Out> get $asImdbImage =>
      $base.as((v, t, t2) => _ImdbImageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ImdbImageCopyWith<$R, $In extends ImdbImage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? url, int? width, int? height, String? type});
  ImdbImageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImdbImageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImdbImage, $Out>
    implements ImdbImageCopyWith<$R, ImdbImage, $Out> {
  _ImdbImageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImdbImage> $mapper =
      ImdbImageMapper.ensureInitialized();
  @override
  $R call({
    Object? url = $none,
    Object? width = $none,
    Object? height = $none,
    Object? type = $none,
  }) => $apply(
    FieldCopyWithData({
      if (url != $none) #url: url,
      if (width != $none) #width: width,
      if (height != $none) #height: height,
      if (type != $none) #type: type,
    }),
  );
  @override
  ImdbImage $make(CopyWithData data) => ImdbImage(
    url: data.get(#url, or: $value.url),
    width: data.get(#width, or: $value.width),
    height: data.get(#height, or: $value.height),
    type: data.get(#type, or: $value.type),
  );

  @override
  ImdbImageCopyWith<$R2, ImdbImage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImdbImageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ImdbRatingMapper extends ClassMapperBase<ImdbRating> {
  ImdbRatingMapper._();

  static ImdbRatingMapper? _instance;
  static ImdbRatingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImdbRatingMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImdbRating';

  static double? _$aggregateRating(ImdbRating v) => v.aggregateRating;
  static const Field<ImdbRating, double> _f$aggregateRating = Field(
    'aggregateRating',
    _$aggregateRating,
    opt: true,
  );
  static int? _$voteCount(ImdbRating v) => v.voteCount;
  static const Field<ImdbRating, int> _f$voteCount = Field(
    'voteCount',
    _$voteCount,
    opt: true,
  );

  @override
  final MappableFields<ImdbRating> fields = const {
    #aggregateRating: _f$aggregateRating,
    #voteCount: _f$voteCount,
  };

  static ImdbRating _instantiate(DecodingData data) {
    return ImdbRating(
      aggregateRating: data.dec(_f$aggregateRating),
      voteCount: data.dec(_f$voteCount),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ImdbRating fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImdbRating>(map);
  }

  static ImdbRating fromJson(String json) {
    return ensureInitialized().decodeJson<ImdbRating>(json);
  }
}

mixin ImdbRatingMappable {
  String toJson() {
    return ImdbRatingMapper.ensureInitialized().encodeJson<ImdbRating>(
      this as ImdbRating,
    );
  }

  Map<String, dynamic> toMap() {
    return ImdbRatingMapper.ensureInitialized().encodeMap<ImdbRating>(
      this as ImdbRating,
    );
  }

  ImdbRatingCopyWith<ImdbRating, ImdbRating, ImdbRating> get copyWith =>
      _ImdbRatingCopyWithImpl<ImdbRating, ImdbRating>(
        this as ImdbRating,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ImdbRatingMapper.ensureInitialized().stringifyValue(
      this as ImdbRating,
    );
  }

  @override
  bool operator ==(Object other) {
    return ImdbRatingMapper.ensureInitialized().equalsValue(
      this as ImdbRating,
      other,
    );
  }

  @override
  int get hashCode {
    return ImdbRatingMapper.ensureInitialized().hashValue(this as ImdbRating);
  }
}

extension ImdbRatingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImdbRating, $Out> {
  ImdbRatingCopyWith<$R, ImdbRating, $Out> get $asImdbRating =>
      $base.as((v, t, t2) => _ImdbRatingCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ImdbRatingCopyWith<$R, $In extends ImdbRating, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? aggregateRating, int? voteCount});
  ImdbRatingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImdbRatingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImdbRating, $Out>
    implements ImdbRatingCopyWith<$R, ImdbRating, $Out> {
  _ImdbRatingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImdbRating> $mapper =
      ImdbRatingMapper.ensureInitialized();
  @override
  $R call({Object? aggregateRating = $none, Object? voteCount = $none}) =>
      $apply(
        FieldCopyWithData({
          if (aggregateRating != $none) #aggregateRating: aggregateRating,
          if (voteCount != $none) #voteCount: voteCount,
        }),
      );
  @override
  ImdbRating $make(CopyWithData data) => ImdbRating(
    aggregateRating: data.get(#aggregateRating, or: $value.aggregateRating),
    voteCount: data.get(#voteCount, or: $value.voteCount),
  );

  @override
  ImdbRatingCopyWith<$R2, ImdbRating, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImdbRatingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ImdbInterestEntryMapper extends ClassMapperBase<ImdbInterestEntry> {
  ImdbInterestEntryMapper._();

  static ImdbInterestEntryMapper? _instance;
  static ImdbInterestEntryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImdbInterestEntryMapper._());
      ImdbImageMapper.ensureInitialized();
      ImdbInterestEntryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImdbInterestEntry';

  static String? _$id(ImdbInterestEntry v) => v.id;
  static const Field<ImdbInterestEntry, String> _f$id = Field(
    'id',
    _$id,
    opt: true,
  );
  static String? _$name(ImdbInterestEntry v) => v.name;
  static const Field<ImdbInterestEntry, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
  );
  static String? _$description(ImdbInterestEntry v) => v.description;
  static const Field<ImdbInterestEntry, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );
  static bool? _$isSubgenre(ImdbInterestEntry v) => v.isSubgenre;
  static const Field<ImdbInterestEntry, bool> _f$isSubgenre = Field(
    'isSubgenre',
    _$isSubgenre,
    opt: true,
  );
  static ImdbImage? _$primaryImage(ImdbInterestEntry v) => v.primaryImage;
  static const Field<ImdbInterestEntry, ImdbImage> _f$primaryImage = Field(
    'primaryImage',
    _$primaryImage,
    opt: true,
  );
  static List<ImdbInterestEntry>? _$similarInterests(ImdbInterestEntry v) =>
      v.similarInterests;
  static const Field<ImdbInterestEntry, List<ImdbInterestEntry>>
  _f$similarInterests = Field(
    'similarInterests',
    _$similarInterests,
    opt: true,
  );

  @override
  final MappableFields<ImdbInterestEntry> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
    #isSubgenre: _f$isSubgenre,
    #primaryImage: _f$primaryImage,
    #similarInterests: _f$similarInterests,
  };

  static ImdbInterestEntry _instantiate(DecodingData data) {
    return ImdbInterestEntry(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      isSubgenre: data.dec(_f$isSubgenre),
      primaryImage: data.dec(_f$primaryImage),
      similarInterests: data.dec(_f$similarInterests),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ImdbInterestEntry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImdbInterestEntry>(map);
  }

  static ImdbInterestEntry fromJson(String json) {
    return ensureInitialized().decodeJson<ImdbInterestEntry>(json);
  }
}

mixin ImdbInterestEntryMappable {
  String toJson() {
    return ImdbInterestEntryMapper.ensureInitialized()
        .encodeJson<ImdbInterestEntry>(this as ImdbInterestEntry);
  }

  Map<String, dynamic> toMap() {
    return ImdbInterestEntryMapper.ensureInitialized()
        .encodeMap<ImdbInterestEntry>(this as ImdbInterestEntry);
  }

  ImdbInterestEntryCopyWith<
    ImdbInterestEntry,
    ImdbInterestEntry,
    ImdbInterestEntry
  >
  get copyWith =>
      _ImdbInterestEntryCopyWithImpl<ImdbInterestEntry, ImdbInterestEntry>(
        this as ImdbInterestEntry,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ImdbInterestEntryMapper.ensureInitialized().stringifyValue(
      this as ImdbInterestEntry,
    );
  }

  @override
  bool operator ==(Object other) {
    return ImdbInterestEntryMapper.ensureInitialized().equalsValue(
      this as ImdbInterestEntry,
      other,
    );
  }

  @override
  int get hashCode {
    return ImdbInterestEntryMapper.ensureInitialized().hashValue(
      this as ImdbInterestEntry,
    );
  }
}

extension ImdbInterestEntryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImdbInterestEntry, $Out> {
  ImdbInterestEntryCopyWith<$R, ImdbInterestEntry, $Out>
  get $asImdbInterestEntry => $base.as(
    (v, t, t2) => _ImdbInterestEntryCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ImdbInterestEntryCopyWith<
  $R,
  $In extends ImdbInterestEntry,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ImdbImageCopyWith<$R, ImdbImage, ImdbImage>? get primaryImage;
  ListCopyWith<
    $R,
    ImdbInterestEntry,
    ImdbInterestEntryCopyWith<$R, ImdbInterestEntry, ImdbInterestEntry>
  >?
  get similarInterests;
  $R call({
    String? id,
    String? name,
    String? description,
    bool? isSubgenre,
    ImdbImage? primaryImage,
    List<ImdbInterestEntry>? similarInterests,
  });
  ImdbInterestEntryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ImdbInterestEntryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImdbInterestEntry, $Out>
    implements ImdbInterestEntryCopyWith<$R, ImdbInterestEntry, $Out> {
  _ImdbInterestEntryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImdbInterestEntry> $mapper =
      ImdbInterestEntryMapper.ensureInitialized();
  @override
  ImdbImageCopyWith<$R, ImdbImage, ImdbImage>? get primaryImage =>
      $value.primaryImage?.copyWith.$chain((v) => call(primaryImage: v));
  @override
  ListCopyWith<
    $R,
    ImdbInterestEntry,
    ImdbInterestEntryCopyWith<$R, ImdbInterestEntry, ImdbInterestEntry>
  >?
  get similarInterests => $value.similarInterests != null
      ? ListCopyWith(
          $value.similarInterests!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(similarInterests: v),
        )
      : null;
  @override
  $R call({
    Object? id = $none,
    Object? name = $none,
    Object? description = $none,
    Object? isSubgenre = $none,
    Object? primaryImage = $none,
    Object? similarInterests = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (name != $none) #name: name,
      if (description != $none) #description: description,
      if (isSubgenre != $none) #isSubgenre: isSubgenre,
      if (primaryImage != $none) #primaryImage: primaryImage,
      if (similarInterests != $none) #similarInterests: similarInterests,
    }),
  );
  @override
  ImdbInterestEntry $make(CopyWithData data) => ImdbInterestEntry(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    isSubgenre: data.get(#isSubgenre, or: $value.isSubgenre),
    primaryImage: data.get(#primaryImage, or: $value.primaryImage),
    similarInterests: data.get(#similarInterests, or: $value.similarInterests),
  );

  @override
  ImdbInterestEntryCopyWith<$R2, ImdbInterestEntry, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImdbInterestEntryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ImdbEpisodesEntryMapper extends ClassMapperBase<ImdbEpisodesEntry> {
  ImdbEpisodesEntryMapper._();

  static ImdbEpisodesEntryMapper? _instance;
  static ImdbEpisodesEntryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImdbEpisodesEntryMapper._());
      ImdbEpisodeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImdbEpisodesEntry';

  static List<ImdbEpisode>? _$episodes(ImdbEpisodesEntry v) => v.episodes;
  static const Field<ImdbEpisodesEntry, List<ImdbEpisode>> _f$episodes = Field(
    'episodes',
    _$episodes,
    opt: true,
  );
  static int? _$totalCount(ImdbEpisodesEntry v) => v.totalCount;
  static const Field<ImdbEpisodesEntry, int> _f$totalCount = Field(
    'totalCount',
    _$totalCount,
    opt: true,
  );

  @override
  final MappableFields<ImdbEpisodesEntry> fields = const {
    #episodes: _f$episodes,
    #totalCount: _f$totalCount,
  };

  static ImdbEpisodesEntry _instantiate(DecodingData data) {
    return ImdbEpisodesEntry(
      episodes: data.dec(_f$episodes),
      totalCount: data.dec(_f$totalCount),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ImdbEpisodesEntry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImdbEpisodesEntry>(map);
  }

  static ImdbEpisodesEntry fromJson(String json) {
    return ensureInitialized().decodeJson<ImdbEpisodesEntry>(json);
  }
}

mixin ImdbEpisodesEntryMappable {
  String toJson() {
    return ImdbEpisodesEntryMapper.ensureInitialized()
        .encodeJson<ImdbEpisodesEntry>(this as ImdbEpisodesEntry);
  }

  Map<String, dynamic> toMap() {
    return ImdbEpisodesEntryMapper.ensureInitialized()
        .encodeMap<ImdbEpisodesEntry>(this as ImdbEpisodesEntry);
  }

  ImdbEpisodesEntryCopyWith<
    ImdbEpisodesEntry,
    ImdbEpisodesEntry,
    ImdbEpisodesEntry
  >
  get copyWith =>
      _ImdbEpisodesEntryCopyWithImpl<ImdbEpisodesEntry, ImdbEpisodesEntry>(
        this as ImdbEpisodesEntry,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ImdbEpisodesEntryMapper.ensureInitialized().stringifyValue(
      this as ImdbEpisodesEntry,
    );
  }

  @override
  bool operator ==(Object other) {
    return ImdbEpisodesEntryMapper.ensureInitialized().equalsValue(
      this as ImdbEpisodesEntry,
      other,
    );
  }

  @override
  int get hashCode {
    return ImdbEpisodesEntryMapper.ensureInitialized().hashValue(
      this as ImdbEpisodesEntry,
    );
  }
}

extension ImdbEpisodesEntryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImdbEpisodesEntry, $Out> {
  ImdbEpisodesEntryCopyWith<$R, ImdbEpisodesEntry, $Out>
  get $asImdbEpisodesEntry => $base.as(
    (v, t, t2) => _ImdbEpisodesEntryCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ImdbEpisodesEntryCopyWith<
  $R,
  $In extends ImdbEpisodesEntry,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ImdbEpisode,
    ImdbEpisodeCopyWith<$R, ImdbEpisode, ImdbEpisode>
  >?
  get episodes;
  $R call({List<ImdbEpisode>? episodes, int? totalCount});
  ImdbEpisodesEntryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ImdbEpisodesEntryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImdbEpisodesEntry, $Out>
    implements ImdbEpisodesEntryCopyWith<$R, ImdbEpisodesEntry, $Out> {
  _ImdbEpisodesEntryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImdbEpisodesEntry> $mapper =
      ImdbEpisodesEntryMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ImdbEpisode,
    ImdbEpisodeCopyWith<$R, ImdbEpisode, ImdbEpisode>
  >?
  get episodes => $value.episodes != null
      ? ListCopyWith(
          $value.episodes!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(episodes: v),
        )
      : null;
  @override
  $R call({Object? episodes = $none, Object? totalCount = $none}) => $apply(
    FieldCopyWithData({
      if (episodes != $none) #episodes: episodes,
      if (totalCount != $none) #totalCount: totalCount,
    }),
  );
  @override
  ImdbEpisodesEntry $make(CopyWithData data) => ImdbEpisodesEntry(
    episodes: data.get(#episodes, or: $value.episodes),
    totalCount: data.get(#totalCount, or: $value.totalCount),
  );

  @override
  ImdbEpisodesEntryCopyWith<$R2, ImdbEpisodesEntry, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImdbEpisodesEntryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ImdbEpisodeMapper extends ClassMapperBase<ImdbEpisode> {
  ImdbEpisodeMapper._();

  static ImdbEpisodeMapper? _instance;
  static ImdbEpisodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImdbEpisodeMapper._());
      ImdbImageMapper.ensureInitialized();
      ImdbRatingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImdbEpisode';

  static String? _$id(ImdbEpisode v) => v.id;
  static const Field<ImdbEpisode, String> _f$id = Field('id', _$id, opt: true);
  static String? _$title(ImdbEpisode v) => v.title;
  static const Field<ImdbEpisode, String> _f$title = Field(
    'title',
    _$title,
    opt: true,
  );
  static ImdbImage? _$primaryImage(ImdbEpisode v) => v.primaryImage;
  static const Field<ImdbEpisode, ImdbImage> _f$primaryImage = Field(
    'primaryImage',
    _$primaryImage,
    opt: true,
  );
  static String? _$season(ImdbEpisode v) => v.season;
  static const Field<ImdbEpisode, String> _f$season = Field(
    'season',
    _$season,
    opt: true,
  );
  static int? _$episodeNumber(ImdbEpisode v) => v.episodeNumber;
  static const Field<ImdbEpisode, int> _f$episodeNumber = Field(
    'episodeNumber',
    _$episodeNumber,
    opt: true,
  );
  static int? _$runtimeSeconds(ImdbEpisode v) => v.runtimeSeconds;
  static const Field<ImdbEpisode, int> _f$runtimeSeconds = Field(
    'runtimeSeconds',
    _$runtimeSeconds,
    opt: true,
  );
  static String? _$plot(ImdbEpisode v) => v.plot;
  static const Field<ImdbEpisode, String> _f$plot = Field(
    'plot',
    _$plot,
    opt: true,
  );
  static ImdbRating? _$rating(ImdbEpisode v) => v.rating;
  static const Field<ImdbEpisode, ImdbRating> _f$rating = Field(
    'rating',
    _$rating,
    opt: true,
  );

  @override
  final MappableFields<ImdbEpisode> fields = const {
    #id: _f$id,
    #title: _f$title,
    #primaryImage: _f$primaryImage,
    #season: _f$season,
    #episodeNumber: _f$episodeNumber,
    #runtimeSeconds: _f$runtimeSeconds,
    #plot: _f$plot,
    #rating: _f$rating,
  };

  static ImdbEpisode _instantiate(DecodingData data) {
    return ImdbEpisode(
      id: data.dec(_f$id),
      title: data.dec(_f$title),
      primaryImage: data.dec(_f$primaryImage),
      season: data.dec(_f$season),
      episodeNumber: data.dec(_f$episodeNumber),
      runtimeSeconds: data.dec(_f$runtimeSeconds),
      plot: data.dec(_f$plot),
      rating: data.dec(_f$rating),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ImdbEpisode fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImdbEpisode>(map);
  }

  static ImdbEpisode fromJson(String json) {
    return ensureInitialized().decodeJson<ImdbEpisode>(json);
  }
}

mixin ImdbEpisodeMappable {
  String toJson() {
    return ImdbEpisodeMapper.ensureInitialized().encodeJson<ImdbEpisode>(
      this as ImdbEpisode,
    );
  }

  Map<String, dynamic> toMap() {
    return ImdbEpisodeMapper.ensureInitialized().encodeMap<ImdbEpisode>(
      this as ImdbEpisode,
    );
  }

  ImdbEpisodeCopyWith<ImdbEpisode, ImdbEpisode, ImdbEpisode> get copyWith =>
      _ImdbEpisodeCopyWithImpl<ImdbEpisode, ImdbEpisode>(
        this as ImdbEpisode,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ImdbEpisodeMapper.ensureInitialized().stringifyValue(
      this as ImdbEpisode,
    );
  }

  @override
  bool operator ==(Object other) {
    return ImdbEpisodeMapper.ensureInitialized().equalsValue(
      this as ImdbEpisode,
      other,
    );
  }

  @override
  int get hashCode {
    return ImdbEpisodeMapper.ensureInitialized().hashValue(this as ImdbEpisode);
  }
}

extension ImdbEpisodeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImdbEpisode, $Out> {
  ImdbEpisodeCopyWith<$R, ImdbEpisode, $Out> get $asImdbEpisode =>
      $base.as((v, t, t2) => _ImdbEpisodeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ImdbEpisodeCopyWith<$R, $In extends ImdbEpisode, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ImdbImageCopyWith<$R, ImdbImage, ImdbImage>? get primaryImage;
  ImdbRatingCopyWith<$R, ImdbRating, ImdbRating>? get rating;
  $R call({
    String? id,
    String? title,
    ImdbImage? primaryImage,
    String? season,
    int? episodeNumber,
    int? runtimeSeconds,
    String? plot,
    ImdbRating? rating,
  });
  ImdbEpisodeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImdbEpisodeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImdbEpisode, $Out>
    implements ImdbEpisodeCopyWith<$R, ImdbEpisode, $Out> {
  _ImdbEpisodeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImdbEpisode> $mapper =
      ImdbEpisodeMapper.ensureInitialized();
  @override
  ImdbImageCopyWith<$R, ImdbImage, ImdbImage>? get primaryImage =>
      $value.primaryImage?.copyWith.$chain((v) => call(primaryImage: v));
  @override
  ImdbRatingCopyWith<$R, ImdbRating, ImdbRating>? get rating =>
      $value.rating?.copyWith.$chain((v) => call(rating: v));
  @override
  $R call({
    Object? id = $none,
    Object? title = $none,
    Object? primaryImage = $none,
    Object? season = $none,
    Object? episodeNumber = $none,
    Object? runtimeSeconds = $none,
    Object? plot = $none,
    Object? rating = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (title != $none) #title: title,
      if (primaryImage != $none) #primaryImage: primaryImage,
      if (season != $none) #season: season,
      if (episodeNumber != $none) #episodeNumber: episodeNumber,
      if (runtimeSeconds != $none) #runtimeSeconds: runtimeSeconds,
      if (plot != $none) #plot: plot,
      if (rating != $none) #rating: rating,
    }),
  );
  @override
  ImdbEpisode $make(CopyWithData data) => ImdbEpisode(
    id: data.get(#id, or: $value.id),
    title: data.get(#title, or: $value.title),
    primaryImage: data.get(#primaryImage, or: $value.primaryImage),
    season: data.get(#season, or: $value.season),
    episodeNumber: data.get(#episodeNumber, or: $value.episodeNumber),
    runtimeSeconds: data.get(#runtimeSeconds, or: $value.runtimeSeconds),
    plot: data.get(#plot, or: $value.plot),
    rating: data.get(#rating, or: $value.rating),
  );

  @override
  ImdbEpisodeCopyWith<$R2, ImdbEpisode, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImdbEpisodeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

