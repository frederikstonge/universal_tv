// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'live_state.dart';

class LiveStateMapper extends ClassMapperBase<LiveState> {
  LiveStateMapper._();

  static LiveStateMapper? _instance;
  static LiveStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LiveStateMapper._());
      LiveChannelMapper.ensureInitialized();
      CategoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LiveState';

  static List<LiveChannel>? _$items(LiveState v) => v.items;
  static const Field<LiveState, List<LiveChannel>> _f$items =
      Field('items', _$items, opt: true, def: const []);
  static List<Category>? _$categories(LiveState v) => v.categories;
  static const Field<LiveState, List<Category>> _f$categories =
      Field('categories', _$categories, opt: true, def: const []);

  @override
  final MappableFields<LiveState> fields = const {
    #items: _f$items,
    #categories: _f$categories,
  };

  static LiveState _instantiate(DecodingData data) {
    return LiveState(
        items: data.dec(_f$items), categories: data.dec(_f$categories));
  }

  @override
  final Function instantiate = _instantiate;

  static LiveState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LiveState>(map);
  }

  static LiveState fromJson(String json) {
    return ensureInitialized().decodeJson<LiveState>(json);
  }
}

mixin LiveStateMappable {
  String toJson() {
    return LiveStateMapper.ensureInitialized()
        .encodeJson<LiveState>(this as LiveState);
  }

  Map<String, dynamic> toMap() {
    return LiveStateMapper.ensureInitialized()
        .encodeMap<LiveState>(this as LiveState);
  }

  LiveStateCopyWith<LiveState, LiveState, LiveState> get copyWith =>
      _LiveStateCopyWithImpl<LiveState, LiveState>(
          this as LiveState, $identity, $identity);
  @override
  String toString() {
    return LiveStateMapper.ensureInitialized()
        .stringifyValue(this as LiveState);
  }

  @override
  bool operator ==(Object other) {
    return LiveStateMapper.ensureInitialized()
        .equalsValue(this as LiveState, other);
  }

  @override
  int get hashCode {
    return LiveStateMapper.ensureInitialized().hashValue(this as LiveState);
  }
}

extension LiveStateValueCopy<$R, $Out> on ObjectCopyWith<$R, LiveState, $Out> {
  LiveStateCopyWith<$R, LiveState, $Out> get $asLiveState =>
      $base.as((v, t, t2) => _LiveStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LiveStateCopyWith<$R, $In extends LiveState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, LiveChannel,
      LiveChannelCopyWith<$R, LiveChannel, LiveChannel>>? get items;
  ListCopyWith<$R, Category, CategoryCopyWith<$R, Category, Category>>?
      get categories;
  $R call({List<LiveChannel>? items, List<Category>? categories});
  LiveStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LiveStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LiveState, $Out>
    implements LiveStateCopyWith<$R, LiveState, $Out> {
  _LiveStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LiveState> $mapper =
      LiveStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, LiveChannel,
          LiveChannelCopyWith<$R, LiveChannel, LiveChannel>>?
      get items => $value.items != null
          ? ListCopyWith($value.items!, (v, t) => v.copyWith.$chain(t),
              (v) => call(items: v))
          : null;
  @override
  ListCopyWith<$R, Category, CategoryCopyWith<$R, Category, Category>>?
      get categories => $value.categories != null
          ? ListCopyWith($value.categories!, (v, t) => v.copyWith.$chain(t),
              (v) => call(categories: v))
          : null;
  @override
  $R call({Object? items = $none, Object? categories = $none}) =>
      $apply(FieldCopyWithData({
        if (items != $none) #items: items,
        if (categories != $none) #categories: categories
      }));
  @override
  LiveState $make(CopyWithData data) => LiveState(
      items: data.get(#items, or: $value.items),
      categories: data.get(#categories, or: $value.categories));

  @override
  LiveStateCopyWith<$R2, LiveState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LiveStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
