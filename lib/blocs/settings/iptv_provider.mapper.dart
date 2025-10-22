// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'iptv_provider.dart';

class IptvProviderTypeMapper extends EnumMapper<IptvProviderType> {
  IptvProviderTypeMapper._();

  static IptvProviderTypeMapper? _instance;
  static IptvProviderTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IptvProviderTypeMapper._());
    }
    return _instance!;
  }

  static IptvProviderType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  IptvProviderType decode(dynamic value) {
    switch (value) {
      case r'm3u':
        return IptvProviderType.m3u;
      case r'xtream':
        return IptvProviderType.xtream;
      case r'xmltv':
        return IptvProviderType.xmltv;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(IptvProviderType self) {
    switch (self) {
      case IptvProviderType.m3u:
        return r'm3u';
      case IptvProviderType.xtream:
        return r'xtream';
      case IptvProviderType.xmltv:
        return r'xmltv';
    }
  }
}

extension IptvProviderTypeMapperExtension on IptvProviderType {
  String toValue() {
    IptvProviderTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<IptvProviderType>(this) as String;
  }
}

class IptvProviderMapper extends ClassMapperBase<IptvProvider> {
  IptvProviderMapper._();

  static IptvProviderMapper? _instance;
  static IptvProviderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IptvProviderMapper._());
      M3uIptvProviderMapper.ensureInitialized();
      XtreamIptvProviderMapper.ensureInitialized();
      XmltvIptvProviderMapper.ensureInitialized();
      IptvProviderTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'IptvProvider';

  static String _$id(IptvProvider v) => v.id;
  static const Field<IptvProvider, String> _f$id = Field('id', _$id);
  static String _$name(IptvProvider v) => v.name;
  static const Field<IptvProvider, String> _f$name = Field('name', _$name);
  static IptvProviderType _$type(IptvProvider v) => v.type;
  static const Field<IptvProvider, IptvProviderType> _f$type = Field(
    'type',
    _$type,
  );
  static int _$order(IptvProvider v) => v.order;
  static const Field<IptvProvider, int> _f$order = Field('order', _$order);

  @override
  final MappableFields<IptvProvider> fields = const {
    #id: _f$id,
    #name: _f$name,
    #type: _f$type,
    #order: _f$order,
  };

  static IptvProvider _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'IptvProvider',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static IptvProvider fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IptvProvider>(map);
  }

  static IptvProvider fromJson(String json) {
    return ensureInitialized().decodeJson<IptvProvider>(json);
  }
}

mixin IptvProviderMappable {
  String toJson();
  Map<String, dynamic> toMap();
  IptvProviderCopyWith<IptvProvider, IptvProvider, IptvProvider> get copyWith;
}

