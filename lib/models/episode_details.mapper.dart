// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'episode_details.dart';

class EpisodeDetailsMapper extends ClassMapperBase<EpisodeDetails> {
  EpisodeDetailsMapper._();

  static EpisodeDetailsMapper? _instance;
  static EpisodeDetailsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EpisodeDetailsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EpisodeDetails';

  static int _$id(EpisodeDetails v) => v.id;
  static const Field<EpisodeDetails, int> _f$id = Field('id', _$id);
  static String _$title(EpisodeDetails v) => v.title;
  static const Field<EpisodeDetails, String> _f$title = Field('title', _$title);
  static int _$season(EpisodeDetails v) => v.season;
  static const Field<EpisodeDetails, int> _f$season = Field('season', _$season);
  static int _$episode(EpisodeDetails v) => v.episode;
  static const Field<EpisodeDetails, int> _f$episode = Field(
    'episode',
    _$episode,
  );
  static Duration? _$duration(EpisodeDetails v) => v.duration;
  static const Field<EpisodeDetails, Duration> _f$duration = Field(
    'duration',
    _$duration,
    opt: true,
  );
  static String? _$plot(EpisodeDetails v) => v.plot;
  static const Field<EpisodeDetails, String> _f$plot = Field(
    'plot',
    _$plot,
    opt: true,
  );
  static String _$providerName(EpisodeDetails v) => v.providerName;
  static const Field<EpisodeDetails, String> _f$providerName = Field(
    'providerName',
    _$providerName,
  );

  @override
  final MappableFields<EpisodeDetails> fields = const {
    #id: _f$id,
    #title: _f$title,
    #season: _f$season,
    #episode: _f$episode,
    #duration: _f$duration,
    #plot: _f$plot,
    #providerName: _f$providerName,
  };

  static EpisodeDetails _instantiate(DecodingData data) {
    return EpisodeDetails(
      id: data.dec(_f$id),
      title: data.dec(_f$title),
      season: data.dec(_f$season),
      episode: data.dec(_f$episode),
      duration: data.dec(_f$duration),
      plot: data.dec(_f$plot),
      providerName: data.dec(_f$providerName),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EpisodeDetails fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EpisodeDetails>(map);
  }

  static EpisodeDetails fromJson(String json) {
    return ensureInitialized().decodeJson<EpisodeDetails>(json);
  }
}

mixin EpisodeDetailsMappable {
  String toJson() {
    return EpisodeDetailsMapper.ensureInitialized().encodeJson<EpisodeDetails>(
      this as EpisodeDetails,
    );
  }

  Map<String, dynamic> toMap() {
    return EpisodeDetailsMapper.ensureInitialized().encodeMap<EpisodeDetails>(
      this as EpisodeDetails,
    );
  }

  EpisodeDetailsCopyWith<EpisodeDetails, EpisodeDetails, EpisodeDetails>
  get copyWith => _EpisodeDetailsCopyWithImpl<EpisodeDetails, EpisodeDetails>(
    this as EpisodeDetails,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return EpisodeDetailsMapper.ensureInitialized().stringifyValue(
      this as EpisodeDetails,
    );
  }

  @override
  bool operator ==(Object other) {
    return EpisodeDetailsMapper.ensureInitialized().equalsValue(
      this as EpisodeDetails,
      other,
    );
  }

  @override
  int get hashCode {
    return EpisodeDetailsMapper.ensureInitialized().hashValue(
      this as EpisodeDetails,
    );
  }
}

extension EpisodeDetailsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EpisodeDetails, $Out> {
  EpisodeDetailsCopyWith<$R, EpisodeDetails, $Out> get $asEpisodeDetails =>
      $base.as((v, t, t2) => _EpisodeDetailsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EpisodeDetailsCopyWith<$R, $In extends EpisodeDetails, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? title,
    int? season,
    int? episode,
    Duration? duration,
    String? plot,
    String? providerName,
  });
  EpisodeDetailsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EpisodeDetailsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EpisodeDetails, $Out>
    implements EpisodeDetailsCopyWith<$R, EpisodeDetails, $Out> {
  _EpisodeDetailsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EpisodeDetails> $mapper =
      EpisodeDetailsMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? title,
    int? season,
    int? episode,
    Object? duration = $none,
    Object? plot = $none,
    String? providerName,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (title != null) #title: title,
      if (season != null) #season: season,
      if (episode != null) #episode: episode,
      if (duration != $none) #duration: duration,
      if (plot != $none) #plot: plot,
      if (providerName != null) #providerName: providerName,
    }),
  );
  @override
  EpisodeDetails $make(CopyWithData data) => EpisodeDetails(
    id: data.get(#id, or: $value.id),
    title: data.get(#title, or: $value.title),
    season: data.get(#season, or: $value.season),
    episode: data.get(#episode, or: $value.episode),
    duration: data.get(#duration, or: $value.duration),
    plot: data.get(#plot, or: $value.plot),
    providerName: data.get(#providerName, or: $value.providerName),
  );

  @override
  EpisodeDetailsCopyWith<$R2, EpisodeDetails, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EpisodeDetailsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

