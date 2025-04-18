// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'premiere.dart';

class PremiereMapper extends ClassMapperBase<Premiere> {
  PremiereMapper._();

  static PremiereMapper? _instance;
  static PremiereMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PremiereMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Premiere';

  static String? _$value(Premiere v) => v.value;
  static const Field<Premiere, String> _f$value =
      Field('value', _$value, opt: true);
  static String? _$lang(Premiere v) => v.lang;
  static const Field<Premiere, String> _f$lang =
      Field('lang', _$lang, opt: true);

  @override
  final MappableFields<Premiere> fields = const {
    #value: _f$value,
    #lang: _f$lang,
  };

  static Premiere _instantiate(DecodingData data) {
    return Premiere(value: data.dec(_f$value), lang: data.dec(_f$lang));
  }

  @override
  final Function instantiate = _instantiate;

  static Premiere fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Premiere>(map);
  }

  static Premiere fromJson(String json) {
    return ensureInitialized().decodeJson<Premiere>(json);
  }
}

mixin PremiereMappable {
  String toJson() {
    return PremiereMapper.ensureInitialized()
        .encodeJson<Premiere>(this as Premiere);
  }

  Map<String, dynamic> toMap() {
    return PremiereMapper.ensureInitialized()
        .encodeMap<Premiere>(this as Premiere);
  }

  PremiereCopyWith<Premiere, Premiere, Premiere> get copyWith =>
      _PremiereCopyWithImpl<Premiere, Premiere>(
          this as Premiere, $identity, $identity);
  @override
  String toString() {
    return PremiereMapper.ensureInitialized().stringifyValue(this as Premiere);
  }

  @override
  bool operator ==(Object other) {
    return PremiereMapper.ensureInitialized()
        .equalsValue(this as Premiere, other);
  }

  @override
  int get hashCode {
    return PremiereMapper.ensureInitialized().hashValue(this as Premiere);
  }
}

extension PremiereValueCopy<$R, $Out> on ObjectCopyWith<$R, Premiere, $Out> {
  PremiereCopyWith<$R, Premiere, $Out> get $asPremiere =>
      $base.as((v, t, t2) => _PremiereCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PremiereCopyWith<$R, $In extends Premiere, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, String? lang});
  PremiereCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PremiereCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Premiere, $Out>
    implements PremiereCopyWith<$R, Premiere, $Out> {
  _PremiereCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Premiere> $mapper =
      PremiereMapper.ensureInitialized();
  @override
  $R call({Object? value = $none, Object? lang = $none}) =>
      $apply(FieldCopyWithData(
          {if (value != $none) #value: value, if (lang != $none) #lang: lang}));
  @override
  Premiere $make(CopyWithData data) => Premiere(
      value: data.get(#value, or: $value.value),
      lang: data.get(#lang, or: $value.lang));

  @override
  PremiereCopyWith<$R2, Premiere, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PremiereCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
