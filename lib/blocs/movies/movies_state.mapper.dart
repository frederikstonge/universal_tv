// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movies_state.dart';

class MoviesStateMapper extends ClassMapperBase<MoviesState> {
  MoviesStateMapper._();

  static MoviesStateMapper? _instance;
  static MoviesStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MoviesStateMapper._());
      StateStatusMapper.ensureInitialized();
      MovieItemMapper.ensureInitialized();
      CategoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MoviesState';

  static StateStatus _$status(MoviesState v) => v.status;
  static const Field<MoviesState, StateStatus> _f$status = Field(
    'status',
    _$status,
  );
  static List<MovieItem>? _$items(MoviesState v) => v.items;
  static const Field<MoviesState, List<MovieItem>> _f$items = Field(
    'items',
    _$items,
    opt: true,
    def: const [],
  );
  static List<Category>? _$categories(MoviesState v) => v.categories;
  static const Field<MoviesState, List<Category>> _f$categories = Field(
    'categories',
    _$categories,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<MoviesState> fields = const {
    #status: _f$status,
    #items: _f$items,
    #categories: _f$categories,
  };

  static MoviesState _instantiate(DecodingData data) {
    return MoviesState(
      status: data.dec(_f$status),
      items: data.dec(_f$items),
      categories: data.dec(_f$categories),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MoviesState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MoviesState>(map);
  }

  static MoviesState fromJson(String json) {
    return ensureInitialized().decodeJson<MoviesState>(json);
  }
}

mixin MoviesStateMappable {
  String toJson() {
    return MoviesStateMapper.ensureInitialized().encodeJson<MoviesState>(
      this as MoviesState,
    );
  }

  Map<String, dynamic> toMap() {
    return MoviesStateMapper.ensureInitialized().encodeMap<MoviesState>(
      this as MoviesState,
    );
  }

  MoviesStateCopyWith<MoviesState, MoviesState, MoviesState> get copyWith =>
      _MoviesStateCopyWithImpl<MoviesState, MoviesState>(
        this as MoviesState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MoviesStateMapper.ensureInitialized().stringifyValue(
      this as MoviesState,
    );
  }

  @override
  bool operator ==(Object other) {
    return MoviesStateMapper.ensureInitialized().equalsValue(
      this as MoviesState,
      other,
    );
  }

  @override
  int get hashCode {
    return MoviesStateMapper.ensureInitialized().hashValue(this as MoviesState);
  }
}

extension MoviesStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoviesState, $Out> {
  MoviesStateCopyWith<$R, MoviesState, $Out> get $asMoviesState =>
      $base.as((v, t, t2) => _MoviesStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MoviesStateCopyWith<$R, $In extends MoviesState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, MovieItem, MovieItemCopyWith<$R, MovieItem, MovieItem>>?
  get items;
  ListCopyWith<$R, Category, CategoryCopyWith<$R, Category, Category>>?
  get categories;
  $R call({
    StateStatus? status,
    List<MovieItem>? items,
    List<Category>? categories,
  });
  MoviesStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MoviesStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoviesState, $Out>
    implements MoviesStateCopyWith<$R, MoviesState, $Out> {
  _MoviesStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoviesState> $mapper =
      MoviesStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, MovieItem, MovieItemCopyWith<$R, MovieItem, MovieItem>>?
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
  $R call({
    StateStatus? status,
    Object? items = $none,
    Object? categories = $none,
  }) => $apply(
    FieldCopyWithData({
      if (status != null) #status: status,
      if (items != $none) #items: items,
      if (categories != $none) #categories: categories,
    }),
  );
  @override
  MoviesState $make(CopyWithData data) => MoviesState(
    status: data.get(#status, or: $value.status),
    items: data.get(#items, or: $value.items),
    categories: data.get(#categories, or: $value.categories),
  );

  @override
  MoviesStateCopyWith<$R2, MoviesState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MoviesStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

