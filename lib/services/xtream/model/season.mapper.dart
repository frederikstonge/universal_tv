// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'season.dart';

class SeasonMapper extends ClassMapperBase<Season> {
  SeasonMapper._();

  static SeasonMapper? _instance;
  static SeasonMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeasonMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Season';

  static int? _$id(Season v) => v.id;
  static const Field<Season, int> _f$id = Field('id', _$id);
  static DateTime? _$airDate(Season v) => v.airDate;
  static const Field<Season, DateTime> _f$airDate =
      Field('airDate', _$airDate, key: r'air_date', opt: true);
  static int? _$episodeCount(Season v) => v.episodeCount;
  static const Field<Season, int> _f$episodeCount =
      Field('episodeCount', _$episodeCount, key: r'episode_count', opt: true);
  static String? _$name(Season v) => v.name;
  static const Field<Season, String> _f$name = Field('name', _$name, opt: true);
  static String? _$overview(Season v) => v.overview;
  static const Field<Season, String> _f$overview =
      Field('overview', _$overview, opt: true);
  static int? _$seasonNumber(Season v) => v.seasonNumber;
  static const Field<Season, int> _f$seasonNumber =
      Field('seasonNumber', _$seasonNumber, key: r'season_number', opt: true);
  static double? _$voteAverage(Season v) => v.voteAverage;
  static const Field<Season, double> _f$voteAverage =
      Field('voteAverage', _$voteAverage, key: r'vote_average', opt: true);
  static String? _$cover(Season v) => v.cover;
  static const Field<Season, String> _f$cover =
      Field('cover', _$cover, opt: true);
  static String? _$coverBig(Season v) => v.coverBig;
  static const Field<Season, String> _f$coverBig =
      Field('coverBig', _$coverBig, key: r'cover_big', opt: true);

  @override
  final MappableFields<Season> fields = const {
    #id: _f$id,
    #airDate: _f$airDate,
    #episodeCount: _f$episodeCount,
    #name: _f$name,
    #overview: _f$overview,
    #seasonNumber: _f$seasonNumber,
    #voteAverage: _f$voteAverage,
    #cover: _f$cover,
    #coverBig: _f$coverBig,
  };

  static Season _instantiate(DecodingData data) {
    return Season(
        id: data.dec(_f$id),
        airDate: data.dec(_f$airDate),
        episodeCount: data.dec(_f$episodeCount),
        name: data.dec(_f$name),
        overview: data.dec(_f$overview),
        seasonNumber: data.dec(_f$seasonNumber),
        voteAverage: data.dec(_f$voteAverage),
        cover: data.dec(_f$cover),
        coverBig: data.dec(_f$coverBig));
  }

  @override
  final Function instantiate = _instantiate;

  static Season fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Season>(map);
  }

  static Season fromJson(String json) {
    return ensureInitialized().decodeJson<Season>(json);
  }
}

mixin SeasonMappable {
  String toJson() {
    return SeasonMapper.ensureInitialized().encodeJson<Season>(this as Season);
  }

  Map<String, dynamic> toMap() {
    return SeasonMapper.ensureInitialized().encodeMap<Season>(this as Season);
  }

  SeasonCopyWith<Season, Season, Season> get copyWith =>
      _SeasonCopyWithImpl<Season, Season>(this as Season, $identity, $identity);
  @override
  String toString() {
    return SeasonMapper.ensureInitialized().stringifyValue(this as Season);
  }

  @override
  bool operator ==(Object other) {
    return SeasonMapper.ensureInitialized().equalsValue(this as Season, other);
  }

  @override
  int get hashCode {
    return SeasonMapper.ensureInitialized().hashValue(this as Season);
  }
}

extension SeasonValueCopy<$R, $Out> on ObjectCopyWith<$R, Season, $Out> {
  SeasonCopyWith<$R, Season, $Out> get $asSeason =>
      $base.as((v, t, t2) => _SeasonCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SeasonCopyWith<$R, $In extends Season, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      DateTime? airDate,
      int? episodeCount,
      String? name,
      String? overview,
      int? seasonNumber,
      double? voteAverage,
      String? cover,
      String? coverBig});
  SeasonCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SeasonCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Season, $Out>
    implements SeasonCopyWith<$R, Season, $Out> {
  _SeasonCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Season> $mapper = SeasonMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? airDate = $none,
          Object? episodeCount = $none,
          Object? name = $none,
          Object? overview = $none,
          Object? seasonNumber = $none,
          Object? voteAverage = $none,
          Object? cover = $none,
          Object? coverBig = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (airDate != $none) #airDate: airDate,
        if (episodeCount != $none) #episodeCount: episodeCount,
        if (name != $none) #name: name,
        if (overview != $none) #overview: overview,
        if (seasonNumber != $none) #seasonNumber: seasonNumber,
        if (voteAverage != $none) #voteAverage: voteAverage,
        if (cover != $none) #cover: cover,
        if (coverBig != $none) #coverBig: coverBig
      }));
  @override
  Season $make(CopyWithData data) => Season(
      id: data.get(#id, or: $value.id),
      airDate: data.get(#airDate, or: $value.airDate),
      episodeCount: data.get(#episodeCount, or: $value.episodeCount),
      name: data.get(#name, or: $value.name),
      overview: data.get(#overview, or: $value.overview),
      seasonNumber: data.get(#seasonNumber, or: $value.seasonNumber),
      voteAverage: data.get(#voteAverage, or: $value.voteAverage),
      cover: data.get(#cover, or: $value.cover),
      coverBig: data.get(#coverBig, or: $value.coverBig));

  @override
  SeasonCopyWith<$R2, Season, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SeasonCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
