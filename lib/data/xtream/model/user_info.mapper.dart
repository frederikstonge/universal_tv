// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_info.dart';

class XTremeCodeUserInfoMapper extends ClassMapperBase<XTremeCodeUserInfo> {
  XTremeCodeUserInfoMapper._();

  static XTremeCodeUserInfoMapper? _instance;
  static XTremeCodeUserInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeUserInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeUserInfo';

  static String? _$username(XTremeCodeUserInfo v) => v.username;
  static const Field<XTremeCodeUserInfo, String> _f$username =
      Field('username', _$username);
  static String? _$password(XTremeCodeUserInfo v) => v.password;
  static const Field<XTremeCodeUserInfo, String> _f$password =
      Field('password', _$password);
  static String? _$message(XTremeCodeUserInfo v) => v.message;
  static const Field<XTremeCodeUserInfo, String> _f$message =
      Field('message', _$message);
  static bool? _$auth(XTremeCodeUserInfo v) => v.auth;
  static const Field<XTremeCodeUserInfo, bool> _f$auth = Field('auth', _$auth);
  static String? _$status(XTremeCodeUserInfo v) => v.status;
  static const Field<XTremeCodeUserInfo, String> _f$status =
      Field('status', _$status);
  static DateTime? _$expDate(XTremeCodeUserInfo v) => v.expDate;
  static const Field<XTremeCodeUserInfo, DateTime> _f$expDate =
      Field('expDate', _$expDate, key: r'exp_date');
  static bool? _$isTrial(XTremeCodeUserInfo v) => v.isTrial;
  static const Field<XTremeCodeUserInfo, bool> _f$isTrial =
      Field('isTrial', _$isTrial, key: r'is_trial');
  static int? _$activeCons(XTremeCodeUserInfo v) => v.activeCons;
  static const Field<XTremeCodeUserInfo, int> _f$activeCons =
      Field('activeCons', _$activeCons, key: r'active_cons');
  static DateTime? _$createdAt(XTremeCodeUserInfo v) => v.createdAt;
  static const Field<XTremeCodeUserInfo, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, key: r'created_at');
  static int? _$maxConnections(XTremeCodeUserInfo v) => v.maxConnections;
  static const Field<XTremeCodeUserInfo, int> _f$maxConnections =
      Field('maxConnections', _$maxConnections, key: r'max_connections');
  static List<String>? _$allowedOutputFormats(XTremeCodeUserInfo v) =>
      v.allowedOutputFormats;
  static const Field<XTremeCodeUserInfo, List<String>> _f$allowedOutputFormats =
      Field('allowedOutputFormats', _$allowedOutputFormats,
          key: r'allowed_output_formats');

  @override
  final MappableFields<XTremeCodeUserInfo> fields = const {
    #username: _f$username,
    #password: _f$password,
    #message: _f$message,
    #auth: _f$auth,
    #status: _f$status,
    #expDate: _f$expDate,
    #isTrial: _f$isTrial,
    #activeCons: _f$activeCons,
    #createdAt: _f$createdAt,
    #maxConnections: _f$maxConnections,
    #allowedOutputFormats: _f$allowedOutputFormats,
  };

  static XTremeCodeUserInfo _instantiate(DecodingData data) {
    return XTremeCodeUserInfo(
        username: data.dec(_f$username),
        password: data.dec(_f$password),
        message: data.dec(_f$message),
        auth: data.dec(_f$auth),
        status: data.dec(_f$status),
        expDate: data.dec(_f$expDate),
        isTrial: data.dec(_f$isTrial),
        activeCons: data.dec(_f$activeCons),
        createdAt: data.dec(_f$createdAt),
        maxConnections: data.dec(_f$maxConnections),
        allowedOutputFormats: data.dec(_f$allowedOutputFormats));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeUserInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeUserInfo>(map);
  }

  static XTremeCodeUserInfo fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeUserInfo>(json);
  }
}

