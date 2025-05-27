// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'general_information.dart';

class XTremeCodeGeneralInformationMapper
    extends ClassMapperBase<XTremeCodeGeneralInformation> {
  XTremeCodeGeneralInformationMapper._();

  static XTremeCodeGeneralInformationMapper? _instance;
  static XTremeCodeGeneralInformationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = XTremeCodeGeneralInformationMapper._());
      XTremeCodeUserInfoMapper.ensureInitialized();
      XTremeCodeServerInfoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeGeneralInformation';

  static XTremeCodeUserInfo? _$userInfo(XTremeCodeGeneralInformation v) =>
      v.userInfo;
  static const Field<XTremeCodeGeneralInformation, XTremeCodeUserInfo>
      _f$userInfo = Field('userInfo', _$userInfo, key: r'user_info');
  static XTremeCodeServerInfo? _$serverInfo(XTremeCodeGeneralInformation v) =>
      v.serverInfo;
  static const Field<XTremeCodeGeneralInformation, XTremeCodeServerInfo>
      _f$serverInfo = Field('serverInfo', _$serverInfo, key: r'server_info');

  @override
  final MappableFields<XTremeCodeGeneralInformation> fields = const {
    #userInfo: _f$userInfo,
    #serverInfo: _f$serverInfo,
  };

  static XTremeCodeGeneralInformation _instantiate(DecodingData data) {
    return XTremeCodeGeneralInformation(
        userInfo: data.dec(_f$userInfo), serverInfo: data.dec(_f$serverInfo));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeGeneralInformation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeGeneralInformation>(map);
  }

  static XTremeCodeGeneralInformation fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeGeneralInformation>(json);
  }
}

mixin XTremeCodeGeneralInformationMappable {
  String toJson() {
    return XTremeCodeGeneralInformationMapper.ensureInitialized()
        .encodeJson<XTremeCodeGeneralInformation>(
            this as XTremeCodeGeneralInformation);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeGeneralInformationMapper.ensureInitialized()
        .encodeMap<XTremeCodeGeneralInformation>(
            this as XTremeCodeGeneralInformation);
  }

  XTremeCodeGeneralInformationCopyWith<XTremeCodeGeneralInformation,
          XTremeCodeGeneralInformation, XTremeCodeGeneralInformation>
      get copyWith => _XTremeCodeGeneralInformationCopyWithImpl<
              XTremeCodeGeneralInformation, XTremeCodeGeneralInformation>(
          this as XTremeCodeGeneralInformation, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeGeneralInformationMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeGeneralInformation);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeGeneralInformationMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeGeneralInformation, other);
  }

  @override
  int get hashCode {
    return XTremeCodeGeneralInformationMapper.ensureInitialized()
        .hashValue(this as XTremeCodeGeneralInformation);
  }
}

extension XTremeCodeGeneralInformationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeGeneralInformation, $Out> {
  XTremeCodeGeneralInformationCopyWith<$R, XTremeCodeGeneralInformation, $Out>
      get $asXTremeCodeGeneralInformation => $base.as((v, t, t2) =>
          _XTremeCodeGeneralInformationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeGeneralInformationCopyWith<
    $R,
    $In extends XTremeCodeGeneralInformation,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  XTremeCodeUserInfoCopyWith<$R, XTremeCodeUserInfo, XTremeCodeUserInfo>?
      get userInfo;
  XTremeCodeServerInfoCopyWith<$R, XTremeCodeServerInfo, XTremeCodeServerInfo>?
      get serverInfo;
  $R call({XTremeCodeUserInfo? userInfo, XTremeCodeServerInfo? serverInfo});
  XTremeCodeGeneralInformationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeGeneralInformationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeGeneralInformation, $Out>
    implements
        XTremeCodeGeneralInformationCopyWith<$R, XTremeCodeGeneralInformation,
            $Out> {
  _XTremeCodeGeneralInformationCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeGeneralInformation> $mapper =
      XTremeCodeGeneralInformationMapper.ensureInitialized();
  @override
  XTremeCodeUserInfoCopyWith<$R, XTremeCodeUserInfo, XTremeCodeUserInfo>?
      get userInfo =>
          $value.userInfo?.copyWith.$chain((v) => call(userInfo: v));
  @override
  XTremeCodeServerInfoCopyWith<$R, XTremeCodeServerInfo, XTremeCodeServerInfo>?
      get serverInfo =>
          $value.serverInfo?.copyWith.$chain((v) => call(serverInfo: v));
  @override
  $R call({Object? userInfo = $none, Object? serverInfo = $none}) =>
      $apply(FieldCopyWithData({
        if (userInfo != $none) #userInfo: userInfo,
        if (serverInfo != $none) #serverInfo: serverInfo
      }));
  @override
  XTremeCodeGeneralInformation $make(CopyWithData data) =>
      XTremeCodeGeneralInformation(
          userInfo: data.get(#userInfo, or: $value.userInfo),
          serverInfo: data.get(#serverInfo, or: $value.serverInfo));

  @override
  XTremeCodeGeneralInformationCopyWith<$R2, XTremeCodeGeneralInformation, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _XTremeCodeGeneralInformationCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}
