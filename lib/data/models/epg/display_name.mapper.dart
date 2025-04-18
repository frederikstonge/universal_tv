// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'display_name.dart';

class DisplayNameMapper extends ClassMapperBase<DisplayName> {
  DisplayNameMapper._();

  static DisplayNameMapper? _instance;
  static DisplayNameMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DisplayNameMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DisplayName';

  static String _$value(DisplayName v) => v.value;
  static const Field<DisplayName, String> _f$value = Field('value', _$value);
  static String? _$lang(DisplayName v) => v.lang;
  static const Field<DisplayName, String> _f$lang =
      Field('lang', _$lang, opt: true);

  @override
  final MappableFields<DisplayName> fields = const {
    #value: _f$value,
    #lang: _f$lang,
  };

  static DisplayName _instantiate(DecodingData data) {
    return DisplayName(value: data.dec(_f$value), lang: data.dec(_f$lang));
  }

  @override
  final Function instantiate = _instantiate;

  static DisplayName fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DisplayName>(map);
  }

  static DisplayName fromJson(String json) {
    return ensureInitialized().decodeJson<DisplayName>(json);
  }
}

mixin DisplayNameMappable {
  String toJson() {
    return DisplayNameMapper.ensureInitialized()
        .encodeJson<DisplayName>(this as DisplayName);
  }

  Map<String, dynamic> toMap() {
    return DisplayNameMapper.ensureInitialized()
        .encodeMap<DisplayName>(this as DisplayName);
  }

  DisplayNameCopyWith<DisplayName, DisplayName, DisplayName> get copyWith =>
      _DisplayNameCopyWithImpl<DisplayName, DisplayName>(
          this as DisplayName, $identity, $identity);
  @override
  String toString() {
    return DisplayNameMapper.ensureInitialized()
        .stringifyValue(this as DisplayName);
  }

  @override
  bool operator ==(Object other) {
    return DisplayNameMapper.ensureInitialized()
        .equalsValue(this as DisplayName, other);
  }

  @override
  int get hashCode {
    return DisplayNameMapper.ensureInitialized().hashValue(this as DisplayName);
  }
}

extension DisplayNameValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DisplayName, $Out> {
  DisplayNameCopyWith<$R, DisplayName, $Out> get $asDisplayName =>
      $base.as((v, t, t2) => _DisplayNameCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DisplayNameCopyWith<$R, $In extends DisplayName, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, String? lang});
  DisplayNameCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DisplayNameCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DisplayName, $Out>
    implements DisplayNameCopyWith<$R, DisplayName, $Out> {
  _DisplayNameCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DisplayName> $mapper =
      DisplayNameMapper.ensureInitialized();
  @override
  $R call({String? value, Object? lang = $none}) => $apply(FieldCopyWithData(
      {if (value != null) #value: value, if (lang != $none) #lang: lang}));
  @override
  DisplayName $make(CopyWithData data) => DisplayName(
      value: data.get(#value, or: $value.value),
      lang: data.get(#lang, or: $value.lang));

  @override
  DisplayNameCopyWith<$R2, DisplayName, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DisplayNameCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
