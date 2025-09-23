// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tv_shows_state.dart';

class TvShowsStateMapper extends ClassMapperBase<TvShowsState> {
  TvShowsStateMapper._();

  static TvShowsStateMapper? _instance;
  static TvShowsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TvShowsStateMapper._());
      TvShowItemMapper.ensureInitialized();
      CategoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TvShowsState';

  static List<TvShowItem>? _$items(TvShowsState v) => v.items;
  static const Field<TvShowsState, List<TvShowItem>> _f$items = Field(
    'items',
    _$items,
    opt: true,
    def: const [],
  );
  static List<Category>? _$categories(TvShowsState v) => v.categories;
  static const Field<TvShowsState, List<Category>> _f$categories = Field(
    'categories',
    _$categories,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<TvShowsState> fields = const {
    #items: _f$items,
    #categories: _f$categories,
  };

  static TvShowsState _instantiate(DecodingData data) {
    return TvShowsState(
      items: data.dec(_f$items),
      categories: data.dec(_f$categories),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TvShowsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TvShowsState>(map);
  }

  static TvShowsState fromJson(String json) {
    return ensureInitialized().decodeJson<TvShowsState>(json);
  }
}

mixin TvShowsStateMappable {
  String toJson() {
    return TvShowsStateMapper.ensureInitialized().encodeJson<TvShowsState>(
      this as TvShowsState,
    );
  }

  Map<String, dynamic> toMap() {
    return TvShowsStateMapper.ensureInitialized().encodeMap<TvShowsState>(
      this as TvShowsState,
    );
  }

  TvShowsStateCopyWith<TvShowsState, TvShowsState, TvShowsState> get copyWith =>
      _TvShowsStateCopyWithImpl<TvShowsState, TvShowsState>(
        this as TvShowsState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TvShowsStateMapper.ensureInitialized().stringifyValue(
      this as TvShowsState,
    );
  }

  @override
  bool operator ==(Object other) {
    return TvShowsStateMapper.ensureInitialized().equalsValue(
      this as TvShowsState,
      other,
    );
  }

  @override
  int get hashCode {
    return TvShowsStateMapper.ensureInitialized().hashValue(
      this as TvShowsState,
    );
  }
}

extension TvShowsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TvShowsState, $Out> {
  TvShowsStateCopyWith<$R, TvShowsState, $Out> get $asTvShowsState =>
      $base.as((v, t, t2) => _TvShowsStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TvShowsStateCopyWith<$R, $In extends TvShowsState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, TvShowItem, TvShowItemCopyWith<$R, TvShowItem, TvShowItem>>?
  get items;
  ListCopyWith<$R, Category, CategoryCopyWith<$R, Category, Category>>?
  get categories;
  $R call({List<TvShowItem>? items, List<Category>? categories});
  TvShowsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TvShowsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TvShowsState, $Out>
    implements TvShowsStateCopyWith<$R, TvShowsState, $Out> {
  _TvShowsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TvShowsState> $mapper =
      TvShowsStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, TvShowItem, TvShowItemCopyWith<$R, TvShowItem, TvShowItem>>?
  get items => $value.items != null
      ? ListCopyWith(
          $value.items!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(items: v),
        )
      : null;
  @override
  ListCopyWith<$R, Category, CategoryCopyWith<$R, Category, Category>>?
  get categories => $value.categories != null
      ? ListCopyWith(
          $value.categories!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(categories: v),
        )
      : null;
  @override
  $R call({Object? items = $none, Object? categories = $none}) => $apply(
    FieldCopyWithData({
      if (items != $none) #items: items,
      if (categories != $none) #categories: categories,
    }),
  );
  @override
  TvShowsState $make(CopyWithData data) => TvShowsState(
    items: data.get(#items, or: $value.items),
    categories: data.get(#categories, or: $value.categories),
  );

  @override
  TvShowsStateCopyWith<$R2, TvShowsState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TvShowsStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

