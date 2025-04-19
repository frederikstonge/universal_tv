// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'category.dart';

class XTremeCodeCategoryMapper extends ClassMapperBase<XTremeCodeCategory> {
  XTremeCodeCategoryMapper._();

  static XTremeCodeCategoryMapper? _instance;
  static XTremeCodeCategoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeCategoryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeCategory';

  static int? _$categoryId(XTremeCodeCategory v) => v.categoryId;
  static const Field<XTremeCodeCategory, int> _f$categoryId =
      Field('categoryId', _$categoryId, key: r'category_id');
  static String? _$categoryName(XTremeCodeCategory v) => v.categoryName;
  static const Field<XTremeCodeCategory, String> _f$categoryName =
      Field('categoryName', _$categoryName, key: r'category_name');
  static int? _$parentId(XTremeCodeCategory v) => v.parentId;
  static const Field<XTremeCodeCategory, int> _f$parentId =
      Field('parentId', _$parentId, key: r'parent_id');

  @override
  final MappableFields<XTremeCodeCategory> fields = const {
    #categoryId: _f$categoryId,
    #categoryName: _f$categoryName,
    #parentId: _f$parentId,
  };

  static XTremeCodeCategory _instantiate(DecodingData data) {
    return XTremeCodeCategory(
        categoryId: data.dec(_f$categoryId),
        categoryName: data.dec(_f$categoryName),
        parentId: data.dec(_f$parentId));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeCategory fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeCategory>(map);
  }

  static XTremeCodeCategory fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeCategory>(json);
  }
}

mixin XTremeCodeCategoryMappable {
  String toJson() {
    return XTremeCodeCategoryMapper.ensureInitialized()
        .encodeJson<XTremeCodeCategory>(this as XTremeCodeCategory);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeCategoryMapper.ensureInitialized()
        .encodeMap<XTremeCodeCategory>(this as XTremeCodeCategory);
  }

  XTremeCodeCategoryCopyWith<XTremeCodeCategory, XTremeCodeCategory,
          XTremeCodeCategory>
      get copyWith => _XTremeCodeCategoryCopyWithImpl<XTremeCodeCategory,
          XTremeCodeCategory>(this as XTremeCodeCategory, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeCategoryMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeCategory);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeCategoryMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeCategory, other);
  }

  @override
  int get hashCode {
    return XTremeCodeCategoryMapper.ensureInitialized()
        .hashValue(this as XTremeCodeCategory);
  }
}

extension XTremeCodeCategoryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeCategory, $Out> {
  XTremeCodeCategoryCopyWith<$R, XTremeCodeCategory, $Out>
      get $asXTremeCodeCategory => $base.as(
          (v, t, t2) => _XTremeCodeCategoryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeCategoryCopyWith<$R, $In extends XTremeCodeCategory,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? categoryId, String? categoryName, int? parentId});
  XTremeCodeCategoryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeCategoryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeCategory, $Out>
    implements XTremeCodeCategoryCopyWith<$R, XTremeCodeCategory, $Out> {
  _XTremeCodeCategoryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeCategory> $mapper =
      XTremeCodeCategoryMapper.ensureInitialized();
  @override
  $R call(
          {Object? categoryId = $none,
          Object? categoryName = $none,
          Object? parentId = $none}) =>
      $apply(FieldCopyWithData({
        if (categoryId != $none) #categoryId: categoryId,
        if (categoryName != $none) #categoryName: categoryName,
        if (parentId != $none) #parentId: parentId
      }));
  @override
  XTremeCodeCategory $make(CopyWithData data) => XTremeCodeCategory(
      categoryId: data.get(#categoryId, or: $value.categoryId),
      categoryName: data.get(#categoryName, or: $value.categoryName),
      parentId: data.get(#parentId, or: $value.parentId));

  @override
  XTremeCodeCategoryCopyWith<$R2, XTremeCodeCategory, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _XTremeCodeCategoryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
