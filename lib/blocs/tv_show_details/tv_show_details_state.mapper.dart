// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tv_show_details_state.dart';

class TvShowDetailsStateMapper extends ClassMapperBase<TvShowDetailsState> {
  TvShowDetailsStateMapper._();

  static TvShowDetailsStateMapper? _instance;
  static TvShowDetailsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TvShowDetailsStateMapper._());
      StateStatusMapper.ensureInitialized();
      TvShowDetailsMapper.ensureInitialized();
      EpisodeDetailsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TvShowDetailsState';

  static StateStatus _$status(TvShowDetailsState v) => v.status;
  static const Field<TvShowDetailsState, StateStatus> _f$status = Field(
    'status',
    _$status,
  );
  static TvShowDetails? _$tvShow(TvShowDetailsState v) => v.tvShow;
  static const Field<TvShowDetailsState, TvShowDetails> _f$tvShow = Field(
    'tvShow',
    _$tvShow,
    opt: true,
  );
  static int? _$selectedSeason(TvShowDetailsState v) => v.selectedSeason;
  static const Field<TvShowDetailsState, int> _f$selectedSeason = Field(
    'selectedSeason',
    _$selectedSeason,
    opt: true,
  );
  static EpisodeDetails? _$selectedEpisode(TvShowDetailsState v) =>
      v.selectedEpisode;
  static const Field<TvShowDetailsState, EpisodeDetails> _f$selectedEpisode =
      Field('selectedEpisode', _$selectedEpisode, opt: true);

  @override
  final MappableFields<TvShowDetailsState> fields = const {
    #status: _f$status,
    #tvShow: _f$tvShow,
    #selectedSeason: _f$selectedSeason,
    #selectedEpisode: _f$selectedEpisode,
  };

  static TvShowDetailsState _instantiate(DecodingData data) {
    return TvShowDetailsState(
      status: data.dec(_f$status),
      tvShow: data.dec(_f$tvShow),
      selectedSeason: data.dec(_f$selectedSeason),
      selectedEpisode: data.dec(_f$selectedEpisode),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TvShowDetailsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TvShowDetailsState>(map);
  }

  static TvShowDetailsState fromJson(String json) {
    return ensureInitialized().decodeJson<TvShowDetailsState>(json);
  }
}

mixin TvShowDetailsStateMappable {
  String toJson() {
    return TvShowDetailsStateMapper.ensureInitialized()
        .encodeJson<TvShowDetailsState>(this as TvShowDetailsState);
  }

  Map<String, dynamic> toMap() {
    return TvShowDetailsStateMapper.ensureInitialized()
        .encodeMap<TvShowDetailsState>(this as TvShowDetailsState);
  }

  TvShowDetailsStateCopyWith<
    TvShowDetailsState,
    TvShowDetailsState,
    TvShowDetailsState
  >
  get copyWith =>
      _TvShowDetailsStateCopyWithImpl<TvShowDetailsState, TvShowDetailsState>(
        this as TvShowDetailsState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TvShowDetailsStateMapper.ensureInitialized().stringifyValue(
      this as TvShowDetailsState,
    );
  }

  @override
  bool operator ==(Object other) {
    return TvShowDetailsStateMapper.ensureInitialized().equalsValue(
      this as TvShowDetailsState,
      other,
    );
  }

  @override
  int get hashCode {
    return TvShowDetailsStateMapper.ensureInitialized().hashValue(
      this as TvShowDetailsState,
    );
  }
}

extension TvShowDetailsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TvShowDetailsState, $Out> {
  TvShowDetailsStateCopyWith<$R, TvShowDetailsState, $Out>
  get $asTvShowDetailsState => $base.as(
    (v, t, t2) => _TvShowDetailsStateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class TvShowDetailsStateCopyWith<
  $R,
  $In extends TvShowDetailsState,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  TvShowDetailsCopyWith<$R, TvShowDetails, TvShowDetails>? get tvShow;
  EpisodeDetailsCopyWith<$R, EpisodeDetails, EpisodeDetails>?
  get selectedEpisode;
  $R call({
    StateStatus? status,
    TvShowDetails? tvShow,
    int? selectedSeason,
    EpisodeDetails? selectedEpisode,
  });
  TvShowDetailsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TvShowDetailsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TvShowDetailsState, $Out>
    implements TvShowDetailsStateCopyWith<$R, TvShowDetailsState, $Out> {
  _TvShowDetailsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TvShowDetailsState> $mapper =
      TvShowDetailsStateMapper.ensureInitialized();
  @override
  TvShowDetailsCopyWith<$R, TvShowDetails, TvShowDetails>? get tvShow =>
      $value.tvShow?.copyWith.$chain((v) => call(tvShow: v));
  @override
  EpisodeDetailsCopyWith<$R, EpisodeDetails, EpisodeDetails>?
  get selectedEpisode =>
      $value.selectedEpisode?.copyWith.$chain((v) => call(selectedEpisode: v));
  @override
  $R call({
    StateStatus? status,
    Object? tvShow = $none,
    Object? selectedSeason = $none,
    Object? selectedEpisode = $none,
  }) => $apply(
    FieldCopyWithData({
      if (status != null) #status: status,
      if (tvShow != $none) #tvShow: tvShow,
      if (selectedSeason != $none) #selectedSeason: selectedSeason,
      if (selectedEpisode != $none) #selectedEpisode: selectedEpisode,
    }),
  );
  @override
  TvShowDetailsState $make(CopyWithData data) => TvShowDetailsState(
    status: data.get(#status, or: $value.status),
    tvShow: data.get(#tvShow, or: $value.tvShow),
    selectedSeason: data.get(#selectedSeason, or: $value.selectedSeason),
    selectedEpisode: data.get(#selectedEpisode, or: $value.selectedEpisode),
  );

  @override
  TvShowDetailsStateCopyWith<$R2, TvShowDetailsState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TvShowDetailsStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

