// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'video.dart';

class VideoMapper extends ClassMapperBase<Video> {
  VideoMapper._();

  static VideoMapper? _instance;
  static VideoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VideoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Video';

  static String? _$present(Video v) => v.present;
  static const Field<Video, String> _f$present =
      Field('present', _$present, opt: true);
  static String? _$colour(Video v) => v.colour;
  static const Field<Video, String> _f$colour =
      Field('colour', _$colour, opt: true);
  static String? _$aspect(Video v) => v.aspect;
  static const Field<Video, String> _f$aspect =
      Field('aspect', _$aspect, opt: true);
  static String? _$quality(Video v) => v.quality;
  static const Field<Video, String> _f$quality =
      Field('quality', _$quality, opt: true);

  @override
  final MappableFields<Video> fields = const {
    #present: _f$present,
    #colour: _f$colour,
    #aspect: _f$aspect,
    #quality: _f$quality,
  };

  static Video _instantiate(DecodingData data) {
    return Video(
        present: data.dec(_f$present),
        colour: data.dec(_f$colour),
        aspect: data.dec(_f$aspect),
        quality: data.dec(_f$quality));
  }

  @override
  final Function instantiate = _instantiate;

  static Video fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Video>(map);
  }

  static Video fromJson(String json) {
    return ensureInitialized().decodeJson<Video>(json);
  }
}

mixin VideoMappable {
  String toJson() {
    return VideoMapper.ensureInitialized().encodeJson<Video>(this as Video);
  }

  Map<String, dynamic> toMap() {
    return VideoMapper.ensureInitialized().encodeMap<Video>(this as Video);
  }

  VideoCopyWith<Video, Video, Video> get copyWith =>
      _VideoCopyWithImpl<Video, Video>(this as Video, $identity, $identity);
  @override
  String toString() {
    return VideoMapper.ensureInitialized().stringifyValue(this as Video);
  }

  @override
  bool operator ==(Object other) {
    return VideoMapper.ensureInitialized().equalsValue(this as Video, other);
  }

  @override
  int get hashCode {
    return VideoMapper.ensureInitialized().hashValue(this as Video);
  }
}

extension VideoValueCopy<$R, $Out> on ObjectCopyWith<$R, Video, $Out> {
  VideoCopyWith<$R, Video, $Out> get $asVideo =>
      $base.as((v, t, t2) => _VideoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VideoCopyWith<$R, $In extends Video, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? present, String? colour, String? aspect, String? quality});
  VideoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VideoCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Video, $Out>
    implements VideoCopyWith<$R, Video, $Out> {
  _VideoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Video> $mapper = VideoMapper.ensureInitialized();
  @override
  $R call(
          {Object? present = $none,
          Object? colour = $none,
          Object? aspect = $none,
          Object? quality = $none}) =>
      $apply(FieldCopyWithData({
        if (present != $none) #present: present,
        if (colour != $none) #colour: colour,
        if (aspect != $none) #aspect: aspect,
        if (quality != $none) #quality: quality
      }));
  @override
  Video $make(CopyWithData data) => Video(
      present: data.get(#present, or: $value.present),
      colour: data.get(#colour, or: $value.colour),
      aspect: data.get(#aspect, or: $value.aspect),
      quality: data.get(#quality, or: $value.quality));

  @override
  VideoCopyWith<$R2, Video, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VideoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
