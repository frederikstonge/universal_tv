// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'keyword.dart';

class KeywordMapper extends ClassMapperBase<Keyword> {
  KeywordMapper._();

  static KeywordMapper? _instance;
  static KeywordMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = KeywordMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Keyword';

  static String _$value(Keyword v) => v.value;
  static const Field<Keyword, String> _f$value = Field('value', _$value);
  static String? _$lang(Keyword v) => v.lang;
  static const Field<Keyword, String> _f$lang =
      Field('lang', _$lang, opt: true);

  @override
  final MappableFields<Keyword> fields = const {
    #value: _f$value,
    #lang: _f$lang,
  };

  static Keyword _instantiate(DecodingData data) {
    return Keyword(value: data.dec(_f$value), lang: data.dec(_f$lang));
  }

  @override
  final Function instantiate = _instantiate;

  static Keyword fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Keyword>(map);
  }

  static Keyword fromJson(String json) {
    return ensureInitialized().decodeJson<Keyword>(json);
  }
}

mixin KeywordMappable {
  String toJson() {
    return KeywordMapper.ensureInitialized()
        .encodeJson<Keyword>(this as Keyword);
  }

  Map<String, dynamic> toMap() {
    return KeywordMapper.ensureInitialized()
        .encodeMap<Keyword>(this as Keyword);
  }

  KeywordCopyWith<Keyword, Keyword, Keyword> get copyWith =>
      _KeywordCopyWithImpl<Keyword, Keyword>(
          this as Keyword, $identity, $identity);
  @override
  String toString() {
    return KeywordMapper.ensureInitialized().stringifyValue(this as Keyword);
  }

  @override
  bool operator ==(Object other) {
    return KeywordMapper.ensureInitialized()
        .equalsValue(this as Keyword, other);
  }

  @override
  int get hashCode {
    return KeywordMapper.ensureInitialized().hashValue(this as Keyword);
  }
}

extension KeywordValueCopy<$R, $Out> on ObjectCopyWith<$R, Keyword, $Out> {
  KeywordCopyWith<$R, Keyword, $Out> get $asKeyword =>
      $base.as((v, t, t2) => _KeywordCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class KeywordCopyWith<$R, $In extends Keyword, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, String? lang});
  KeywordCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _KeywordCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Keyword, $Out>
    implements KeywordCopyWith<$R, Keyword, $Out> {
  _KeywordCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Keyword> $mapper =
      KeywordMapper.ensureInitialized();
  @override
  $R call({String? value, Object? lang = $none}) => $apply(FieldCopyWithData(
      {if (value != null) #value: value, if (lang != $none) #lang: lang}));
  @override
  Keyword $make(CopyWithData data) => Keyword(
      value: data.get(#value, or: $value.value),
      lang: data.get(#lang, or: $value.lang));

  @override
  KeywordCopyWith<$R2, Keyword, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _KeywordCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
