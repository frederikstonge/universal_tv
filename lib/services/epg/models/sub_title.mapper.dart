// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sub_title.dart';

class SubTitleMapper extends ClassMapperBase<SubTitle> {
  SubTitleMapper._();

  static SubTitleMapper? _instance;
  static SubTitleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SubTitleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SubTitle';

  static String _$value(SubTitle v) => v.value;
  static const Field<SubTitle, String> _f$value = Field('value', _$value);
  static String? _$lang(SubTitle v) => v.lang;
  static const Field<SubTitle, String> _f$lang =
      Field('lang', _$lang, opt: true);

  @override
  final MappableFields<SubTitle> fields = const {
    #value: _f$value,
    #lang: _f$lang,
  };

  static SubTitle _instantiate(DecodingData data) {
    return SubTitle(value: data.dec(_f$value), lang: data.dec(_f$lang));
  }

  @override
  final Function instantiate = _instantiate;

  static SubTitle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SubTitle>(map);
  }

  static SubTitle fromJson(String json) {
    return ensureInitialized().decodeJson<SubTitle>(json);
  }
}

mixin SubTitleMappable {
  String toJson() {
    return SubTitleMapper.ensureInitialized()
        .encodeJson<SubTitle>(this as SubTitle);
  }

  Map<String, dynamic> toMap() {
    return SubTitleMapper.ensureInitialized()
        .encodeMap<SubTitle>(this as SubTitle);
  }

  SubTitleCopyWith<SubTitle, SubTitle, SubTitle> get copyWith =>
      _SubTitleCopyWithImpl<SubTitle, SubTitle>(
          this as SubTitle, $identity, $identity);
  @override
  String toString() {
    return SubTitleMapper.ensureInitialized().stringifyValue(this as SubTitle);
  }

  @override
  bool operator ==(Object other) {
    return SubTitleMapper.ensureInitialized()
        .equalsValue(this as SubTitle, other);
  }

  @override
  int get hashCode {
    return SubTitleMapper.ensureInitialized().hashValue(this as SubTitle);
  }
}

extension SubTitleValueCopy<$R, $Out> on ObjectCopyWith<$R, SubTitle, $Out> {
  SubTitleCopyWith<$R, SubTitle, $Out> get $asSubTitle =>
      $base.as((v, t, t2) => _SubTitleCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SubTitleCopyWith<$R, $In extends SubTitle, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, String? lang});
  SubTitleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SubTitleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SubTitle, $Out>
    implements SubTitleCopyWith<$R, SubTitle, $Out> {
  _SubTitleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SubTitle> $mapper =
      SubTitleMapper.ensureInitialized();
  @override
  $R call({String? value, Object? lang = $none}) => $apply(FieldCopyWithData(
      {if (value != null) #value: value, if (lang != $none) #lang: lang}));
  @override
  SubTitle $make(CopyWithData data) => SubTitle(
      value: data.get(#value, or: $value.value),
      lang: data.get(#lang, or: $value.lang));

  @override
  SubTitleCopyWith<$R2, SubTitle, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SubTitleCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
