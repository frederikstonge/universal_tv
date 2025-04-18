// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'last_chance.dart';

class LastChanceMapper extends ClassMapperBase<LastChance> {
  LastChanceMapper._();

  static LastChanceMapper? _instance;
  static LastChanceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LastChanceMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LastChance';

  static String? _$value(LastChance v) => v.value;
  static const Field<LastChance, String> _f$value =
      Field('value', _$value, opt: true);
  static String? _$lang(LastChance v) => v.lang;
  static const Field<LastChance, String> _f$lang =
      Field('lang', _$lang, opt: true);

  @override
  final MappableFields<LastChance> fields = const {
    #value: _f$value,
    #lang: _f$lang,
  };

  static LastChance _instantiate(DecodingData data) {
    return LastChance(value: data.dec(_f$value), lang: data.dec(_f$lang));
  }

  @override
  final Function instantiate = _instantiate;

  static LastChance fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LastChance>(map);
  }

  static LastChance fromJson(String json) {
    return ensureInitialized().decodeJson<LastChance>(json);
  }
}

mixin LastChanceMappable {
  String toJson() {
    return LastChanceMapper.ensureInitialized()
        .encodeJson<LastChance>(this as LastChance);
  }

  Map<String, dynamic> toMap() {
    return LastChanceMapper.ensureInitialized()
        .encodeMap<LastChance>(this as LastChance);
  }

  LastChanceCopyWith<LastChance, LastChance, LastChance> get copyWith =>
      _LastChanceCopyWithImpl<LastChance, LastChance>(
          this as LastChance, $identity, $identity);
  @override
  String toString() {
    return LastChanceMapper.ensureInitialized()
        .stringifyValue(this as LastChance);
  }

  @override
  bool operator ==(Object other) {
    return LastChanceMapper.ensureInitialized()
        .equalsValue(this as LastChance, other);
  }

  @override
  int get hashCode {
    return LastChanceMapper.ensureInitialized().hashValue(this as LastChance);
  }
}

extension LastChanceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LastChance, $Out> {
  LastChanceCopyWith<$R, LastChance, $Out> get $asLastChance =>
      $base.as((v, t, t2) => _LastChanceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LastChanceCopyWith<$R, $In extends LastChance, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, String? lang});
  LastChanceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LastChanceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LastChance, $Out>
    implements LastChanceCopyWith<$R, LastChance, $Out> {
  _LastChanceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LastChance> $mapper =
      LastChanceMapper.ensureInitialized();
  @override
  $R call({Object? value = $none, Object? lang = $none}) =>
      $apply(FieldCopyWithData(
          {if (value != $none) #value: value, if (lang != $none) #lang: lang}));
  @override
  LastChance $make(CopyWithData data) => LastChance(
      value: data.get(#value, or: $value.value),
      lang: data.get(#lang, or: $value.lang));

  @override
  LastChanceCopyWith<$R2, LastChance, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LastChanceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
