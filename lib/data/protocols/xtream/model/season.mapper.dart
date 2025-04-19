// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'season.dart';

class XTremeCodeSeasonMapper extends ClassMapperBase<XTremeCodeSeason> {
  XTremeCodeSeasonMapper._();

  static XTremeCodeSeasonMapper? _instance;
  static XTremeCodeSeasonMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeSeasonMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeSeason';

  static int? _$id(XTremeCodeSeason v) => v.id;
  static const Field<XTremeCodeSeason, int> _f$id = Field('id', _$id);
  static DateTime? _$airDate(XTremeCodeSeason v) => v.airDate;
  static const Field<XTremeCodeSeason, DateTime> _f$airDate =
      Field('airDate', _$airDate, key: r'air_date', opt: true);
  static int? _$episodeCount(XTremeCodeSeason v) => v.episodeCount;
  static const Field<XTremeCodeSeason, int> _f$episodeCount =
      Field('episodeCount', _$episodeCount, key: r'episode_count', opt: true);
  static String? _$name(XTremeCodeSeason v) => v.name;
  static const Field<XTremeCodeSeason, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$overview(XTremeCodeSeason v) => v.overview;
  static const Field<XTremeCodeSeason, String> _f$overview =
      Field('overview', _$overview, opt: true);
  static int? _$seasonNumber(XTremeCodeSeason v) => v.seasonNumber;
  static const Field<XTremeCodeSeason, int> _f$seasonNumber =
      Field('seasonNumber', _$seasonNumber, key: r'season_number', opt: true);
  static double? _$voteAverage(XTremeCodeSeason v) => v.voteAverage;
  static const Field<XTremeCodeSeason, double> _f$voteAverage =
      Field('voteAverage', _$voteAverage, key: r'vote_average', opt: true);
  static String? _$cover(XTremeCodeSeason v) => v.cover;
  static const Field<XTremeCodeSeason, String> _f$cover =
      Field('cover', _$cover, opt: true);
  static String? _$coverBig(XTremeCodeSeason v) => v.coverBig;
  static const Field<XTremeCodeSeason, String> _f$coverBig =
      Field('coverBig', _$coverBig, key: r'cover_big', opt: true);

  @override
  final MappableFields<XTremeCodeSeason> fields = const {
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

  static XTremeCodeSeason _instantiate(DecodingData data) {
    return XTremeCodeSeason(
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

  static XTremeCodeSeason fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeSeason>(map);
  }

  static XTremeCodeSeason fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeSeason>(json);
  }
}

mixin XTremeCodeSeasonMappable {
  String toJson() {
    return XTremeCodeSeasonMapper.ensureInitialized()
        .encodeJson<XTremeCodeSeason>(this as XTremeCodeSeason);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeSeasonMapper.ensureInitialized()
        .encodeMap<XTremeCodeSeason>(this as XTremeCodeSeason);
  }

  XTremeCodeSeasonCopyWith<XTremeCodeSeason, XTremeCodeSeason, XTremeCodeSeason>
      get copyWith =>
          _XTremeCodeSeasonCopyWithImpl<XTremeCodeSeason, XTremeCodeSeason>(
              this as XTremeCodeSeason, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeSeasonMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeSeason);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeSeasonMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeSeason, other);
  }

  @override
  int get hashCode {
    return XTremeCodeSeasonMapper.ensureInitialized()
        .hashValue(this as XTremeCodeSeason);
  }
}

extension XTremeCodeSeasonValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeSeason, $Out> {
  XTremeCodeSeasonCopyWith<$R, XTremeCodeSeason, $Out>
      get $asXTremeCodeSeason => $base
          .as((v, t, t2) => _XTremeCodeSeasonCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeSeasonCopyWith<$R, $In extends XTremeCodeSeason, $Out>
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
  XTremeCodeSeasonCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeSeasonCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeSeason, $Out>
    implements XTremeCodeSeasonCopyWith<$R, XTremeCodeSeason, $Out> {
  _XTremeCodeSeasonCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeSeason> $mapper =
      XTremeCodeSeasonMapper.ensureInitialized();
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
  XTremeCodeSeason $make(CopyWithData data) => XTremeCodeSeason(
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
  XTremeCodeSeasonCopyWith<$R2, XTremeCodeSeason, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _XTremeCodeSeasonCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
