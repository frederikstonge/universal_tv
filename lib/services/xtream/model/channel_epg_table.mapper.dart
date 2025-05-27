// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'channel_epg_table.dart';

class ChannelEpgTableMapper extends ClassMapperBase<ChannelEpgTable> {
  ChannelEpgTableMapper._();

  static ChannelEpgTableMapper? _instance;
  static ChannelEpgTableMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChannelEpgTableMapper._());
      EpgListingTableMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChannelEpgTable';

  static List<EpgListingTable>? _$epgListings(ChannelEpgTable v) =>
      v.epgListings;
  static const Field<ChannelEpgTable, List<EpgListingTable>> _f$epgListings =
      Field('epgListings', _$epgListings, key: r'epg_listings');

  @override
  final MappableFields<ChannelEpgTable> fields = const {
    #epgListings: _f$epgListings,
  };

  static ChannelEpgTable _instantiate(DecodingData data) {
    return ChannelEpgTable(epgListings: data.dec(_f$epgListings));
  }

  @override
  final Function instantiate = _instantiate;

  static ChannelEpgTable fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChannelEpgTable>(map);
  }

  static ChannelEpgTable fromJson(String json) {
    return ensureInitialized().decodeJson<ChannelEpgTable>(json);
  }
}

mixin ChannelEpgTableMappable {
  String toJson() {
    return ChannelEpgTableMapper.ensureInitialized()
        .encodeJson<ChannelEpgTable>(this as ChannelEpgTable);
  }

  Map<String, dynamic> toMap() {
    return ChannelEpgTableMapper.ensureInitialized()
        .encodeMap<ChannelEpgTable>(this as ChannelEpgTable);
  }

  ChannelEpgTableCopyWith<ChannelEpgTable, ChannelEpgTable, ChannelEpgTable>
      get copyWith =>
          _ChannelEpgTableCopyWithImpl<ChannelEpgTable, ChannelEpgTable>(
              this as ChannelEpgTable, $identity, $identity);
  @override
  String toString() {
    return ChannelEpgTableMapper.ensureInitialized()
        .stringifyValue(this as ChannelEpgTable);
  }

  @override
  bool operator ==(Object other) {
    return ChannelEpgTableMapper.ensureInitialized()
        .equalsValue(this as ChannelEpgTable, other);
  }

  @override
  int get hashCode {
    return ChannelEpgTableMapper.ensureInitialized()
        .hashValue(this as ChannelEpgTable);
  }
}

extension ChannelEpgTableValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChannelEpgTable, $Out> {
  ChannelEpgTableCopyWith<$R, ChannelEpgTable, $Out> get $asChannelEpgTable =>
      $base.as((v, t, t2) => _ChannelEpgTableCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChannelEpgTableCopyWith<$R, $In extends ChannelEpgTable, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, EpgListingTable,
          EpgListingTableCopyWith<$R, EpgListingTable, EpgListingTable>>?
      get epgListings;
  $R call({List<EpgListingTable>? epgListings});
  ChannelEpgTableCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ChannelEpgTableCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChannelEpgTable, $Out>
    implements ChannelEpgTableCopyWith<$R, ChannelEpgTable, $Out> {
  _ChannelEpgTableCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChannelEpgTable> $mapper =
      ChannelEpgTableMapper.ensureInitialized();
  @override
  ListCopyWith<$R, EpgListingTable,
          EpgListingTableCopyWith<$R, EpgListingTable, EpgListingTable>>?
      get epgListings => $value.epgListings != null
          ? ListCopyWith($value.epgListings!, (v, t) => v.copyWith.$chain(t),
              (v) => call(epgListings: v))
          : null;
  @override
  $R call({Object? epgListings = $none}) => $apply(
      FieldCopyWithData({if (epgListings != $none) #epgListings: epgListings}));
  @override
  ChannelEpgTable $make(CopyWithData data) => ChannelEpgTable(
      epgListings: data.get(#epgListings, or: $value.epgListings));

  @override
  ChannelEpgTableCopyWith<$R2, ChannelEpgTable, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChannelEpgTableCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
