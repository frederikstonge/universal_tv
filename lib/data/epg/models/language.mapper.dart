// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'language.dart';

class LanguageMapper extends ClassMapperBase<Language> {
  LanguageMapper._();

  static LanguageMapper? _instance;
  static LanguageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LanguageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Language';

  static String _$value(Language v) => v.value;
  static const Field<Language, String> _f$value = Field('value', _$value);
  static String? _$lang(Language v) => v.lang;
  static const Field<Language, String> _f$lang =
      Field('lang', _$lang, opt: true);

  @override
  final MappableFields<Language> fields = const {
    #value: _f$value,
    #lang: _f$lang,
  };

  static Language _instantiate(DecodingData data) {
    return Language(value: data.dec(_f$value), lang: data.dec(_f$lang));
  }

  @override
  final Function instantiate = _instantiate;

  static Language fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Language>(map);
  }

  static Language fromJson(String json) {
    return ensureInitialized().decodeJson<Language>(json);
  }
}

mixin LanguageMappable {
  String toJson() {
    return LanguageMapper.ensureInitialized()
        .encodeJson<Language>(this as Language);
  }

  Map<String, dynamic> toMap() {
    return LanguageMapper.ensureInitialized()
        .encodeMap<Language>(this as Language);
  }

  LanguageCopyWith<Language, Language, Language> get copyWith =>
      _LanguageCopyWithImpl<Language, Language>(
          this as Language, $identity, $identity);
  @override
  String toString() {
    return LanguageMapper.ensureInitialized().stringifyValue(this as Language);
  }

  @override
  bool operator ==(Object other) {
    return LanguageMapper.ensureInitialized()
        .equalsValue(this as Language, other);
  }

  @override
  int get hashCode {
    return LanguageMapper.ensureInitialized().hashValue(this as Language);
  }
}

extension LanguageValueCopy<$R, $Out> on ObjectCopyWith<$R, Language, $Out> {
  LanguageCopyWith<$R, Language, $Out> get $asLanguage =>
      $base.as((v, t, t2) => _LanguageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LanguageCopyWith<$R, $In extends Language, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, String? lang});
  LanguageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LanguageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Language, $Out>
    implements LanguageCopyWith<$R, Language, $Out> {
  _LanguageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Language> $mapper =
      LanguageMapper.ensureInitialized();
  @override
  $R call({String? value, Object? lang = $none}) => $apply(FieldCopyWithData(
      {if (value != null) #value: value, if (lang != $none) #lang: lang}));
  @override
  Language $make(CopyWithData data) => Language(
      value: data.get(#value, or: $value.value),
      lang: data.get(#lang, or: $value.lang));

  @override
  LanguageCopyWith<$R2, Language, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LanguageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
