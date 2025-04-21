// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'previously_shown.dart';

class PreviouslyShownMapper extends ClassMapperBase<PreviouslyShown> {
  PreviouslyShownMapper._();

  static PreviouslyShownMapper? _instance;
  static PreviouslyShownMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PreviouslyShownMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PreviouslyShown';

  static DateTime? _$start(PreviouslyShown v) => v.start;
  static const Field<PreviouslyShown, DateTime> _f$start =
      Field('start', _$start, opt: true);
  static String? _$channel(PreviouslyShown v) => v.channel;
  static const Field<PreviouslyShown, String> _f$channel =
      Field('channel', _$channel, opt: true);

  @override
  final MappableFields<PreviouslyShown> fields = const {
    #start: _f$start,
    #channel: _f$channel,
  };

  static PreviouslyShown _instantiate(DecodingData data) {
    return PreviouslyShown(
        start: data.dec(_f$start), channel: data.dec(_f$channel));
  }

  @override
  final Function instantiate = _instantiate;

  static PreviouslyShown fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PreviouslyShown>(map);
  }

  static PreviouslyShown fromJson(String json) {
    return ensureInitialized().decodeJson<PreviouslyShown>(json);
  }
}

mixin PreviouslyShownMappable {
  String toJson() {
    return PreviouslyShownMapper.ensureInitialized()
        .encodeJson<PreviouslyShown>(this as PreviouslyShown);
  }

  Map<String, dynamic> toMap() {
    return PreviouslyShownMapper.ensureInitialized()
        .encodeMap<PreviouslyShown>(this as PreviouslyShown);
  }

  PreviouslyShownCopyWith<PreviouslyShown, PreviouslyShown, PreviouslyShown>
      get copyWith =>
          _PreviouslyShownCopyWithImpl<PreviouslyShown, PreviouslyShown>(
              this as PreviouslyShown, $identity, $identity);
  @override
  String toString() {
    return PreviouslyShownMapper.ensureInitialized()
        .stringifyValue(this as PreviouslyShown);
  }

  @override
  bool operator ==(Object other) {
    return PreviouslyShownMapper.ensureInitialized()
        .equalsValue(this as PreviouslyShown, other);
  }

  @override
  int get hashCode {
    return PreviouslyShownMapper.ensureInitialized()
        .hashValue(this as PreviouslyShown);
  }
}

extension PreviouslyShownValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PreviouslyShown, $Out> {
  PreviouslyShownCopyWith<$R, PreviouslyShown, $Out> get $asPreviouslyShown =>
      $base.as((v, t, t2) => _PreviouslyShownCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PreviouslyShownCopyWith<$R, $In extends PreviouslyShown, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({DateTime? start, String? channel});
  PreviouslyShownCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PreviouslyShownCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PreviouslyShown, $Out>
    implements PreviouslyShownCopyWith<$R, PreviouslyShown, $Out> {
  _PreviouslyShownCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PreviouslyShown> $mapper =
      PreviouslyShownMapper.ensureInitialized();
  @override
  $R call({Object? start = $none, Object? channel = $none}) =>
      $apply(FieldCopyWithData({
        if (start != $none) #start: start,
        if (channel != $none) #channel: channel
      }));
  @override
  PreviouslyShown $make(CopyWithData data) => PreviouslyShown(
      start: data.get(#start, or: $value.start),
      channel: data.get(#channel, or: $value.channel));

  @override
  PreviouslyShownCopyWith<$R2, PreviouslyShown, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PreviouslyShownCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
