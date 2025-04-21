// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'description.dart';

class DescriptionMapper extends ClassMapperBase<Description> {
  DescriptionMapper._();

  static DescriptionMapper? _instance;
  static DescriptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DescriptionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Description';

  static String _$value(Description v) => v.value;
  static const Field<Description, String> _f$value = Field('value', _$value);
  static String? _$lang(Description v) => v.lang;
  static const Field<Description, String> _f$lang =
      Field('lang', _$lang, opt: true);

  @override
  final MappableFields<Description> fields = const {
    #value: _f$value,
    #lang: _f$lang,
  };

  static Description _instantiate(DecodingData data) {
    return Description(value: data.dec(_f$value), lang: data.dec(_f$lang));
  }

  @override
  final Function instantiate = _instantiate;

  static Description fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Description>(map);
  }

  static Description fromJson(String json) {
    return ensureInitialized().decodeJson<Description>(json);
  }
}

mixin DescriptionMappable {
  String toJson() {
    return DescriptionMapper.ensureInitialized()
        .encodeJson<Description>(this as Description);
  }

  Map<String, dynamic> toMap() {
    return DescriptionMapper.ensureInitialized()
        .encodeMap<Description>(this as Description);
  }

  DescriptionCopyWith<Description, Description, Description> get copyWith =>
      _DescriptionCopyWithImpl<Description, Description>(
          this as Description, $identity, $identity);
  @override
  String toString() {
    return DescriptionMapper.ensureInitialized()
        .stringifyValue(this as Description);
  }

  @override
  bool operator ==(Object other) {
    return DescriptionMapper.ensureInitialized()
        .equalsValue(this as Description, other);
  }

  @override
  int get hashCode {
    return DescriptionMapper.ensureInitialized().hashValue(this as Description);
  }
}

extension DescriptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Description, $Out> {
  DescriptionCopyWith<$R, Description, $Out> get $asDescription =>
      $base.as((v, t, t2) => _DescriptionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DescriptionCopyWith<$R, $In extends Description, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, String? lang});
  DescriptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DescriptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Description, $Out>
    implements DescriptionCopyWith<$R, Description, $Out> {
  _DescriptionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Description> $mapper =
      DescriptionMapper.ensureInitialized();
  @override
  $R call({String? value, Object? lang = $none}) => $apply(FieldCopyWithData(
      {if (value != null) #value: value, if (lang != $none) #lang: lang}));
  @override
  Description $make(CopyWithData data) => Description(
      value: data.get(#value, or: $value.value),
      lang: data.get(#lang, or: $value.lang));

  @override
  DescriptionCopyWith<$R2, Description, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DescriptionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
