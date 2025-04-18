// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'category.dart';

class CategoryMapper extends ClassMapperBase<Category> {
  CategoryMapper._();

  static CategoryMapper? _instance;
  static CategoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CategoryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Category';

  static String _$value(Category v) => v.value;
  static const Field<Category, String> _f$value = Field('value', _$value);
  static String? _$lang(Category v) => v.lang;
  static const Field<Category, String> _f$lang =
      Field('lang', _$lang, opt: true);

  @override
  final MappableFields<Category> fields = const {
    #value: _f$value,
    #lang: _f$lang,
  };

  static Category _instantiate(DecodingData data) {
    return Category(value: data.dec(_f$value), lang: data.dec(_f$lang));
  }

  @override
  final Function instantiate = _instantiate;

  static Category fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Category>(map);
  }

  static Category fromJson(String json) {
    return ensureInitialized().decodeJson<Category>(json);
  }
}

mixin CategoryMappable {
  String toJson() {
    return CategoryMapper.ensureInitialized()
        .encodeJson<Category>(this as Category);
  }

  Map<String, dynamic> toMap() {
    return CategoryMapper.ensureInitialized()
        .encodeMap<Category>(this as Category);
  }

  CategoryCopyWith<Category, Category, Category> get copyWith =>
      _CategoryCopyWithImpl<Category, Category>(
          this as Category, $identity, $identity);
  @override
  String toString() {
    return CategoryMapper.ensureInitialized().stringifyValue(this as Category);
  }

  @override
  bool operator ==(Object other) {
    return CategoryMapper.ensureInitialized()
        .equalsValue(this as Category, other);
  }

  @override
  int get hashCode {
    return CategoryMapper.ensureInitialized().hashValue(this as Category);
  }
}

extension CategoryValueCopy<$R, $Out> on ObjectCopyWith<$R, Category, $Out> {
  CategoryCopyWith<$R, Category, $Out> get $asCategory =>
      $base.as((v, t, t2) => _CategoryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CategoryCopyWith<$R, $In extends Category, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, String? lang});
  CategoryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CategoryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Category, $Out>
    implements CategoryCopyWith<$R, Category, $Out> {
  _CategoryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Category> $mapper =
      CategoryMapper.ensureInitialized();
  @override
  $R call({String? value, Object? lang = $none}) => $apply(FieldCopyWithData(
      {if (value != null) #value: value, if (lang != $none) #lang: lang}));
  @override
  Category $make(CopyWithData data) => Category(
      value: data.get(#value, or: $value.value),
      lang: data.get(#lang, or: $value.lang));

  @override
  CategoryCopyWith<$R2, Category, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CategoryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
