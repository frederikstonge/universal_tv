// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_info.dart';

class UserInfoMapper extends ClassMapperBase<UserInfo> {
  UserInfoMapper._();

  static UserInfoMapper? _instance;
  static UserInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserInfo';

  static String? _$username(UserInfo v) => v.username;
  static const Field<UserInfo, String> _f$username =
      Field('username', _$username);
  static String? _$password(UserInfo v) => v.password;
  static const Field<UserInfo, String> _f$password =
      Field('password', _$password);
  static String? _$message(UserInfo v) => v.message;
  static const Field<UserInfo, String> _f$message = Field('message', _$message);
  static bool? _$auth(UserInfo v) => v.auth;
  static const Field<UserInfo, bool> _f$auth = Field('auth', _$auth);
  static String? _$status(UserInfo v) => v.status;
  static const Field<UserInfo, String> _f$status = Field('status', _$status);
  static DateTime? _$expDate(UserInfo v) => v.expDate;
  static const Field<UserInfo, DateTime> _f$expDate =
      Field('expDate', _$expDate, key: r'exp_date');
  static bool? _$isTrial(UserInfo v) => v.isTrial;
  static const Field<UserInfo, bool> _f$isTrial =
      Field('isTrial', _$isTrial, key: r'is_trial');
  static int? _$activeCons(UserInfo v) => v.activeCons;
  static const Field<UserInfo, int> _f$activeCons =
      Field('activeCons', _$activeCons, key: r'active_cons');
  static DateTime? _$createdAt(UserInfo v) => v.createdAt;
  static const Field<UserInfo, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, key: r'created_at');
  static int? _$maxConnections(UserInfo v) => v.maxConnections;
  static const Field<UserInfo, int> _f$maxConnections =
      Field('maxConnections', _$maxConnections, key: r'max_connections');
  static List<String>? _$allowedOutputFormats(UserInfo v) =>
      v.allowedOutputFormats;
  static const Field<UserInfo, List<String>> _f$allowedOutputFormats = Field(
      'allowedOutputFormats', _$allowedOutputFormats,
      key: r'allowed_output_formats');

  @override
  final MappableFields<UserInfo> fields = const {
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

  static UserInfo _instantiate(DecodingData data) {
    return UserInfo(
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

  static UserInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserInfo>(map);
  }

  static UserInfo fromJson(String json) {
    return ensureInitialized().decodeJson<UserInfo>(json);
  }
}

mixin UserInfoMappable {
  String toJson() {
    return UserInfoMapper.ensureInitialized()
        .encodeJson<UserInfo>(this as UserInfo);
  }

  Map<String, dynamic> toMap() {
    return UserInfoMapper.ensureInitialized()
        .encodeMap<UserInfo>(this as UserInfo);
  }

  UserInfoCopyWith<UserInfo, UserInfo, UserInfo> get copyWith =>
      _UserInfoCopyWithImpl<UserInfo, UserInfo>(
          this as UserInfo, $identity, $identity);
  @override
  String toString() {
    return UserInfoMapper.ensureInitialized().stringifyValue(this as UserInfo);
  }

  @override
  bool operator ==(Object other) {
    return UserInfoMapper.ensureInitialized()
        .equalsValue(this as UserInfo, other);
  }

  @override
  int get hashCode {
    return UserInfoMapper.ensureInitialized().hashValue(this as UserInfo);
  }
}

extension UserInfoValueCopy<$R, $Out> on ObjectCopyWith<$R, UserInfo, $Out> {
  UserInfoCopyWith<$R, UserInfo, $Out> get $asUserInfo =>
      $base.as((v, t, t2) => _UserInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserInfoCopyWith<$R, $In extends UserInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
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
  UserInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserInfo, $Out>
    implements UserInfoCopyWith<$R, UserInfo, $Out> {
  _UserInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserInfo> $mapper =
      UserInfoMapper.ensureInitialized();
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
  UserInfo $make(CopyWithData data) => UserInfo(
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
  UserInfoCopyWith<$R2, UserInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
