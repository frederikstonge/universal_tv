// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'star_rating.dart';

class StarRatingMapper extends ClassMapperBase<StarRating> {
  StarRatingMapper._();

  static StarRatingMapper? _instance;
  static StarRatingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StarRatingMapper._());
      IconMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'StarRating';

  static String _$value(StarRating v) => v.value;
  static const Field<StarRating, String> _f$value = Field('value', _$value);
  static List<Icon> _$icons(StarRating v) => v.icons;
  static const Field<StarRating, List<Icon>> _f$icons = Field('icons', _$icons);
  static String? _$system(StarRating v) => v.system;
  static const Field<StarRating, String> _f$system =
      Field('system', _$system, opt: true);

  @override
  final MappableFields<StarRating> fields = const {
    #value: _f$value,
    #icons: _f$icons,
    #system: _f$system,
  };

  static StarRating _instantiate(DecodingData data) {
    return StarRating(
        value: data.dec(_f$value),
        icons: data.dec(_f$icons),
        system: data.dec(_f$system));
  }

  @override
  final Function instantiate = _instantiate;

  static StarRating fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StarRating>(map);
  }

  static StarRating fromJson(String json) {
    return ensureInitialized().decodeJson<StarRating>(json);
  }
}

mixin StarRatingMappable {
  String toJson() {
    return StarRatingMapper.ensureInitialized()
        .encodeJson<StarRating>(this as StarRating);
  }

  Map<String, dynamic> toMap() {
    return StarRatingMapper.ensureInitialized()
        .encodeMap<StarRating>(this as StarRating);
  }

  StarRatingCopyWith<StarRating, StarRating, StarRating> get copyWith =>
      _StarRatingCopyWithImpl<StarRating, StarRating>(
          this as StarRating, $identity, $identity);
  @override
  String toString() {
    return StarRatingMapper.ensureInitialized()
        .stringifyValue(this as StarRating);
  }

  @override
  bool operator ==(Object other) {
    return StarRatingMapper.ensureInitialized()
        .equalsValue(this as StarRating, other);
  }

  @override
  int get hashCode {
    return StarRatingMapper.ensureInitialized().hashValue(this as StarRating);
  }
}

extension StarRatingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StarRating, $Out> {
  StarRatingCopyWith<$R, StarRating, $Out> get $asStarRating =>
      $base.as((v, t, t2) => _StarRatingCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class StarRatingCopyWith<$R, $In extends StarRating, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Icon, IconCopyWith<$R, Icon, Icon>> get icons;
  $R call({String? value, List<Icon>? icons, String? system});
  StarRatingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _StarRatingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StarRating, $Out>
    implements StarRatingCopyWith<$R, StarRating, $Out> {
  _StarRatingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StarRating> $mapper =
      StarRatingMapper.ensureInitialized();
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
  StarRating $make(CopyWithData data) => StarRating(
      value: data.get(#value, or: $value.value),
      icons: data.get(#icons, or: $value.icons),
      system: data.get(#system, or: $value.system));

  @override
  StarRatingCopyWith<$R2, StarRating, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _StarRatingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
