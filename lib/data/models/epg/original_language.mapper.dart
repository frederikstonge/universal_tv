// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'original_language.dart';

class OriginalLanguageMapper extends ClassMapperBase<OriginalLanguage> {
  OriginalLanguageMapper._();

  static OriginalLanguageMapper? _instance;
  static OriginalLanguageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OriginalLanguageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OriginalLanguage';

  static String _$value(OriginalLanguage v) => v.value;
  static const Field<OriginalLanguage, String> _f$value =
      Field('value', _$value);
  static String? _$lang(OriginalLanguage v) => v.lang;
  static const Field<OriginalLanguage, String> _f$lang =
      Field('lang', _$lang, opt: true);

  @override
  final MappableFields<OriginalLanguage> fields = const {
    #value: _f$value,
    #lang: _f$lang,
  };

  static OriginalLanguage _instantiate(DecodingData data) {
    return OriginalLanguage(value: data.dec(_f$value), lang: data.dec(_f$lang));
  }

  @override
  final Function instantiate = _instantiate;

  static OriginalLanguage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OriginalLanguage>(map);
  }

  static OriginalLanguage fromJson(String json) {
    return ensureInitialized().decodeJson<OriginalLanguage>(json);
  }
}

mixin OriginalLanguageMappable {
  String toJson() {
    return OriginalLanguageMapper.ensureInitialized()
        .encodeJson<OriginalLanguage>(this as OriginalLanguage);
  }

  Map<String, dynamic> toMap() {
    return OriginalLanguageMapper.ensureInitialized()
        .encodeMap<OriginalLanguage>(this as OriginalLanguage);
  }

  OriginalLanguageCopyWith<OriginalLanguage, OriginalLanguage, OriginalLanguage>
      get copyWith =>
          _OriginalLanguageCopyWithImpl<OriginalLanguage, OriginalLanguage>(
              this as OriginalLanguage, $identity, $identity);
  @override
  String toString() {
    return OriginalLanguageMapper.ensureInitialized()
        .stringifyValue(this as OriginalLanguage);
  }

  @override
  bool operator ==(Object other) {
    return OriginalLanguageMapper.ensureInitialized()
        .equalsValue(this as OriginalLanguage, other);
  }

  @override
  int get hashCode {
    return OriginalLanguageMapper.ensureInitialized()
        .hashValue(this as OriginalLanguage);
  }
}

extension OriginalLanguageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OriginalLanguage, $Out> {
  OriginalLanguageCopyWith<$R, OriginalLanguage, $Out>
      get $asOriginalLanguage => $base
          .as((v, t, t2) => _OriginalLanguageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OriginalLanguageCopyWith<$R, $In extends OriginalLanguage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, String? lang});
  OriginalLanguageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _OriginalLanguageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OriginalLanguage, $Out>
    implements OriginalLanguageCopyWith<$R, OriginalLanguage, $Out> {
  _OriginalLanguageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OriginalLanguage> $mapper =
      OriginalLanguageMapper.ensureInitialized();
  @override
  $R call({String? value, Object? lang = $none}) => $apply(FieldCopyWithData(
      {if (value != null) #value: value, if (lang != $none) #lang: lang}));
  @override
  OriginalLanguage $make(CopyWithData data) => OriginalLanguage(
      value: data.get(#value, or: $value.value),
      lang: data.get(#lang, or: $value.lang));

  @override
  OriginalLanguageCopyWith<$R2, OriginalLanguage, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OriginalLanguageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
