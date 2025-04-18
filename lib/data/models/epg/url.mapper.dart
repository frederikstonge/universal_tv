// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'url.dart';

class UrlMapper extends ClassMapperBase<Url> {
  UrlMapper._();

  static UrlMapper? _instance;
  static UrlMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UrlMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Url';

  static String _$value(Url v) => v.value;
  static const Field<Url, String> _f$value = Field('value', _$value);
  static String? _$system(Url v) => v.system;
  static const Field<Url, String> _f$system =
      Field('system', _$system, opt: true);

  @override
  final MappableFields<Url> fields = const {
    #value: _f$value,
    #system: _f$system,
  };

  static Url _instantiate(DecodingData data) {
    return Url(value: data.dec(_f$value), system: data.dec(_f$system));
  }

  @override
  final Function instantiate = _instantiate;

  static Url fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Url>(map);
  }

  static Url fromJson(String json) {
    return ensureInitialized().decodeJson<Url>(json);
  }
}

mixin UrlMappable {
  String toJson() {
    return UrlMapper.ensureInitialized().encodeJson<Url>(this as Url);
  }

  Map<String, dynamic> toMap() {
    return UrlMapper.ensureInitialized().encodeMap<Url>(this as Url);
  }

  UrlCopyWith<Url, Url, Url> get copyWith =>
      _UrlCopyWithImpl<Url, Url>(this as Url, $identity, $identity);
  @override
  String toString() {
    return UrlMapper.ensureInitialized().stringifyValue(this as Url);
  }

  @override
  bool operator ==(Object other) {
    return UrlMapper.ensureInitialized().equalsValue(this as Url, other);
  }

  @override
  int get hashCode {
    return UrlMapper.ensureInitialized().hashValue(this as Url);
  }
}

extension UrlValueCopy<$R, $Out> on ObjectCopyWith<$R, Url, $Out> {
  UrlCopyWith<$R, Url, $Out> get $asUrl =>
      $base.as((v, t, t2) => _UrlCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UrlCopyWith<$R, $In extends Url, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, String? system});
  UrlCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UrlCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Url, $Out>
    implements UrlCopyWith<$R, Url, $Out> {
  _UrlCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Url> $mapper = UrlMapper.ensureInitialized();
  @override
  $R call({String? value, Object? system = $none}) => $apply(FieldCopyWithData({
        if (value != null) #value: value,
        if (system != $none) #system: system
      }));
  @override
  Url $make(CopyWithData data) => Url(
      value: data.get(#value, or: $value.value),
      system: data.get(#system, or: $value.system));

  @override
  UrlCopyWith<$R2, Url, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UrlCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
