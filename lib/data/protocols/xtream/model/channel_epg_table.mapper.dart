// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'channel_epg_table.dart';

class XTremeCodeChannelEpgTableMapper
    extends ClassMapperBase<XTremeCodeChannelEpgTable> {
  XTremeCodeChannelEpgTableMapper._();

  static XTremeCodeChannelEpgTableMapper? _instance;
  static XTremeCodeChannelEpgTableMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = XTremeCodeChannelEpgTableMapper._());
      XTremeCodeEpgListingTableMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'XTremeCodeChannelEpgTable';

  static List<XTremeCodeEpgListingTable>? _$epgListings(
          XTremeCodeChannelEpgTable v) =>
      v.epgListings;
  static const Field<XTremeCodeChannelEpgTable, List<XTremeCodeEpgListingTable>>
      _f$epgListings =
      Field('epgListings', _$epgListings, key: r'epg_listings');

  @override
  final MappableFields<XTremeCodeChannelEpgTable> fields = const {
    #epgListings: _f$epgListings,
  };

  static XTremeCodeChannelEpgTable _instantiate(DecodingData data) {
    return XTremeCodeChannelEpgTable(epgListings: data.dec(_f$epgListings));
  }

  @override
  final Function instantiate = _instantiate;

  static XTremeCodeChannelEpgTable fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XTremeCodeChannelEpgTable>(map);
  }

  static XTremeCodeChannelEpgTable fromJson(String json) {
    return ensureInitialized().decodeJson<XTremeCodeChannelEpgTable>(json);
  }
}

mixin XTremeCodeChannelEpgTableMappable {
  String toJson() {
    return XTremeCodeChannelEpgTableMapper.ensureInitialized()
        .encodeJson<XTremeCodeChannelEpgTable>(
            this as XTremeCodeChannelEpgTable);
  }

  Map<String, dynamic> toMap() {
    return XTremeCodeChannelEpgTableMapper.ensureInitialized()
        .encodeMap<XTremeCodeChannelEpgTable>(
            this as XTremeCodeChannelEpgTable);
  }

  XTremeCodeChannelEpgTableCopyWith<XTremeCodeChannelEpgTable,
          XTremeCodeChannelEpgTable, XTremeCodeChannelEpgTable>
      get copyWith => _XTremeCodeChannelEpgTableCopyWithImpl<
              XTremeCodeChannelEpgTable, XTremeCodeChannelEpgTable>(
          this as XTremeCodeChannelEpgTable, $identity, $identity);
  @override
  String toString() {
    return XTremeCodeChannelEpgTableMapper.ensureInitialized()
        .stringifyValue(this as XTremeCodeChannelEpgTable);
  }

  @override
  bool operator ==(Object other) {
    return XTremeCodeChannelEpgTableMapper.ensureInitialized()
        .equalsValue(this as XTremeCodeChannelEpgTable, other);
  }

  @override
  int get hashCode {
    return XTremeCodeChannelEpgTableMapper.ensureInitialized()
        .hashValue(this as XTremeCodeChannelEpgTable);
  }
}

extension XTremeCodeChannelEpgTableValueCopy<$R, $Out>
    on ObjectCopyWith<$R, XTremeCodeChannelEpgTable, $Out> {
  XTremeCodeChannelEpgTableCopyWith<$R, XTremeCodeChannelEpgTable, $Out>
      get $asXTremeCodeChannelEpgTable => $base.as((v, t, t2) =>
          _XTremeCodeChannelEpgTableCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XTremeCodeChannelEpgTableCopyWith<
    $R,
    $In extends XTremeCodeChannelEpgTable,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      XTremeCodeEpgListingTable,
      XTremeCodeEpgListingTableCopyWith<$R, XTremeCodeEpgListingTable,
          XTremeCodeEpgListingTable>>? get epgListings;
  $R call({List<XTremeCodeEpgListingTable>? epgListings});
  XTremeCodeChannelEpgTableCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _XTremeCodeChannelEpgTableCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XTremeCodeChannelEpgTable, $Out>
    implements
        XTremeCodeChannelEpgTableCopyWith<$R, XTremeCodeChannelEpgTable, $Out> {
  _XTremeCodeChannelEpgTableCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XTremeCodeChannelEpgTable> $mapper =
      XTremeCodeChannelEpgTableMapper.ensureInitialized();
  @override
  ListCopyWith<
          $R,
          XTremeCodeEpgListingTable,
          XTremeCodeEpgListingTableCopyWith<$R, XTremeCodeEpgListingTable,
              XTremeCodeEpgListingTable>>?
      get epgListings => $value.epgListings != null
          ? ListCopyWith($value.epgListings!, (v, t) => v.copyWith.$chain(t),
              (v) => call(epgListings: v))
          : null;
  @override
  $R call({Object? epgListings = $none}) => $apply(
      FieldCopyWithData({if (epgListings != $none) #epgListings: epgListings}));
  @override
  XTremeCodeChannelEpgTable $make(CopyWithData data) =>
      XTremeCodeChannelEpgTable(
          epgListings: data.get(#epgListings, or: $value.epgListings));

  @override
  XTremeCodeChannelEpgTableCopyWith<$R2, XTremeCodeChannelEpgTable, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _XTremeCodeChannelEpgTableCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
