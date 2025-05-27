// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'channel_epg.dart';

class XTremeCodeChannelEpgMapper extends ClassMapperBase<XTremeCodeChannelEpg> {
  XTremeCodeChannelEpgMapper._();

  static XTremeCodeChannelEpgMapper? _instance;
  static XTremeCodeChannelEpgMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XTremeCodeChannelEpgMapper._());
      XTremeCodeEpgListingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeChannelEpg';

  static List<XTremeCodeEpgListing>? _$epgListings(XTremeCodeChannelEpg v) =>
      v.epgListings;
  static const Field<XTremeCodeChannelEpg, List<XTremeCodeEpgListing>>
      _f$epgListings =
      Field('epgListings', _$epgListings, key: r'epg_listings');

  @override
  final MappableFields<XTremeCodeChannelEpg> fields = const {
    #epgListings: _f$epgListings,
  };

  static XTremeCodeChannelEpg _instantiate(DecodingData data) {
    return XTremeCodeChannelEpg(epgListings: data.dec(_f$epgListings));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeChannelEpg fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeChannelEpg>(map);
  }

  static XTremeCodeChannelEpg fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeChannelEpg>(json);
  }
}

mixin XTremeCodeChannelEpgMappable {
  String toJson() {
    return XTremeCodeChannelEpgMapper.ensureInitialized()
        .encodeJson<XTremeCodeChannelEpg>(this as XTremeCodeChannelEpg);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeChannelEpgMapper.ensureInitialized()
        .encodeMap<XTremeCodeChannelEpg>(this as XTremeCodeChannelEpg);
  }

  XTremeCodeChannelEpgCopyWith<XTremeCodeChannelEpg, XTremeCodeChannelEpg,
      XTremeCodeChannelEpg> get copyWith => _XTremeCodeChannelEpgCopyWithImpl<
          XTremeCodeChannelEpg, XTremeCodeChannelEpg>(
      this as XTremeCodeChannelEpg, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeChannelEpgMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeChannelEpg);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeChannelEpgMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeChannelEpg, other);
  }

  @override
  int get hashCode {
    return XTremeCodeChannelEpgMapper.ensureInitialized()
        .hashValue(this as XTremeCodeChannelEpg);
  }
}

extension XTremeCodeChannelEpgValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeChannelEpg, $Out> {
  XTremeCodeChannelEpgCopyWith<$R, XTremeCodeChannelEpg, $Out>
      get $asXTremeCodeChannelEpg => $base.as(
          (v, t, t2) => _XTremeCodeChannelEpgCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeChannelEpgCopyWith<
    $R,
    $In extends XTremeCodeChannelEpg,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      XTremeCodeEpgListing,
      XTremeCodeEpgListingCopyWith<$R, XTremeCodeEpgListing,
          XTremeCodeEpgListing>>? get epgListings;
  $R call({List<XTremeCodeEpgListing>? epgListings});
  XTremeCodeChannelEpgCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeChannelEpgCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeChannelEpg, $Out>
    implements XTremeCodeChannelEpgCopyWith<$R, XTremeCodeChannelEpg, $Out> {
  _XTremeCodeChannelEpgCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeChannelEpg> $mapper =
      XTremeCodeChannelEpgMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      XTremeCodeEpgListing,
      XTremeCodeEpgListingCopyWith<$R, XTremeCodeEpgListing,
          XTremeCodeEpgListing>>? get epgListings => $value.epgListings != null
      ? ListCopyWith($value.epgListings!, (v, t) => v.copyWith.$chain(t),
          (v) => call(epgListings: v))
      : null;
  @override
  $R call({Object? epgListings = $none}) => $apply(
      FieldCopyWithData({if (epgListings != $none) #epgListings: epgListings}));
  @override
  XTremeCodeChannelEpg $make(CopyWithData data) => XTremeCodeChannelEpg(
      epgListings: data.get(#epgListings, or: $value.epgListings));

  @override
  XTremeCodeChannelEpgCopyWith<$R2, XTremeCodeChannelEpg, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _XTremeCodeChannelEpgCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
