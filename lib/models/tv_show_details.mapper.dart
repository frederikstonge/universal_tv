// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tv_show_details.dart';

class TvShowDetailsMapper extends ClassMapperBase<TvShowDetails> {
  TvShowDetailsMapper._();

  static TvShowDetailsMapper? _instance;
  static TvShowDetailsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TvShowDetailsMapper._());
      EpisodeDetailsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TvShowDetails';

  static int _$seriesId(TvShowDetails v) => v.seriesId;
  static const Field<TvShowDetails, int> _f$seriesId = Field(
    'seriesId',
    _$seriesId,
  );
  static String _$name(TvShowDetails v) => v.name;
  static const Field<TvShowDetails, String> _f$name = Field('name', _$name);
  static String? _$plot(TvShowDetails v) => v.plot;
  static const Field<TvShowDetails, String> _f$plot = Field(
    'plot',
    _$plot,
    opt: true,
  );
  static Map<int, List<EpisodeDetails>> _$seasons(TvShowDetails v) => v.seasons;
  static const Field<TvShowDetails, Map<int, List<EpisodeDetails>>> _f$seasons =
      Field('seasons', _$seasons);
  static String? _$posterUrl(TvShowDetails v) => v.posterUrl;
  static const Field<TvShowDetails, String> _f$posterUrl = Field(
    'posterUrl',
    _$posterUrl,
    opt: true,
  );
  static String _$providerName(TvShowDetails v) => v.providerName;
  static const Field<TvShowDetails, String> _f$providerName = Field(
    'providerName',
    _$providerName,
  );

  @override
  final MappableFields<TvShowDetails> fields = const {
    #seriesId: _f$seriesId,
    #name: _f$name,
    #plot: _f$plot,
    #seasons: _f$seasons,
    #posterUrl: _f$posterUrl,
    #providerName: _f$providerName,
  };

  static TvShowDetails _instantiate(DecodingData data) {
    return TvShowDetails(
      seriesId: data.dec(_f$seriesId),
      name: data.dec(_f$name),
      plot: data.dec(_f$plot),
      seasons: data.dec(_f$seasons),
      posterUrl: data.dec(_f$posterUrl),
      providerName: data.dec(_f$providerName),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TvShowDetails fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TvShowDetails>(map);
  }

  static TvShowDetails fromJson(String json) {
    return ensureInitialized().decodeJson<TvShowDetails>(json);
  }
}

mixin TvShowDetailsMappable {
  String toJson() {
    return TvShowDetailsMapper.ensureInitialized().encodeJson<TvShowDetails>(
      this as TvShowDetails,
    );
  }

  Map<String, dynamic> toMap() {
    return TvShowDetailsMapper.ensureInitialized().encodeMap<TvShowDetails>(
      this as TvShowDetails,
    );
  }

  TvShowDetailsCopyWith<TvShowDetails, TvShowDetails, TvShowDetails>
  get copyWith => _TvShowDetailsCopyWithImpl<TvShowDetails, TvShowDetails>(
    this as TvShowDetails,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return TvShowDetailsMapper.ensureInitialized().stringifyValue(
      this as TvShowDetails,
    );
  }

  @override
  bool operator ==(Object other) {
    return TvShowDetailsMapper.ensureInitialized().equalsValue(
      this as TvShowDetails,
      other,
    );
  }

  @override
  int get hashCode {
    return TvShowDetailsMapper.ensureInitialized().hashValue(
      this as TvShowDetails,
    );
  }
}

extension TvShowDetailsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TvShowDetails, $Out> {
  TvShowDetailsCopyWith<$R, TvShowDetails, $Out> get $asTvShowDetails =>
      $base.as((v, t, t2) => _TvShowDetailsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TvShowDetailsCopyWith<$R, $In extends TvShowDetails, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<
    $R,
    int,
    List<EpisodeDetails>,
    ObjectCopyWith<$R, List<EpisodeDetails>, List<EpisodeDetails>>
  >
  get seasons;
  $R call({
    int? seriesId,
    String? name,
    String? plot,
    Map<int, List<EpisodeDetails>>? seasons,
    String? posterUrl,
    String? providerName,
  });
  TvShowDetailsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TvShowDetailsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TvShowDetails, $Out>
    implements TvShowDetailsCopyWith<$R, TvShowDetails, $Out> {
  _TvShowDetailsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TvShowDetails> $mapper =
      TvShowDetailsMapper.ensureInitialized();
  @override
  MapCopyWith<
    $R,
    int,
    List<EpisodeDetails>,
    ObjectCopyWith<$R, List<EpisodeDetails>, List<EpisodeDetails>>
  >
  get seasons => MapCopyWith(
    $value.seasons,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(seasons: v),
  );
  @override
  $R call({
    int? seriesId,
    String? name,
    Object? plot = $none,
    Map<int, List<EpisodeDetails>>? seasons,
    Object? posterUrl = $none,
    String? providerName,
  }) => $apply(
    FieldCopyWithData({
      if (seriesId != null) #seriesId: seriesId,
      if (name != null) #name: name,
      if (plot != $none) #plot: plot,
      if (seasons != null) #seasons: seasons,
      if (posterUrl != $none) #posterUrl: posterUrl,
      if (providerName != null) #providerName: providerName,
    }),
  );
  @override
  TvShowDetails $make(CopyWithData data) => TvShowDetails(
    seriesId: data.get(#seriesId, or: $value.seriesId),
    name: data.get(#name, or: $value.name),
    plot: data.get(#plot, or: $value.plot),
    seasons: data.get(#seasons, or: $value.seasons),
    posterUrl: data.get(#posterUrl, or: $value.posterUrl),
    providerName: data.get(#providerName, or: $value.providerName),
  );

  @override
  TvShowDetailsCopyWith<$R2, TvShowDetails, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TvShowDetailsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

