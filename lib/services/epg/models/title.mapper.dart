// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'title.dart';

class TitleMapper extends ClassMapperBase<Title> {
  TitleMapper._();

  static TitleMapper? _instance;
  static TitleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TitleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Title';

  static String _$value(Title v) => v.value;
  static const Field<Title, String> _f$value = Field('value', _$value);
  static String? _$lang(Title v) => v.lang;
  static const Field<Title, String> _f$lang = Field('lang', _$lang, opt: true);

  @override
  final MappableFields<Title> fields = const {
    #value: _f$value,
    #lang: _f$lang,
  };

  static Title _instantiate(DecodingData data) {
    return Title(value: data.dec(_f$value), lang: data.dec(_f$lang));
  }

  @override
  final Function instantiate = _instantiate;

  static Title fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Title>(map);
  }

  static Title fromJson(String json) {
    return ensureInitialized().decodeJson<Title>(json);
  }
}

mixin TitleMappable {
  String toJson() {
    return TitleMapper.ensureInitialized().encodeJson<Title>(this as Title);
  }

  Map<String, dynamic> toMap() {
    return TitleMapper.ensureInitialized().encodeMap<Title>(this as Title);
  }

  TitleCopyWith<Title, Title, Title> get copyWith =>
      _TitleCopyWithImpl<Title, Title>(this as Title, $identity, $identity);
  @override
  String toString() {
    return TitleMapper.ensureInitialized().stringifyValue(this as Title);
  }

  @override
  bool operator ==(Object other) {
    return TitleMapper.ensureInitialized().equalsValue(this as Title, other);
  }

  @override
  int get hashCode {
    return TitleMapper.ensureInitialized().hashValue(this as Title);
  }
}

extension TitleValueCopy<$R, $Out> on ObjectCopyWith<$R, Title, $Out> {
  TitleCopyWith<$R, Title, $Out> get $asTitle =>
      $base.as((v, t, t2) => _TitleCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TitleCopyWith<$R, $In extends Title, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, String? lang});
  TitleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TitleCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Title, $Out>
    implements TitleCopyWith<$R, Title, $Out> {
  _TitleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Title> $mapper = TitleMapper.ensureInitialized();
  @override
  $R call({String? value, Object? lang = $none}) => $apply(FieldCopyWithData(
      {if (value != null) #value: value, if (lang != $none) #lang: lang}));
  @override
  Title $make(CopyWithData data) => Title(
      value: data.get(#value, or: $value.value),
      lang: data.get(#lang, or: $value.lang));

  @override
  TitleCopyWith<$R2, Title, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TitleCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
