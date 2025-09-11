// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tv_show_item.dart';

class TvShowItemMapper extends ClassMapperBase<TvShowItem> {
  TvShowItemMapper._();

  static TvShowItemMapper? _instance;
  static TvShowItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TvShowItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TvShowItem';

  static int _$seriesId(TvShowItem v) => v.seriesId;
  static const Field<TvShowItem, int> _f$seriesId =
      Field('seriesId', _$seriesId);
  static String _$name(TvShowItem v) => v.name;
  static const Field<TvShowItem, String> _f$name = Field('name', _$name);
  static String _$categoryId(TvShowItem v) => v.categoryId;
  static const Field<TvShowItem, String> _f$categoryId =
      Field('categoryId', _$categoryId);
  static String? _$posterUrl(TvShowItem v) => v.posterUrl;
  static const Field<TvShowItem, String> _f$posterUrl =
      Field('posterUrl', _$posterUrl, opt: true);
  static String _$providerName(TvShowItem v) => v.providerName;
  static const Field<TvShowItem, String> _f$providerName =
      Field('providerName', _$providerName);

  @override
  final MappableFields<TvShowItem> fields = const {
    #seriesId: _f$seriesId,
    #name: _f$name,
    #categoryId: _f$categoryId,
    #posterUrl: _f$posterUrl,
    #providerName: _f$providerName,
  };

  static TvShowItem _instantiate(DecodingData data) {
    return TvShowItem(
        seriesId: data.dec(_f$seriesId),
        name: data.dec(_f$name),
        categoryId: data.dec(_f$categoryId),
        posterUrl: data.dec(_f$posterUrl),
        providerName: data.dec(_f$providerName));
  }

  @override
  final Function instantiate = _instantiate;

  static TvShowItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TvShowItem>(map);
  }

  static TvShowItem fromJson(String json) {
    return ensureInitialized().decodeJson<TvShowItem>(json);
  }
}

mixin TvShowItemMappable {
  String toJson() {
    return TvShowItemMapper.ensureInitialized()
        .encodeJson<TvShowItem>(this as TvShowItem);
  }

  Map<String, dynamic> toMap() {
    return TvShowItemMapper.ensureInitialized()
        .encodeMap<TvShowItem>(this as TvShowItem);
  }

  TvShowItemCopyWith<TvShowItem, TvShowItem, TvShowItem> get copyWith =>
      _TvShowItemCopyWithImpl<TvShowItem, TvShowItem>(
          this as TvShowItem, $identity, $identity);
  @override
  String toString() {
    return TvShowItemMapper.ensureInitialized()
        .stringifyValue(this as TvShowItem);
  }

  @override
  bool operator ==(Object other) {
    return TvShowItemMapper.ensureInitialized()
        .equalsValue(this as TvShowItem, other);
  }

  @override
  int get hashCode {
    return TvShowItemMapper.ensureInitialized().hashValue(this as TvShowItem);
  }
}

extension TvShowItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TvShowItem, $Out> {
  TvShowItemCopyWith<$R, TvShowItem, $Out> get $asTvShowItem =>
      $base.as((v, t, t2) => _TvShowItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TvShowItemCopyWith<$R, $In extends TvShowItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? seriesId,
      String? name,
      String? categoryId,
      String? posterUrl,
      String? providerName});
  TvShowItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TvShowItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TvShowItem, $Out>
    implements TvShowItemCopyWith<$R, TvShowItem, $Out> {
  _TvShowItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TvShowItem> $mapper =
      TvShowItemMapper.ensureInitialized();
  @override
  $R call(
          {int? seriesId,
          String? name,
          String? categoryId,
          Object? posterUrl = $none,
          String? providerName}) =>
      $apply(FieldCopyWithData({
        if (seriesId != null) #seriesId: seriesId,
        if (name != null) #name: name,
        if (categoryId != null) #categoryId: categoryId,
        if (posterUrl != $none) #posterUrl: posterUrl,
        if (providerName != null) #providerName: providerName
      }));
  @override
  TvShowItem $make(CopyWithData data) => TvShowItem(
      seriesId: data.get(#seriesId, or: $value.seriesId),
      name: data.get(#name, or: $value.name),
      categoryId: data.get(#categoryId, or: $value.categoryId),
      posterUrl: data.get(#posterUrl, or: $value.posterUrl),
      providerName: data.get(#providerName, or: $value.providerName));

  @override
  TvShowItemCopyWith<$R2, TvShowItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TvShowItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
