// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'xmltv_programme.dart';

class XmltvProgrammeMapper extends SubClassMapperBase<XmltvProgramme> {
  XmltvProgrammeMapper._();

  static XmltvProgrammeMapper? _instance;
  static XmltvProgrammeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XmltvProgrammeMapper._());
      XmltvBaseMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'XmltvProgramme';

  static String _$channelId(XmltvProgramme v) => v.channelId;
  static const Field<XmltvProgramme, String> _f$channelId =
      Field('channelId', _$channelId);
  static DateTime _$start(XmltvProgramme v) => v.start;
  static const Field<XmltvProgramme, DateTime> _f$start =
      Field('start', _$start);
  static DateTime? _$stop(XmltvProgramme v) => v.stop;
  static const Field<XmltvProgramme, DateTime> _f$stop =
      Field('stop', _$stop, opt: true);
  static String? _$title(XmltvProgramme v) => v.title;
  static const Field<XmltvProgramme, String> _f$title =
      Field('title', _$title, opt: true);
  static String? _$description(XmltvProgramme v) => v.description;
  static const Field<XmltvProgramme, String> _f$description =
      Field('description', _$description, opt: true);
  static List<String> _$categories(XmltvProgramme v) => v.categories;
  static const Field<XmltvProgramme, List<String>> _f$categories =
      Field('categories', _$categories, opt: true, def: const []);
  static String _$providerName(XmltvProgramme v) => v.providerName;
  static const Field<XmltvProgramme, String> _f$providerName =
      Field('providerName', _$providerName);
  static DateTime _$expiration(XmltvProgramme v) => v.expiration;
  static const Field<XmltvProgramme, DateTime> _f$expiration =
      Field('expiration', _$expiration);

  @override
  final MappableFields<XmltvProgramme> fields = const {
    #channelId: _f$channelId,
    #start: _f$start,
    #stop: _f$stop,
    #title: _f$title,
    #description: _f$description,
    #categories: _f$categories,
    #providerName: _f$providerName,
    #expiration: _f$expiration,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'programme';
  @override
  late final ClassMapperBase superMapper = XmltvBaseMapper.ensureInitialized();

  static XmltvProgramme _instantiate(DecodingData data) {
    return XmltvProgramme(
        channelId: data.dec(_f$channelId),
        start: data.dec(_f$start),
        stop: data.dec(_f$stop),
        title: data.dec(_f$title),
        description: data.dec(_f$description),
        categories: data.dec(_f$categories),
        providerName: data.dec(_f$providerName),
        expiration: data.dec(_f$expiration));
  }

  @override
  final Function instantiate = _instantiate;

  static XmltvProgramme fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XmltvProgramme>(map);
  }

  static XmltvProgramme fromJson(String json) {
    return ensureInitialized().decodeJson<XmltvProgramme>(json);
  }
}

mixin XmltvProgrammeMappable {
  String toJson() {
    return XmltvProgrammeMapper.ensureInitialized()
        .encodeJson<XmltvProgramme>(this as XmltvProgramme);
  }

  Map<String, dynamic> toMap() {
    return XmltvProgrammeMapper.ensureInitialized()
        .encodeMap<XmltvProgramme>(this as XmltvProgramme);
  }

  XmltvProgrammeCopyWith<XmltvProgramme, XmltvProgramme, XmltvProgramme>
      get copyWith =>
          _XmltvProgrammeCopyWithImpl<XmltvProgramme, XmltvProgramme>(
              this as XmltvProgramme, $identity, $identity);
  @override
  String toString() {
    return XmltvProgrammeMapper.ensureInitialized()
        .stringifyValue(this as XmltvProgramme);
  }

  @override
  bool operator ==(Object other) {
    return XmltvProgrammeMapper.ensureInitialized()
        .equalsValue(this as XmltvProgramme, other);
  }

  @override
  int get hashCode {
    return XmltvProgrammeMapper.ensureInitialized()
        .hashValue(this as XmltvProgramme);
  }
}

extension XmltvProgrammeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XmltvProgramme, $Out> {
  XmltvProgrammeCopyWith<$R, XmltvProgramme, $Out> get $asXmltvProgramme =>
      $base.as((v, t, t2) => _XmltvProgrammeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XmltvProgrammeCopyWith<$R, $In extends XmltvProgramme, $Out>
    implements XmltvBaseCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get categories;
  @override
  $R call(
      {String? channelId,
      DateTime? start,
      DateTime? stop,
      String? title,
      String? description,
      List<String>? categories,
      String? providerName,
      DateTime? expiration});
  XmltvProgrammeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XmltvProgrammeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XmltvProgramme, $Out>
    implements XmltvProgrammeCopyWith<$R, XmltvProgramme, $Out> {
  _XmltvProgrammeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XmltvProgramme> $mapper =
      XmltvProgrammeMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get categories =>
      ListCopyWith($value.categories, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(categories: v));
  @override
  $R call(
          {String? channelId,
          DateTime? start,
          Object? stop = $none,
          Object? title = $none,
          Object? description = $none,
          List<String>? categories,
          String? providerName,
          DateTime? expiration}) =>
      $apply(FieldCopyWithData({
        if (channelId != null) #channelId: channelId,
        if (start != null) #start: start,
        if (stop != $none) #stop: stop,
        if (title != $none) #title: title,
        if (description != $none) #description: description,
        if (categories != null) #categories: categories,
        if (providerName != null) #providerName: providerName,
        if (expiration != null) #expiration: expiration
      }));
  @override
  XmltvProgramme $make(CopyWithData data) => XmltvProgramme(
      channelId: data.get(#channelId, or: $value.channelId),
      start: data.get(#start, or: $value.start),
      stop: data.get(#stop, or: $value.stop),
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description),
      categories: data.get(#categories, or: $value.categories),
      providerName: data.get(#providerName, or: $value.providerName),
      expiration: data.get(#expiration, or: $value.expiration));

  @override
  XmltvProgrammeCopyWith<$R2, XmltvProgramme, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _XmltvProgrammeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
