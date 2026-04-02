// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'cast_state.dart';

class CastStateMapper extends ClassMapperBase<CastState> {
  CastStateMapper._();

  static CastStateMapper? _instance;
  static CastStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CastStateMapper._());
      StateStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CastState';

  static StateStatus _$status(CastState v) => v.status;
  static const Field<CastState, StateStatus> _f$status = Field(
    'status',
    _$status,
  );
  static List<CastDevice> _$devices(CastState v) => v.devices;
  static const Field<CastState, List<CastDevice>> _f$devices = Field(
    'devices',
    _$devices,
    opt: true,
    def: const [],
  );
  static CastDevice? _$selectedDevice(CastState v) => v.selectedDevice;
  static const Field<CastState, CastDevice> _f$selectedDevice = Field(
    'selectedDevice',
    _$selectedDevice,
    opt: true,
  );
  static CastSession? _$session(CastState v) => v.session;
  static const Field<CastState, CastSession> _f$session = Field(
    'session',
    _$session,
    opt: true,
  );

  @override
  final MappableFields<CastState> fields = const {
    #status: _f$status,
    #devices: _f$devices,
    #selectedDevice: _f$selectedDevice,
    #session: _f$session,
  };

  static CastState _instantiate(DecodingData data) {
    return CastState(
      status: data.dec(_f$status),
      devices: data.dec(_f$devices),
      selectedDevice: data.dec(_f$selectedDevice),
      session: data.dec(_f$session),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CastState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CastState>(map);
  }

  static CastState fromJson(String json) {
    return ensureInitialized().decodeJson<CastState>(json);
  }
}

mixin CastStateMappable {
  String toJson() {
    return CastStateMapper.ensureInitialized().encodeJson<CastState>(
      this as CastState,
    );
  }

  Map<String, dynamic> toMap() {
    return CastStateMapper.ensureInitialized().encodeMap<CastState>(
      this as CastState,
    );
  }

  CastStateCopyWith<CastState, CastState, CastState> get copyWith =>
      _CastStateCopyWithImpl<CastState, CastState>(
        this as CastState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CastStateMapper.ensureInitialized().stringifyValue(
      this as CastState,
    );
  }

  @override
  bool operator ==(Object other) {
    return CastStateMapper.ensureInitialized().equalsValue(
      this as CastState,
      other,
    );
  }

  @override
  int get hashCode {
    return CastStateMapper.ensureInitialized().hashValue(this as CastState);
  }
}

extension CastStateValueCopy<$R, $Out> on ObjectCopyWith<$R, CastState, $Out> {
  CastStateCopyWith<$R, CastState, $Out> get $asCastState =>
      $base.as((v, t, t2) => _CastStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CastStateCopyWith<$R, $In extends CastState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, CastDevice, ObjectCopyWith<$R, CastDevice, CastDevice>>
  get devices;
  $R call({
    StateStatus? status,
    List<CastDevice>? devices,
    CastDevice? selectedDevice,
    CastSession? session,
  });
  CastStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CastStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CastState, $Out>
    implements CastStateCopyWith<$R, CastState, $Out> {
  _CastStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CastState> $mapper =
      CastStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, CastDevice, ObjectCopyWith<$R, CastDevice, CastDevice>>
  get devices => ListCopyWith(
    $value.devices,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(devices: v),
  );
  @override
  $R call({
    StateStatus? status,
    List<CastDevice>? devices,
    Object? selectedDevice = $none,
    Object? session = $none,
  }) => $apply(
    FieldCopyWithData({
      if (status != null) #status: status,
      if (devices != null) #devices: devices,
      if (selectedDevice != $none) #selectedDevice: selectedDevice,
      if (session != $none) #session: session,
    }),
  );
  @override
  CastState $make(CopyWithData data) => CastState(
    status: data.get(#status, or: $value.status),
    devices: data.get(#devices, or: $value.devices),
    selectedDevice: data.get(#selectedDevice, or: $value.selectedDevice),
    session: data.get(#session, or: $value.session),
  );

  @override
  CastStateCopyWith<$R2, CastState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CastStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

