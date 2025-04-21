// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'icon.dart';

class IconMapper extends ClassMapperBase<Icon> {
  IconMapper._();

  static IconMapper? _instance;
  static IconMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IconMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Icon';

  static String _$src(Icon v) => v.src;
  static const Field<Icon, String> _f$src = Field('src', _$src);
  static int? _$width(Icon v) => v.width;
  static const Field<Icon, int> _f$width = Field('width', _$width, opt: true);
  static int? _$height(Icon v) => v.height;
  static const Field<Icon, int> _f$height =
      Field('height', _$height, opt: true);

  @override
  final MappableFields<Icon> fields = const {
    #src: _f$src,
    #width: _f$width,
    #height: _f$height,
  };

  static Icon _instantiate(DecodingData data) {
    return Icon(
        src: data.dec(_f$src),
        width: data.dec(_f$width),
        height: data.dec(_f$height));
  }

  @override
  final Function instantiate = _instantiate;

  static Icon fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Icon>(map);
  }

  static Icon fromJson(String json) {
    return ensureInitialized().decodeJson<Icon>(json);
  }
}

mixin IconMappable {
  String toJson() {
    return IconMapper.ensureInitialized().encodeJson<Icon>(this as Icon);
  }

  Map<String, dynamic> toMap() {
    return IconMapper.ensureInitialized().encodeMap<Icon>(this as Icon);
  }

  IconCopyWith<Icon, Icon, Icon> get copyWith =>
      _IconCopyWithImpl<Icon, Icon>(this as Icon, $identity, $identity);
  @override
  String toString() {
    return IconMapper.ensureInitialized().stringifyValue(this as Icon);
  }

  @override
  bool operator ==(Object other) {
    return IconMapper.ensureInitialized().equalsValue(this as Icon, other);
  }

  @override
  int get hashCode {
    return IconMapper.ensureInitialized().hashValue(this as Icon);
  }
}

extension IconValueCopy<$R, $Out> on ObjectCopyWith<$R, Icon, $Out> {
  IconCopyWith<$R, Icon, $Out> get $asIcon =>
      $base.as((v, t, t2) => _IconCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class IconCopyWith<$R, $In extends Icon, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? src, int? width, int? height});
  IconCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IconCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Icon, $Out>
    implements IconCopyWith<$R, Icon, $Out> {
  _IconCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Icon> $mapper = IconMapper.ensureInitialized();
  @override
  $R call({String? src, Object? width = $none, Object? height = $none}) =>
      $apply(FieldCopyWithData({
        if (src != null) #src: src,
        if (width != $none) #width: width,
        if (height != $none) #height: height
      }));
  @override
  Icon $make(CopyWithData data) => Icon(
      src: data.get(#src, or: $value.src),
      width: data.get(#width, or: $value.width),
      height: data.get(#height, or: $value.height));

  @override
  IconCopyWith<$R2, Icon, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _IconCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
