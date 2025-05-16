// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'subtitles.dart';

class SubtitlesMapper extends ClassMapperBase<Subtitles> {
  SubtitlesMapper._();

  static SubtitlesMapper? _instance;
  static SubtitlesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SubtitlesMapper._());
      LanguageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Subtitles';

  static String? _$type(Subtitles v) => v.type;
  static const Field<Subtitles, String> _f$type =
      Field('type', _$type, opt: true);
  static Language? _$language(Subtitles v) => v.language;
  static const Field<Subtitles, Language> _f$language =
      Field('language', _$language, opt: true);

  @override
  final MappableFields<Subtitles> fields = const {
    #type: _f$type,
    #language: _f$language,
  };

  static Subtitles _instantiate(DecodingData data) {
    return Subtitles(type: data.dec(_f$type), language: data.dec(_f$language));
  }

  @override
  final Function instantiate = _instantiate;

  static Subtitles fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Subtitles>(map);
  }

  static Subtitles fromJson(String json) {
    return ensureInitialized().decodeJson<Subtitles>(json);
  }
}

mixin SubtitlesMappable {
  String toJson() {
    return SubtitlesMapper.ensureInitialized()
        .encodeJson<Subtitles>(this as Subtitles);
  }

  Map<String, dynamic> toMap() {
    return SubtitlesMapper.ensureInitialized()
        .encodeMap<Subtitles>(this as Subtitles);
  }

  SubtitlesCopyWith<Subtitles, Subtitles, Subtitles> get copyWith =>
      _SubtitlesCopyWithImpl<Subtitles, Subtitles>(
          this as Subtitles, $identity, $identity);
  @override
  String toString() {
    return SubtitlesMapper.ensureInitialized()
        .stringifyValue(this as Subtitles);
  }

  @override
  bool operator ==(Object other) {
    return SubtitlesMapper.ensureInitialized()
        .equalsValue(this as Subtitles, other);
  }

  @override
  int get hashCode {
    return SubtitlesMapper.ensureInitialized().hashValue(this as Subtitles);
  }
}

extension SubtitlesValueCopy<$R, $Out> on ObjectCopyWith<$R, Subtitles, $Out> {
  SubtitlesCopyWith<$R, Subtitles, $Out> get $asSubtitles =>
      $base.as((v, t, t2) => _SubtitlesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SubtitlesCopyWith<$R, $In extends Subtitles, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  LanguageCopyWith<$R, Language, Language>? get language;
  $R call({String? type, Language? language});
  SubtitlesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SubtitlesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Subtitles, $Out>
    implements SubtitlesCopyWith<$R, Subtitles, $Out> {
  _SubtitlesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Subtitles> $mapper =
      SubtitlesMapper.ensureInitialized();
  @override
  LanguageCopyWith<$R, Language, Language>? get language =>
      $value.language?.copyWith.$chain((v) => call(language: v));
  @override
  $R call({Object? type = $none, Object? language = $none}) =>
      $apply(FieldCopyWithData({
        if (type != $none) #type: type,
        if (language != $none) #language: language
      }));
  @override
  Subtitles $make(CopyWithData data) => Subtitles(
      type: data.get(#type, or: $value.type),
      language: data.get(#language, or: $value.language));

  @override
  SubtitlesCopyWith<$R2, Subtitles, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SubtitlesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
