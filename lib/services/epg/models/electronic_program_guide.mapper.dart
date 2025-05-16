// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'electronic_program_guide.dart';

class ElectronicProgramGuideMapper
    extends ClassMapperBase<ElectronicProgramGuide> {
  ElectronicProgramGuideMapper._();

  static ElectronicProgramGuideMapper? _instance;
  static ElectronicProgramGuideMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ElectronicProgramGuideMapper._());
      ChannelMapper.ensureInitialized();
      ProgrammeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ElectronicProgramGuide';

  static List<Channel> _$channels(ElectronicProgramGuide v) => v.channels;
  static const Field<ElectronicProgramGuide, List<Channel>> _f$channels =
      Field('channels', _$channels);
  static List<Programme> _$programmes(ElectronicProgramGuide v) => v.programmes;
  static const Field<ElectronicProgramGuide, List<Programme>> _f$programmes =
      Field('programmes', _$programmes);
  static DateTime? _$date(ElectronicProgramGuide v) => v.date;
  static const Field<ElectronicProgramGuide, DateTime> _f$date =
      Field('date', _$date, opt: true);
  static String? _$sourceInfoUrl(ElectronicProgramGuide v) => v.sourceInfoUrl;
  static const Field<ElectronicProgramGuide, String> _f$sourceInfoUrl =
      Field('sourceInfoUrl', _$sourceInfoUrl, opt: true);
  static String? _$sourceInfoName(ElectronicProgramGuide v) => v.sourceInfoName;
  static const Field<ElectronicProgramGuide, String> _f$sourceInfoName =
      Field('sourceInfoName', _$sourceInfoName, opt: true);
  static String? _$sourceDataUrl(ElectronicProgramGuide v) => v.sourceDataUrl;
  static const Field<ElectronicProgramGuide, String> _f$sourceDataUrl =
      Field('sourceDataUrl', _$sourceDataUrl, opt: true);
  static String? _$generatorInfoName(ElectronicProgramGuide v) =>
      v.generatorInfoName;
  static const Field<ElectronicProgramGuide, String> _f$generatorInfoName =
      Field('generatorInfoName', _$generatorInfoName, opt: true);
  static String? _$generatorInfoUrl(ElectronicProgramGuide v) =>
      v.generatorInfoUrl;
  static const Field<ElectronicProgramGuide, String> _f$generatorInfoUrl =
      Field('generatorInfoUrl', _$generatorInfoUrl, opt: true);

  @override
  final MappableFields<ElectronicProgramGuide> fields = const {
    #channels: _f$channels,
    #programmes: _f$programmes,
    #date: _f$date,
    #sourceInfoUrl: _f$sourceInfoUrl,
    #sourceInfoName: _f$sourceInfoName,
    #sourceDataUrl: _f$sourceDataUrl,
    #generatorInfoName: _f$generatorInfoName,
    #generatorInfoUrl: _f$generatorInfoUrl,
  };

  static ElectronicProgramGuide _instantiate(DecodingData data) {
    return ElectronicProgramGuide(
        channels: data.dec(_f$channels),
        programmes: data.dec(_f$programmes),
        date: data.dec(_f$date),
        sourceInfoUrl: data.dec(_f$sourceInfoUrl),
        sourceInfoName: data.dec(_f$sourceInfoName),
        sourceDataUrl: data.dec(_f$sourceDataUrl),
        generatorInfoName: data.dec(_f$generatorInfoName),
        generatorInfoUrl: data.dec(_f$generatorInfoUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static ElectronicProgramGuide fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ElectronicProgramGuide>(map);
  }

  static ElectronicProgramGuide fromJson(String json) {
    return ensureInitialized().decodeJson<ElectronicProgramGuide>(json);
  }
}

mixin ElectronicProgramGuideMappable {
  String toJson() {
    return ElectronicProgramGuideMapper.ensureInitialized()
        .encodeJson<ElectronicProgramGuide>(this as ElectronicProgramGuide);
  }

  Map<String, dynamic> toMap() {
    return ElectronicProgramGuideMapper.ensureInitialized()
        .encodeMap<ElectronicProgramGuide>(this as ElectronicProgramGuide);
  }

  ElectronicProgramGuideCopyWith<ElectronicProgramGuide, ElectronicProgramGuide,
          ElectronicProgramGuide>
      get copyWith => _ElectronicProgramGuideCopyWithImpl<
              ElectronicProgramGuide, ElectronicProgramGuide>(
          this as ElectronicProgramGuide, $identity, $identity);
  @override
  String toString() {
    return ElectronicProgramGuideMapper.ensureInitialized()
        .stringifyValue(this as ElectronicProgramGuide);
  }

  @override
  bool operator ==(Object other) {
    return ElectronicProgramGuideMapper.ensureInitialized()
        .equalsValue(this as ElectronicProgramGuide, other);
  }

  @override
  int get hashCode {
    return ElectronicProgramGuideMapper.ensureInitialized()
        .hashValue(this as ElectronicProgramGuide);
  }
}

extension ElectronicProgramGuideValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ElectronicProgramGuide, $Out> {
  ElectronicProgramGuideCopyWith<$R, ElectronicProgramGuide, $Out>
      get $asElectronicProgramGuide => $base.as((v, t, t2) =>
          _ElectronicProgramGuideCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ElectronicProgramGuideCopyWith<
    $R,
    $In extends ElectronicProgramGuide,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Channel, ChannelCopyWith<$R, Channel, Channel>> get channels;
  ListCopyWith<$R, Programme, ProgrammeCopyWith<$R, Programme, Programme>>
      get programmes;
  $R call(
      {List<Channel>? channels,
      List<Programme>? programmes,
      DateTime? date,
      String? sourceInfoUrl,
      String? sourceInfoName,
      String? sourceDataUrl,
      String? generatorInfoName,
      String? generatorInfoUrl});
  ElectronicProgramGuideCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ElectronicProgramGuideCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ElectronicProgramGuide, $Out>
    implements
        ElectronicProgramGuideCopyWith<$R, ElectronicProgramGuide, $Out> {
  _ElectronicProgramGuideCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ElectronicProgramGuide> $mapper =
      ElectronicProgramGuideMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Channel, ChannelCopyWith<$R, Channel, Channel>>
      get channels => ListCopyWith($value.channels,
          (v, t) => v.copyWith.$chain(t), (v) => call(channels: v));
  @override
  ListCopyWith<$R, Programme, ProgrammeCopyWith<$R, Programme, Programme>>
      get programmes => ListCopyWith($value.programmes,
          (v, t) => v.copyWith.$chain(t), (v) => call(programmes: v));
  @override
  $R call(
          {List<Channel>? channels,
          List<Programme>? programmes,
          Object? date = $none,
          Object? sourceInfoUrl = $none,
          Object? sourceInfoName = $none,
          Object? sourceDataUrl = $none,
          Object? generatorInfoName = $none,
          Object? generatorInfoUrl = $none}) =>
      $apply(FieldCopyWithData({
        if (channels != null) #channels: channels,
        if (programmes != null) #programmes: programmes,
        if (date != $none) #date: date,
        if (sourceInfoUrl != $none) #sourceInfoUrl: sourceInfoUrl,
        if (sourceInfoName != $none) #sourceInfoName: sourceInfoName,
        if (sourceDataUrl != $none) #sourceDataUrl: sourceDataUrl,
        if (generatorInfoName != $none) #generatorInfoName: generatorInfoName,
        if (generatorInfoUrl != $none) #generatorInfoUrl: generatorInfoUrl
      }));
  @override
  ElectronicProgramGuide $make(CopyWithData data) => ElectronicProgramGuide(
      channels: data.get(#channels, or: $value.channels),
      programmes: data.get(#programmes, or: $value.programmes),
      date: data.get(#date, or: $value.date),
      sourceInfoUrl: data.get(#sourceInfoUrl, or: $value.sourceInfoUrl),
      sourceInfoName: data.get(#sourceInfoName, or: $value.sourceInfoName),
      sourceDataUrl: data.get(#sourceDataUrl, or: $value.sourceDataUrl),
      generatorInfoName:
          data.get(#generatorInfoName, or: $value.generatorInfoName),
      generatorInfoUrl:
          data.get(#generatorInfoUrl, or: $value.generatorInfoUrl));

  @override
  ElectronicProgramGuideCopyWith<$R2, ElectronicProgramGuide, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ElectronicProgramGuideCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
