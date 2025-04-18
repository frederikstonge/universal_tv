// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'episode_number.dart';

class EpisodeNumberMapper extends ClassMapperBase<EpisodeNumber> {
  EpisodeNumberMapper._();

  static EpisodeNumberMapper? _instance;
  static EpisodeNumberMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EpisodeNumberMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EpisodeNumber';

  static String _$value(EpisodeNumber v) => v.value;
  static const Field<EpisodeNumber, String> _f$value = Field('value', _$value);
  static String _$system(EpisodeNumber v) => v.system;
  static const Field<EpisodeNumber, String> _f$system =
      Field('system', _$system);

  @override
  final MappableFields<EpisodeNumber> fields = const {
    #value: _f$value,
    #system: _f$system,
  };

  static EpisodeNumber _instantiate(DecodingData data) {
    return EpisodeNumber(
        value: data.dec(_f$value), system: data.dec(_f$system));
  }

  @override
  final Function instantiate = _instantiate;

  static EpisodeNumber fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EpisodeNumber>(map);
  }

  static EpisodeNumber fromJson(String json) {
    return ensureInitialized().decodeJson<EpisodeNumber>(json);
  }
}

mixin EpisodeNumberMappable {
  String toJson() {
    return EpisodeNumberMapper.ensureInitialized()
        .encodeJson<EpisodeNumber>(this as EpisodeNumber);
  }

  Map<String, dynamic> toMap() {
    return EpisodeNumberMapper.ensureInitialized()
        .encodeMap<EpisodeNumber>(this as EpisodeNumber);
  }

  EpisodeNumberCopyWith<EpisodeNumber, EpisodeNumber, EpisodeNumber>
      get copyWith => _EpisodeNumberCopyWithImpl<EpisodeNumber, EpisodeNumber>(
          this as EpisodeNumber, $identity, $identity);
  @override
  String toString() {
    return EpisodeNumberMapper.ensureInitialized()
        .stringifyValue(this as EpisodeNumber);
  }

  @override
  bool operator ==(Object other) {
    return EpisodeNumberMapper.ensureInitialized()
        .equalsValue(this as EpisodeNumber, other);
  }

  @override
  int get hashCode {
    return EpisodeNumberMapper.ensureInitialized()
        .hashValue(this as EpisodeNumber);
  }
}

extension EpisodeNumberValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EpisodeNumber, $Out> {
  EpisodeNumberCopyWith<$R, EpisodeNumber, $Out> get $asEpisodeNumber =>
      $base.as((v, t, t2) => _EpisodeNumberCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EpisodeNumberCopyWith<$R, $In extends EpisodeNumber, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, String? system});
  EpisodeNumberCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EpisodeNumberCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EpisodeNumber, $Out>
    implements EpisodeNumberCopyWith<$R, EpisodeNumber, $Out> {
  _EpisodeNumberCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EpisodeNumber> $mapper =
      EpisodeNumberMapper.ensureInitialized();
  @override
  $R call({String? value, String? system}) => $apply(FieldCopyWithData(
      {if (value != null) #value: value, if (system != null) #system: system}));
  @override
  EpisodeNumber $make(CopyWithData data) => EpisodeNumber(
      value: data.get(#value, or: $value.value),
      system: data.get(#system, or: $value.system));

  @override
  EpisodeNumberCopyWith<$R2, EpisodeNumber, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EpisodeNumberCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
