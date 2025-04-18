// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image.dart';

class ImageMapper extends ClassMapperBase<Image> {
  ImageMapper._();

  static ImageMapper? _instance;
  static ImageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Image';

  static String _$type(Image v) => v.type;
  static const Field<Image, String> _f$type = Field('type', _$type);
  static String _$value(Image v) => v.value;
  static const Field<Image, String> _f$value = Field('value', _$value);
  static String? _$size(Image v) => v.size;
  static const Field<Image, String> _f$size = Field('size', _$size, opt: true);
  static String? _$orient(Image v) => v.orient;
  static const Field<Image, String> _f$orient =
      Field('orient', _$orient, opt: true);
  static String? _$system(Image v) => v.system;
  static const Field<Image, String> _f$system =
      Field('system', _$system, opt: true);

  @override
  final MappableFields<Image> fields = const {
    #type: _f$type,
    #value: _f$value,
    #size: _f$size,
    #orient: _f$orient,
    #system: _f$system,
  };

  static Image _instantiate(DecodingData data) {
    return Image(
        type: data.dec(_f$type),
        value: data.dec(_f$value),
        size: data.dec(_f$size),
        orient: data.dec(_f$orient),
        system: data.dec(_f$system));
  }

  @override
  final Function instantiate = _instantiate;

  static Image fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Image>(map);
  }

  static Image fromJson(String json) {
    return ensureInitialized().decodeJson<Image>(json);
  }
}

mixin ImageMappable {
  String toJson() {
    return ImageMapper.ensureInitialized().encodeJson<Image>(this as Image);
  }

  Map<String, dynamic> toMap() {
    return ImageMapper.ensureInitialized().encodeMap<Image>(this as Image);
  }

  ImageCopyWith<Image, Image, Image> get copyWith =>
      _ImageCopyWithImpl<Image, Image>(this as Image, $identity, $identity);
  @override
  String toString() {
    return ImageMapper.ensureInitialized().stringifyValue(this as Image);
  }

  @override
  bool operator ==(Object other) {
    return ImageMapper.ensureInitialized().equalsValue(this as Image, other);
  }

  @override
  int get hashCode {
    return ImageMapper.ensureInitialized().hashValue(this as Image);
  }
}

extension ImageValueCopy<$R, $Out> on ObjectCopyWith<$R, Image, $Out> {
  ImageCopyWith<$R, Image, $Out> get $asImage =>
      $base.as((v, t, t2) => _ImageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ImageCopyWith<$R, $In extends Image, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? type,
      String? value,
      String? size,
      String? orient,
      String? system});
  ImageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Image, $Out>
    implements ImageCopyWith<$R, Image, $Out> {
  _ImageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Image> $mapper = ImageMapper.ensureInitialized();
  @override
  $R call(
          {String? type,
          String? value,
          Object? size = $none,
          Object? orient = $none,
          Object? system = $none}) =>
      $apply(FieldCopyWithData({
        if (type != null) #type: type,
        if (value != null) #value: value,
        if (size != $none) #size: size,
        if (orient != $none) #orient: orient,
        if (system != $none) #system: system
      }));
  @override
  Image $make(CopyWithData data) => Image(
      type: data.get(#type, or: $value.type),
      value: data.get(#value, or: $value.value),
      size: data.get(#size, or: $value.size),
      orient: data.get(#orient, or: $value.orient),
      system: data.get(#system, or: $value.system));

  @override
  ImageCopyWith<$R2, Image, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ImageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