abstract class IptvProviderCopyWith<$R, $In extends IptvProvider, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, int? order});
  IptvProviderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class M3uIptvProviderMapper extends SubClassMapperBase<M3uIptvProvider> {
  M3uIptvProviderMapper._();

  static M3uIptvProviderMapper? _instance;
  static M3uIptvProviderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = M3uIptvProviderMapper._());
      IptvProviderMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'M3uIptvProvider';

  static String _$name(M3uIptvProvider v) => v.name;
  static const Field<M3uIptvProvider, String> _f$name = Field('name', _$name);
  static int _$order(M3uIptvProvider v) => v.order;
  static const Field<M3uIptvProvider, int> _f$order = Field('order', _$order);
  static List<String> _$urls(M3uIptvProvider v) => v.urls;
  static const Field<M3uIptvProvider, List<String>> _f$urls = Field(
    'urls',
    _$urls,
  );
  static String _$id(M3uIptvProvider v) => v.id;
  static const Field<M3uIptvProvider, String> _f$id = Field(
    'id',
    _$id,
    mode: FieldMode.member,
  );
  static IptvProviderType _$type(M3uIptvProvider v) => v.type;
  static const Field<M3uIptvProvider, IptvProviderType> _f$type = Field(
    'type',
    _$type,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<M3uIptvProvider> fields = const {
    #name: _f$name,
    #order: _f$order,
    #urls: _f$urls,
    #id: _f$id,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'm3u';
  @override
  late final ClassMapperBase superMapper =
      IptvProviderMapper.ensureInitialized();

  static M3uIptvProvider _instantiate(DecodingData data) {
    return M3uIptvProvider(
      name: data.dec(_f$name),
      order: data.dec(_f$order),
      urls: data.dec(_f$urls),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static M3uIptvProvider fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<M3uIptvProvider>(map);
  }

  static M3uIptvProvider fromJson(String json) {
    return ensureInitialized().decodeJson<M3uIptvProvider>(json);
  }
}

mixin M3uIptvProviderMappable {
  String toJson() {
    return M3uIptvProviderMapper.ensureInitialized()
        .encodeJson<M3uIptvProvider>(this as M3uIptvProvider);
  }

  Map<String, dynamic> toMap() {
    return M3uIptvProviderMapper.ensureInitialized().encodeMap<M3uIptvProvider>(
      this as M3uIptvProvider,
    );
  }

  M3uIptvProviderCopyWith<M3uIptvProvider, M3uIptvProvider, M3uIptvProvider>
  get copyWith =>
      _M3uIptvProviderCopyWithImpl<M3uIptvProvider, M3uIptvProvider>(
        this as M3uIptvProvider,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return M3uIptvProviderMapper.ensureInitialized().stringifyValue(
      this as M3uIptvProvider,
    );
  }

  @override
  bool operator ==(Object other) {
    return M3uIptvProviderMapper.ensureInitialized().equalsValue(
      this as M3uIptvProvider,
      other,
    );
  }

  @override
  int get hashCode {
    return M3uIptvProviderMapper.ensureInitialized().hashValue(
      this as M3uIptvProvider,
    );
  }
}

extension M3uIptvProviderValueCopy<$R, $Out>
    on ObjectCopyWith<$R, M3uIptvProvider, $Out> {
  M3uIptvProviderCopyWith<$R, M3uIptvProvider, $Out> get $asM3uIptvProvider =>
      $base.as((v, t, t2) => _M3uIptvProviderCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class M3uIptvProviderCopyWith<$R, $In extends M3uIptvProvider, $Out>
    implements IptvProviderCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get urls;
  @override
  $R call({String? name, int? order, List<String>? urls});
  M3uIptvProviderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _M3uIptvProviderCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, M3uIptvProvider, $Out>
    implements M3uIptvProviderCopyWith<$R, M3uIptvProvider, $Out> {
  _M3uIptvProviderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<M3uIptvProvider> $mapper =
      M3uIptvProviderMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get urls =>
      ListCopyWith(
        $value.urls,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(urls: v),
      );
  @override
  $R call({String? name, int? order, List<String>? urls}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (order != null) #order: order,
      if (urls != null) #urls: urls,
    }),
  );
  @override
  M3uIptvProvider $make(CopyWithData data) => M3uIptvProvider(
    name: data.get(#name, or: $value.name),
    order: data.get(#order, or: $value.order),
    urls: data.get(#urls, or: $value.urls),
  );

  @override
  M3uIptvProviderCopyWith<$R2, M3uIptvProvider, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _M3uIptvProviderCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class XtreamIptvProviderMapper extends SubClassMapperBase<XtreamIptvProvider> {
  XtreamIptvProviderMapper._();

  static XtreamIptvProviderMapper? _instance;
  static XtreamIptvProviderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XtreamIptvProviderMapper._());
      IptvProviderMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'XtreamIptvProvider';

  static String _$name(XtreamIptvProvider v) => v.name;
  static const Field<XtreamIptvProvider, String> _f$name = Field(
    'name',
    _$name,
  );
  static int _$order(XtreamIptvProvider v) => v.order;
  static const Field<XtreamIptvProvider, int> _f$order = Field(
    'order',
    _$order,
  );
  static String _$url(XtreamIptvProvider v) => v.url;
  static const Field<XtreamIptvProvider, String> _f$url = Field('url', _$url);
  static String _$userName(XtreamIptvProvider v) => v.userName;
  static const Field<XtreamIptvProvider, String> _f$userName = Field(
    'userName',
    _$userName,
  );
  static String _$password(XtreamIptvProvider v) => v.password;
  static const Field<XtreamIptvProvider, String> _f$password = Field(
    'password',
    _$password,
  );
  static Duration _$epgExpiration(XtreamIptvProvider v) => v.epgExpiration;
  static const Field<XtreamIptvProvider, Duration> _f$epgExpiration = Field(
    'epgExpiration',
    _$epgExpiration,
  );
  static String _$id(XtreamIptvProvider v) => v.id;
  static const Field<XtreamIptvProvider, String> _f$id = Field(
    'id',
    _$id,
    mode: FieldMode.member,
  );
  static IptvProviderType _$type(XtreamIptvProvider v) => v.type;
  static const Field<XtreamIptvProvider, IptvProviderType> _f$type = Field(
    'type',
    _$type,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<XtreamIptvProvider> fields = const {
    #name: _f$name,
    #order: _f$order,
    #url: _f$url,
    #userName: _f$userName,
    #password: _f$password,
    #epgExpiration: _f$epgExpiration,
    #id: _f$id,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'xtream';
  @override
  late final ClassMapperBase superMapper =
      IptvProviderMapper.ensureInitialized();

  static XtreamIptvProvider _instantiate(DecodingData data) {
    return XtreamIptvProvider(
      name: data.dec(_f$name),
      order: data.dec(_f$order),
      url: data.dec(_f$url),
      userName: data.dec(_f$userName),
      password: data.dec(_f$password),
      epgExpiration: data.dec(_f$epgExpiration),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static XtreamIptvProvider fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XtreamIptvProvider>(map);
  }

  static XtreamIptvProvider fromJson(String json) {
    return ensureInitialized().decodeJson<XtreamIptvProvider>(json);
  }
}

mixin XtreamIptvProviderMappable {
  String toJson() {
    return XtreamIptvProviderMapper.ensureInitialized()
        .encodeJson<XtreamIptvProvider>(this as XtreamIptvProvider);
  }

  Map<String, dynamic> toMap() {
    return XtreamIptvProviderMapper.ensureInitialized()
        .encodeMap<XtreamIptvProvider>(this as XtreamIptvProvider);
  }

  XtreamIptvProviderCopyWith<
    XtreamIptvProvider,
    XtreamIptvProvider,
    XtreamIptvProvider
  >
  get copyWith =>
      _XtreamIptvProviderCopyWithImpl<XtreamIptvProvider, XtreamIptvProvider>(
        this as XtreamIptvProvider,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return XtreamIptvProviderMapper.ensureInitialized().stringifyValue(
      this as XtreamIptvProvider,
    );
  }

  @override
  bool operator ==(Object other) {
    return XtreamIptvProviderMapper.ensureInitialized().equalsValue(
      this as XtreamIptvProvider,
      other,
    );
  }

  @override
  int get hashCode {
    return XtreamIptvProviderMapper.ensureInitialized().hashValue(
      this as XtreamIptvProvider,
    );
  }
}

extension XtreamIptvProviderValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XtreamIptvProvider, $Out> {
  XtreamIptvProviderCopyWith<$R, XtreamIptvProvider, $Out>
  get $asXtreamIptvProvider => $base.as(
    (v, t, t2) => _XtreamIptvProviderCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class XtreamIptvProviderCopyWith<
  $R,
  $In extends XtreamIptvProvider,
  $Out
>
    implements IptvProviderCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? name,
    int? order,
    String? url,
    String? userName,
    String? password,
    Duration? epgExpiration,
  });
  XtreamIptvProviderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _XtreamIptvProviderCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XtreamIptvProvider, $Out>
    implements XtreamIptvProviderCopyWith<$R, XtreamIptvProvider, $Out> {
  _XtreamIptvProviderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XtreamIptvProvider> $mapper =
      XtreamIptvProviderMapper.ensureInitialized();
  @override
  $R call({
    String? name,
    int? order,
    String? url,
    String? userName,
    String? password,
    Duration? epgExpiration,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (order != null) #order: order,
      if (url != null) #url: url,
      if (userName != null) #userName: userName,
      if (password != null) #password: password,
      if (epgExpiration != null) #epgExpiration: epgExpiration,
    }),
  );
  @override
  XtreamIptvProvider $make(CopyWithData data) => XtreamIptvProvider(
    name: data.get(#name, or: $value.name),
    order: data.get(#order, or: $value.order),
    url: data.get(#url, or: $value.url),
    userName: data.get(#userName, or: $value.userName),
    password: data.get(#password, or: $value.password),
    epgExpiration: data.get(#epgExpiration, or: $value.epgExpiration),
  );

  @override
  XtreamIptvProviderCopyWith<$R2, XtreamIptvProvider, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _XtreamIptvProviderCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class XmltvIptvProviderMapper extends SubClassMapperBase<XmltvIptvProvider> {
  XmltvIptvProviderMapper._();

  static XmltvIptvProviderMapper? _instance;
  static XmltvIptvProviderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XmltvIptvProviderMapper._());
      IptvProviderMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'XmltvIptvProvider';

  static String _$name(XmltvIptvProvider v) => v.name;
  static const Field<XmltvIptvProvider, String> _f$name = Field('name', _$name);
  static int _$order(XmltvIptvProvider v) => v.order;
  static const Field<XmltvIptvProvider, int> _f$order = Field('order', _$order);
  static String _$url(XmltvIptvProvider v) => v.url;
  static const Field<XmltvIptvProvider, String> _f$url = Field('url', _$url);
  static Duration _$epgExpiration(XmltvIptvProvider v) => v.epgExpiration;
  static const Field<XmltvIptvProvider, Duration> _f$epgExpiration = Field(
    'epgExpiration',
    _$epgExpiration,
  );
  static String _$id(XmltvIptvProvider v) => v.id;
  static const Field<XmltvIptvProvider, String> _f$id = Field(
    'id',
    _$id,
    mode: FieldMode.member,
  );
  static IptvProviderType _$type(XmltvIptvProvider v) => v.type;
  static const Field<XmltvIptvProvider, IptvProviderType> _f$type = Field(
    'type',
    _$type,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<XmltvIptvProvider> fields = const {
    #name: _f$name,
    #order: _f$order,
    #url: _f$url,
    #epgExpiration: _f$epgExpiration,
    #id: _f$id,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'xmltv';
  @override
  late final ClassMapperBase superMapper =
      IptvProviderMapper.ensureInitialized();

  static XmltvIptvProvider _instantiate(DecodingData data) {
    return XmltvIptvProvider(
      name: data.dec(_f$name),
      order: data.dec(_f$order),
      url: data.dec(_f$url),
      epgExpiration: data.dec(_f$epgExpiration),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static XmltvIptvProvider fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XmltvIptvProvider>(map);
  }

  static XmltvIptvProvider fromJson(String json) {
    return ensureInitialized().decodeJson<XmltvIptvProvider>(json);
  }
}

mixin XmltvIptvProviderMappable {
  String toJson() {
    return XmltvIptvProviderMapper.ensureInitialized()
        .encodeJson<XmltvIptvProvider>(this as XmltvIptvProvider);
  }

  Map<String, dynamic> toMap() {
    return XmltvIptvProviderMapper.ensureInitialized()
        .encodeMap<XmltvIptvProvider>(this as XmltvIptvProvider);
  }

  XmltvIptvProviderCopyWith<
    XmltvIptvProvider,
    XmltvIptvProvider,
    XmltvIptvProvider
  >
  get copyWith =>
      _XmltvIptvProviderCopyWithImpl<XmltvIptvProvider, XmltvIptvProvider>(
        this as XmltvIptvProvider,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return XmltvIptvProviderMapper.ensureInitialized().stringifyValue(
      this as XmltvIptvProvider,
    );
  }

  @override
  bool operator ==(Object other) {
    return XmltvIptvProviderMapper.ensureInitialized().equalsValue(
      this as XmltvIptvProvider,
      other,
    );
  }

  @override
  int get hashCode {
    return XmltvIptvProviderMapper.ensureInitialized().hashValue(
      this as XmltvIptvProvider,
    );
  }
}

extension XmltvIptvProviderValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XmltvIptvProvider, $Out> {
  XmltvIptvProviderCopyWith<$R, XmltvIptvProvider, $Out>
  get $asXmltvIptvProvider => $base.as(
    (v, t, t2) => _XmltvIptvProviderCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class XmltvIptvProviderCopyWith<
  $R,
  $In extends XmltvIptvProvider,
  $Out
>
    implements IptvProviderCopyWith<$R, $In, $Out> {
  @override
  $R call({String? name, int? order, String? url, Duration? epgExpiration});
  XmltvIptvProviderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _XmltvIptvProviderCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XmltvIptvProvider, $Out>
    implements XmltvIptvProviderCopyWith<$R, XmltvIptvProvider, $Out> {
  _XmltvIptvProviderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XmltvIptvProvider> $mapper =
      XmltvIptvProviderMapper.ensureInitialized();
  @override
  $R call({String? name, int? order, String? url, Duration? epgExpiration}) =>
      $apply(
        FieldCopyWithData({
          if (name != null) #name: name,
          if (order != null) #order: order,
          if (url != null) #url: url,
          if (epgExpiration != null) #epgExpiration: epgExpiration,
        }),
      );
  @override
  XmltvIptvProvider $make(CopyWithData data) => XmltvIptvProvider(
    name: data.get(#name, or: $value.name),
    order: data.get(#order, or: $value.order),
    url: data.get(#url, or: $value.url),
    epgExpiration: data.get(#epgExpiration, or: $value.epgExpiration),
  );

  @override
  XmltvIptvProviderCopyWith<$R2, XmltvIptvProvider, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _XmltvIptvProviderCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