mixin XTremeCodeUserInfoMappable {
  String toJson() {
    return XTremeCodeUserInfoMapper.ensureInitialized()
        .encodeJson<XTremeCodeUserInfo>(this as XTremeCodeUserInfo);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeUserInfoMapper.ensureInitialized()
        .encodeMap<XTremeCodeUserInfo>(this as XTremeCodeUserInfo);
  }

  XTremeCodeUserInfoCopyWith<XTremeCodeUserInfo, XTremeCodeUserInfo,
          XTremeCodeUserInfo>
      get copyWith => _XTremeCodeUserInfoCopyWithImpl<XTremeCodeUserInfo,
          XTremeCodeUserInfo>(this as XTremeCodeUserInfo, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeUserInfoMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeUserInfo);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeUserInfoMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeUserInfo, other);
  }

  @override
  int get hashCode {
    return XTremeCodeUserInfoMapper.ensureInitialized()
        .hashValue(this as XTremeCodeUserInfo);
  }
}

extension XTremeCodeUserInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeUserInfo, $Out> {
  XTremeCodeUserInfoCopyWith<$R, XTremeCodeUserInfo, $Out>
      get $asXTremeCodeUserInfo => $base.as(
          (v, t, t2) => _XTremeCodeUserInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeUserInfoCopyWith<$R, $In extends XTremeCodeUserInfo,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get allowedOutputFormats;
  $R call(
      {String? username,
      String? password,
      String? message,
      bool? auth,
      String? status,
      DateTime? expDate,
      bool? isTrial,
      int? activeCons,
      DateTime? createdAt,
      int? maxConnections,
      List<String>? allowedOutputFormats});
  XTremeCodeUserInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeUserInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeUserInfo, $Out>
    implements XTremeCodeUserInfoCopyWith<$R, XTremeCodeUserInfo, $Out> {
  _XTremeCodeUserInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeUserInfo> $mapper =
      XTremeCodeUserInfoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get allowedOutputFormats => $value.allowedOutputFormats != null
          ? ListCopyWith(
              $value.allowedOutputFormats!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(allowedOutputFormats: v))
          : null;
  @override
  $R call(
          {Object? username = $none,
          Object? password = $none,
          Object? message = $none,
          Object? auth = $none,
          Object? status = $none,
          Object? expDate = $none,
          Object? isTrial = $none,
          Object? activeCons = $none,
          Object? createdAt = $none,
          Object? maxConnections = $none,
          Object? allowedOutputFormats = $none}) =>
      $apply(FieldCopyWithData({
        if (username != $none) #username: username,
        if (password != $none) #password: password,
        if (message != $none) #message: message,
        if (auth != $none) #auth: auth,
        if (status != $none) #status: status,
        if (expDate != $none) #expDate: expDate,
        if (isTrial != $none) #isTrial: isTrial,
        if (activeCons != $none) #activeCons: activeCons,
        if (createdAt != $none) #createdAt: createdAt,
        if (maxConnections != $none) #maxConnections: maxConnections,
        if (allowedOutputFormats != $none)
          #allowedOutputFormats: allowedOutputFormats
      }));
  @override
  XTremeCodeUserInfo $make(CopyWithData data) => XTremeCodeUserInfo(
      username: data.get(#username, or: $value.username),
      password: data.get(#password, or: $value.password),
      message: data.get(#message, or: $value.message),
      auth: data.get(#auth, or: $value.auth),
      status: data.get(#status, or: $value.status),
      expDate: data.get(#expDate, or: $value.expDate),
      isTrial: data.get(#isTrial, or: $value.isTrial),
      activeCons: data.get(#activeCons, or: $value.activeCons),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      maxConnections: data.get(#maxConnections, or: $value.maxConnections),
      allowedOutputFormats:
          data.get(#allowedOutputFormats, or: $value.allowedOutputFormats));

  @override
  XTremeCodeUserInfoCopyWith<$R2, XTremeCodeUserInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _XTremeCodeUserInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
