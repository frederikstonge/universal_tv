// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'actor.dart';

class ActorMapper extends ClassMapperBase<Actor> {
  ActorMapper._();

  static ActorMapper? _instance;
  static ActorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ActorMapper._());
      ImageMapper.ensureInitialized();
      UrlMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Actor';

  static String _$name(Actor v) => v.name;
  static const Field<Actor, String> _f$name = Field('name', _$name);
  static bool _$guest(Actor v) => v.guest;
  static const Field<Actor, bool> _f$guest = Field('guest', _$guest);
  static List<Image> _$images(Actor v) => v.images;
  static const Field<Actor, List<Image>> _f$images = Field('images', _$images);
  static List<Url> _$urls(Actor v) => v.urls;
  static const Field<Actor, List<Url>> _f$urls = Field('urls', _$urls);
  static String? _$role(Actor v) => v.role;
  static const Field<Actor, String> _f$role = Field('role', _$role, opt: true);

  @override
  final MappableFields<Actor> fields = const {
    #name: _f$name,
    #guest: _f$guest,
    #images: _f$images,
    #urls: _f$urls,
    #role: _f$role,
  };

  static Actor _instantiate(DecodingData data) {
    return Actor(
        name: data.dec(_f$name),
        guest: data.dec(_f$guest),
        images: data.dec(_f$images),
        urls: data.dec(_f$urls),
        role: data.dec(_f$role));
  }

  @override
  final Function instantiate = _instantiate;

  static Actor fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Actor>(map);
  }

  static Actor fromJson(String json) {
    return ensureInitialized().decodeJson<Actor>(json);
  }
}

mixin ActorMappable {
  String toJson() {
    return ActorMapper.ensureInitialized().encodeJson<Actor>(this as Actor);
  }

  Map<String, dynamic> toMap() {
    return ActorMapper.ensureInitialized().encodeMap<Actor>(this as Actor);
  }

  ActorCopyWith<Actor, Actor, Actor> get copyWith =>
      _ActorCopyWithImpl<Actor, Actor>(this as Actor, $identity, $identity);
  @override
  String toString() {
    return ActorMapper.ensureInitialized().stringifyValue(this as Actor);
  }

  @override
  bool operator ==(Object other) {
    return ActorMapper.ensureInitialized().equalsValue(this as Actor, other);
  }

  @override
  int get hashCode {
    return ActorMapper.ensureInitialized().hashValue(this as Actor);
  }
}

extension ActorValueCopy<$R, $Out> on ObjectCopyWith<$R, Actor, $Out> {
  ActorCopyWith<$R, Actor, $Out> get $asActor =>
      $base.as((v, t, t2) => _ActorCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ActorCopyWith<$R, $In extends Actor, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Image, ImageCopyWith<$R, Image, Image>> get images;
  ListCopyWith<$R, Url, UrlCopyWith<$R, Url, Url>> get urls;
  $R call(
      {String? name,
      bool? guest,
      List<Image>? images,
      List<Url>? urls,
      String? role});
  ActorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ActorCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Actor, $Out>
    implements ActorCopyWith<$R, Actor, $Out> {
  _ActorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Actor> $mapper = ActorMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Image, ImageCopyWith<$R, Image, Image>> get images =>
      ListCopyWith($value.images, (v, t) => v.copyWith.$chain(t),
          (v) => call(images: v));
  @override
  ListCopyWith<$R, Url, UrlCopyWith<$R, Url, Url>> get urls => ListCopyWith(
      $value.urls, (v, t) => v.copyWith.$chain(t), (v) => call(urls: v));
  @override
  $R call(
          {String? name,
          bool? guest,
          List<Image>? images,
          List<Url>? urls,
          Object? role = $none}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (guest != null) #guest: guest,
        if (images != null) #images: images,
        if (urls != null) #urls: urls,
        if (role != $none) #role: role
      }));
  @override
  Actor $make(CopyWithData data) => Actor(
      name: data.get(#name, or: $value.name),
      guest: data.get(#guest, or: $value.guest),
      images: data.get(#images, or: $value.images),
      urls: data.get(#urls, or: $value.urls),
      role: data.get(#role, or: $value.role));

  @override
  ActorCopyWith<$R2, Actor, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ActorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
