// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'xmltv_base.dart';

class XmltvBaseMapper extends ClassMapperBase<XmltvBase> {
  XmltvBaseMapper._();

  static XmltvBaseMapper? _instance;
  static XmltvBaseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XmltvBaseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XmltvBase';

  static String _$providerName(XmltvBase v) => v.providerName;
  static const Field<XmltvBase, String> _f$providerName = Field(
    'providerName',
    _$providerName,
  );
  static DateTime _$expiration(XmltvBase v) => v.expiration;
  static const Field<XmltvBase, DateTime> _f$expiration = Field(
    'expiration',
    _$expiration,
  );

  @override
  final MappableFields<XmltvBase> fields = const {
    #providerName: _f$providerName,
    #expiration: _f$expiration,
  };

  static XmltvBase _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('XmltvBase');
  }

  @override
  final Function instantiate = _instantiate;

  static XmltvBase fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XmltvBase>(map);
  }

  static XmltvBase fromJson(String json) {
    return ensureInitialized().decodeJson<XmltvBase>(json);
  }
}

mixin XmltvBaseMappable {
  String toJson();
  Map<String, dynamic> toMap();
  XmltvBaseCopyWith<XmltvBase, XmltvBase, XmltvBase> get copyWith;
}

abstract class XmltvBaseCopyWith<$R, $In extends XmltvBase, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? providerName, DateTime? expiration});
  XmltvBaseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

