// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'general_information.dart';

class GeneralInformationMapper extends ClassMapperBase<GeneralInformation> {
  GeneralInformationMapper._();

  static GeneralInformationMapper? _instance;
  static GeneralInformationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GeneralInformationMapper._());
      UserInfoMapper.ensureInitialized();
      ServerInfoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GeneralInformation';

  static UserInfo? _$userInfo(GeneralInformation v) => v.userInfo;
  static const Field<GeneralInformation, UserInfo> _f$userInfo =
      Field('userInfo', _$userInfo, key: r'user_info');
  static ServerInfo? _$serverInfo(GeneralInformation v) => v.serverInfo;
  static const Field<GeneralInformation, ServerInfo> _f$serverInfo =
      Field('serverInfo', _$serverInfo, key: r'server_info');

  @override
  final MappableFields<GeneralInformation> fields = const {
    #userInfo: _f$userInfo,
    #serverInfo: _f$serverInfo,
  };

  static GeneralInformation _instantiate(DecodingData data) {
    return GeneralInformation(
        userInfo: data.dec(_f$userInfo), serverInfo: data.dec(_f$serverInfo));
  }

  @override
  final Function instantiate = _instantiate;

  static GeneralInformation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GeneralInformation>(map);
  }

  static GeneralInformation fromJson(String json) {
    return ensureInitialized().decodeJson<GeneralInformation>(json);
  }
}

mixin GeneralInformationMappable {
  String toJson() {
    return GeneralInformationMapper.ensureInitialized()
        .encodeJson<GeneralInformation>(this as GeneralInformation);
  }

  Map<String, dynamic> toMap() {
    return GeneralInformationMapper.ensureInitialized()
        .encodeMap<GeneralInformation>(this as GeneralInformation);
  }

  GeneralInformationCopyWith<GeneralInformation, GeneralInformation,
          GeneralInformation>
      get copyWith => _GeneralInformationCopyWithImpl<GeneralInformation,
          GeneralInformation>(this as GeneralInformation, $identity, $identity);
  @override
  String toString() {
    return GeneralInformationMapper.ensureInitialized()
        .stringifyValue(this as GeneralInformation);
  }

  @override
  bool operator ==(Object other) {
    return GeneralInformationMapper.ensureInitialized()
        .equalsValue(this as GeneralInformation, other);
  }

  @override
  int get hashCode {
    return GeneralInformationMapper.ensureInitialized()
        .hashValue(this as GeneralInformation);
  }
}

extension GeneralInformationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GeneralInformation, $Out> {
  GeneralInformationCopyWith<$R, GeneralInformation, $Out>
      get $asGeneralInformation => $base.as(
          (v, t, t2) => _GeneralInformationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GeneralInformationCopyWith<$R, $In extends GeneralInformation,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  UserInfoCopyWith<$R, UserInfo, UserInfo>? get userInfo;
  ServerInfoCopyWith<$R, ServerInfo, ServerInfo>? get serverInfo;
  $R call({UserInfo? userInfo, ServerInfo? serverInfo});
  GeneralInformationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GeneralInformationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GeneralInformation, $Out>
    implements GeneralInformationCopyWith<$R, GeneralInformation, $Out> {
  _GeneralInformationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GeneralInformation> $mapper =
      GeneralInformationMapper.ensureInitialized();
  @override
  UserInfoCopyWith<$R, UserInfo, UserInfo>? get userInfo =>
      $value.userInfo?.copyWith.$chain((v) => call(userInfo: v));
  @override
  ServerInfoCopyWith<$R, ServerInfo, ServerInfo>? get serverInfo =>
      $value.serverInfo?.copyWith.$chain((v) => call(serverInfo: v));
  @override
  $R call({Object? userInfo = $none, Object? serverInfo = $none}) =>
      $apply(FieldCopyWithData({
        if (userInfo != $none) #userInfo: userInfo,
        if (serverInfo != $none) #serverInfo: serverInfo
      }));
  @override
  GeneralInformation $make(CopyWithData data) => GeneralInformation(
      userInfo: data.get(#userInfo, or: $value.userInfo),
      serverInfo: data.get(#serverInfo, or: $value.serverInfo));

  @override
  GeneralInformationCopyWith<$R2, GeneralInformation, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GeneralInformationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
