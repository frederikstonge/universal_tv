// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'iptv_service_state.dart';

class IptvServiceStateMapper extends ClassMapperBase<IptvServiceState> {
  IptvServiceStateMapper._();

  static IptvServiceStateMapper? _instance;
  static IptvServiceStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IptvServiceStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'IptvServiceState';

  static List<BaseRepository> _$repositories(IptvServiceState v) =>
      v.repositories;
  static const Field<IptvServiceState, List<BaseRepository>> _f$repositories =
      Field('repositories', _$repositories, opt: true, def: const []);

  @override
  final MappableFields<IptvServiceState> fields = const {
    #repositories: _f$repositories,
  };

  static IptvServiceState _instantiate(DecodingData data) {
    return IptvServiceState(repositories: data.dec(_f$repositories));
  }

  @override
  final Function instantiate = _instantiate;

  static IptvServiceState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IptvServiceState>(map);
  }

  static IptvServiceState fromJson(String json) {
    return ensureInitialized().decodeJson<IptvServiceState>(json);
  }
}

mixin IptvServiceStateMappable {
  String toJson() {
    return IptvServiceStateMapper.ensureInitialized()
        .encodeJson<IptvServiceState>(this as IptvServiceState);
  }

  Map<String, dynamic> toMap() {
    return IptvServiceStateMapper.ensureInitialized()
        .encodeMap<IptvServiceState>(this as IptvServiceState);
  }

  IptvServiceStateCopyWith<IptvServiceState, IptvServiceState, IptvServiceState>
      get copyWith =>
          _IptvServiceStateCopyWithImpl<IptvServiceState, IptvServiceState>(
              this as IptvServiceState, $identity, $identity);
  @override
  String toString() {
    return IptvServiceStateMapper.ensureInitialized()
        .stringifyValue(this as IptvServiceState);
  }

  @override
  bool operator ==(Object other) {
    return IptvServiceStateMapper.ensureInitialized()
        .equalsValue(this as IptvServiceState, other);
  }

  @override
  int get hashCode {
    return IptvServiceStateMapper.ensureInitialized()
        .hashValue(this as IptvServiceState);
  }
}

extension IptvServiceStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IptvServiceState, $Out> {
  IptvServiceStateCopyWith<$R, IptvServiceState, $Out>
      get $asIptvServiceState => $base
          .as((v, t, t2) => _IptvServiceStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class IptvServiceStateCopyWith<$R, $In extends IptvServiceState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, BaseRepository,
      ObjectCopyWith<$R, BaseRepository, BaseRepository>> get repositories;
  $R call({List<BaseRepository>? repositories});
  IptvServiceStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _IptvServiceStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IptvServiceState, $Out>
    implements IptvServiceStateCopyWith<$R, IptvServiceState, $Out> {
  _IptvServiceStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IptvServiceState> $mapper =
      IptvServiceStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, BaseRepository,
          ObjectCopyWith<$R, BaseRepository, BaseRepository>>
      get repositories => ListCopyWith(
          $value.repositories,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(repositories: v));
  @override
  $R call({List<BaseRepository>? repositories}) => $apply(FieldCopyWithData(
      {if (repositories != null) #repositories: repositories}));
  @override
  IptvServiceState $make(CopyWithData data) => IptvServiceState(
      repositories: data.get(#repositories, or: $value.repositories));

  @override
  IptvServiceStateCopyWith<$R2, IptvServiceState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _IptvServiceStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
