// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'audio.dart';

class AudioMapper extends ClassMapperBase<Audio> {
  AudioMapper._();

  static AudioMapper? _instance;
  static AudioMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AudioMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Audio';

  static String? _$present(Audio v) => v.present;
  static const Field<Audio, String> _f$present =
      Field('present', _$present, opt: true);
  static String? _$stereo(Audio v) => v.stereo;
  static const Field<Audio, String> _f$stereo =
      Field('stereo', _$stereo, opt: true);

  @override
  final MappableFields<Audio> fields = const {
    #present: _f$present,
    #stereo: _f$stereo,
  };

  static Audio _instantiate(DecodingData data) {
    return Audio(present: data.dec(_f$present), stereo: data.dec(_f$stereo));
  }

  @override
  final Function instantiate = _instantiate;

  static Audio fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Audio>(map);
  }

  static Audio fromJson(String json) {
    return ensureInitialized().decodeJson<Audio>(json);
  }
}

mixin AudioMappable {
  String toJson() {
    return AudioMapper.ensureInitialized().encodeJson<Audio>(this as Audio);
  }

  Map<String, dynamic> toMap() {
    return AudioMapper.ensureInitialized().encodeMap<Audio>(this as Audio);
  }

  AudioCopyWith<Audio, Audio, Audio> get copyWith =>
      _AudioCopyWithImpl<Audio, Audio>(this as Audio, $identity, $identity);
  @override
  String toString() {
    return AudioMapper.ensureInitialized().stringifyValue(this as Audio);
  }

  @override
  bool operator ==(Object other) {
    return AudioMapper.ensureInitialized().equalsValue(this as Audio, other);
  }

  @override
  int get hashCode {
    return AudioMapper.ensureInitialized().hashValue(this as Audio);
  }
}

extension AudioValueCopy<$R, $Out> on ObjectCopyWith<$R, Audio, $Out> {
  AudioCopyWith<$R, Audio, $Out> get $asAudio =>
      $base.as((v, t, t2) => _AudioCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AudioCopyWith<$R, $In extends Audio, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? present, String? stereo});
  AudioCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AudioCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Audio, $Out>
    implements AudioCopyWith<$R, Audio, $Out> {
  _AudioCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Audio> $mapper = AudioMapper.ensureInitialized();
  @override
  $R call({Object? present = $none, Object? stereo = $none}) =>
      $apply(FieldCopyWithData({
        if (present != $none) #present: present,
        if (stereo != $none) #stereo: stereo
      }));
  @override
  Audio $make(CopyWithData data) => Audio(
      present: data.get(#present, or: $value.present),
      stereo: data.get(#stereo, or: $value.stereo));

  @override
  AudioCopyWith<$R2, Audio, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AudioCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
