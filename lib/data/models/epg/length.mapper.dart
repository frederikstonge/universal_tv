// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'length.dart';

class LengthMapper extends ClassMapperBase<Length> {
  LengthMapper._();

  static LengthMapper? _instance;
  static LengthMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LengthMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Length';

  static int _$value(Length v) => v.value;
  static const Field<Length, int> _f$value = Field('value', _$value);
  static String _$units(Length v) => v.units;
  static const Field<Length, String> _f$units = Field('units', _$units);

  @override
  final MappableFields<Length> fields = const {
    #value: _f$value,
    #units: _f$units,
  };

  static Length _instantiate(DecodingData data) {
    return Length(value: data.dec(_f$value), units: data.dec(_f$units));
  }

  @override
  final Function instantiate = _instantiate;

  static Length fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Length>(map);
  }

  static Length fromJson(String json) {
    return ensureInitialized().decodeJson<Length>(json);
  }
}

mixin LengthMappable {
  String toJson() {
    return LengthMapper.ensureInitialized().encodeJson<Length>(this as Length);
  }

  Map<String, dynamic> toMap() {
    return LengthMapper.ensureInitialized().encodeMap<Length>(this as Length);
  }

  LengthCopyWith<Length, Length, Length> get copyWith =>
      _LengthCopyWithImpl<Length, Length>(this as Length, $identity, $identity);
  @override
  String toString() {
    return LengthMapper.ensureInitialized().stringifyValue(this as Length);
  }

  @override
  bool operator ==(Object other) {
    return LengthMapper.ensureInitialized().equalsValue(this as Length, other);
  }

  @override
  int get hashCode {
    return LengthMapper.ensureInitialized().hashValue(this as Length);
  }
}

extension LengthValueCopy<$R, $Out> on ObjectCopyWith<$R, Length, $Out> {
  LengthCopyWith<$R, Length, $Out> get $asLength =>
      $base.as((v, t, t2) => _LengthCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LengthCopyWith<$R, $In extends Length, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? value, String? units});
  LengthCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LengthCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Length, $Out>
    implements LengthCopyWith<$R, Length, $Out> {
  _LengthCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Length> $mapper = LengthMapper.ensureInitialized();
  @override
  $R call({int? value, String? units}) => $apply(FieldCopyWithData(
      {if (value != null) #value: value, if (units != null) #units: units}));
  @override
  Length $make(CopyWithData data) => Length(
      value: data.get(#value, or: $value.value),
      units: data.get(#units, or: $value.units));

  @override
  LengthCopyWith<$R2, Length, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _LengthCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
