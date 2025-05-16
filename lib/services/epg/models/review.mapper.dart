// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'review.dart';

class ReviewMapper extends ClassMapperBase<Review> {
  ReviewMapper._();

  static ReviewMapper? _instance;
  static ReviewMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReviewMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Review';

  static String _$type(Review v) => v.type;
  static const Field<Review, String> _f$type = Field('type', _$type);
  static String _$value(Review v) => v.value;
  static const Field<Review, String> _f$value = Field('value', _$value);
  static String? _$source(Review v) => v.source;
  static const Field<Review, String> _f$source =
      Field('source', _$source, opt: true);
  static String? _$reviewer(Review v) => v.reviewer;
  static const Field<Review, String> _f$reviewer =
      Field('reviewer', _$reviewer, opt: true);
  static String? _$lang(Review v) => v.lang;
  static const Field<Review, String> _f$lang = Field('lang', _$lang, opt: true);

  @override
  final MappableFields<Review> fields = const {
    #type: _f$type,
    #value: _f$value,
    #source: _f$source,
    #reviewer: _f$reviewer,
    #lang: _f$lang,
  };

  static Review _instantiate(DecodingData data) {
    return Review(
        type: data.dec(_f$type),
        value: data.dec(_f$value),
        source: data.dec(_f$source),
        reviewer: data.dec(_f$reviewer),
        lang: data.dec(_f$lang));
  }

  @override
  final Function instantiate = _instantiate;

  static Review fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Review>(map);
  }

  static Review fromJson(String json) {
    return ensureInitialized().decodeJson<Review>(json);
  }
}

mixin ReviewMappable {
  String toJson() {
    return ReviewMapper.ensureInitialized().encodeJson<Review>(this as Review);
  }

  Map<String, dynamic> toMap() {
    return ReviewMapper.ensureInitialized().encodeMap<Review>(this as Review);
  }

  ReviewCopyWith<Review, Review, Review> get copyWith =>
      _ReviewCopyWithImpl<Review, Review>(this as Review, $identity, $identity);
  @override
  String toString() {
    return ReviewMapper.ensureInitialized().stringifyValue(this as Review);
  }

  @override
  bool operator ==(Object other) {
    return ReviewMapper.ensureInitialized().equalsValue(this as Review, other);
  }

  @override
  int get hashCode {
    return ReviewMapper.ensureInitialized().hashValue(this as Review);
  }
}

extension ReviewValueCopy<$R, $Out> on ObjectCopyWith<$R, Review, $Out> {
  ReviewCopyWith<$R, Review, $Out> get $asReview =>
      $base.as((v, t, t2) => _ReviewCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ReviewCopyWith<$R, $In extends Review, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? type,
      String? value,
      String? source,
      String? reviewer,
      String? lang});
  ReviewCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ReviewCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Review, $Out>
    implements ReviewCopyWith<$R, Review, $Out> {
  _ReviewCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Review> $mapper = ReviewMapper.ensureInitialized();
  @override
  $R call(
          {String? type,
          String? value,
          Object? source = $none,
          Object? reviewer = $none,
          Object? lang = $none}) =>
      $apply(FieldCopyWithData({
        if (type != null) #type: type,
        if (value != null) #value: value,
        if (source != $none) #source: source,
        if (reviewer != $none) #reviewer: reviewer,
        if (lang != $none) #lang: lang
      }));
  @override
  Review $make(CopyWithData data) => Review(
      type: data.get(#type, or: $value.type),
      value: data.get(#value, or: $value.value),
      source: data.get(#source, or: $value.source),
      reviewer: data.get(#reviewer, or: $value.reviewer),
      lang: data.get(#lang, or: $value.lang));

  @override
  ReviewCopyWith<$R2, Review, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ReviewCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
