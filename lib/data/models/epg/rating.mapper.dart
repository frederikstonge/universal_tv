// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rating.dart';

class RatingMapper extends ClassMapperBase<Rating> {
  RatingMapper._();

  static RatingMapper? _instance;
  static RatingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RatingMapper._());
      IconMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Rating';

  static String _$value(Rating v) => v.value;
  static const Field<Rating, String> _f$value = Field('value', _$value);
  static List<Icon> _$icons(Rating v) => v.icons;
  static const Field<Rating, List<Icon>> _f$icons = Field('icons', _$icons);
  static String? _$system(Rating v) => v.system;
  static const Field<Rating, String> _f$system =
      Field('system', _$system, opt: true);

  @override
  final MappableFields<Rating> fields = const {
    #value: _f$value,
    #icons: _f$icons,
    #system: _f$system,
  };

  static Rating _instantiate(DecodingData data) {
    return Rating(
        value: data.dec(_f$value),
        icons: data.dec(_f$icons),
        system: data.dec(_f$system));
  }

  @override
  final Function instantiate = _instantiate;

  static Rating fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Rating>(map);
  }

  static Rating fromJson(String json) {
    return ensureInitialized().decodeJson<Rating>(json);
  }
}

mixin RatingMappable {
  String toJson() {
    return RatingMapper.ensureInitialized().encodeJson<Rating>(this as Rating);
  }

  Map<String, dynamic> toMap() {
    return RatingMapper.ensureInitialized().encodeMap<Rating>(this as Rating);
  }

  RatingCopyWith<Rating, Rating, Rating> get copyWith =>
      _RatingCopyWithImpl<Rating, Rating>(this as Rating, $identity, $identity);
  @override
  String toString() {
    return RatingMapper.ensureInitialized().stringifyValue(this as Rating);
  }

  @override
  bool operator ==(Object other) {
    return RatingMapper.ensureInitialized().equalsValue(this as Rating, other);
  }

  @override
  int get hashCode {
    return RatingMapper.ensureInitialized().hashValue(this as Rating);
  }
}

extension RatingValueCopy<$R, $Out> on ObjectCopyWith<$R, Rating, $Out> {
  RatingCopyWith<$R, Rating, $Out> get $asRating =>
      $base.as((v, t, t2) => _RatingCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RatingCopyWith<$R, $In extends Rating, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Icon, IconCopyWith<$R, Icon, Icon>> get icons;
  $R call({String? value, List<Icon>? icons, String? system});
  RatingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RatingCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Rating, $Out>
    implements RatingCopyWith<$R, Rating, $Out> {
  _RatingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Rating> $mapper = RatingMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Icon, IconCopyWith<$R, Icon, Icon>> get icons =>
      ListCopyWith(
          $value.icons, (v, t) => v.copyWith.$chain(t), (v) => call(icons: v));
  @override
  $R call({String? value, List<Icon>? icons, Object? system = $none}) =>
      $apply(FieldCopyWithData({
        if (value != null) #value: value,
        if (icons != null) #icons: icons,
        if (system != $none) #system: system
      }));
  @override
  Rating $make(CopyWithData data) => Rating(
      value: data.get(#value, or: $value.value),
      icons: data.get(#icons, or: $value.icons),
      system: data.get(#system, or: $value.system));

  @override
  RatingCopyWith<$R2, Rating, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RatingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
