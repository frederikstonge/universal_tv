// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'channel_epg.dart';

class ChannelEpgMapper extends ClassMapperBase<ChannelEpg> {
  ChannelEpgMapper._();

  static ChannelEpgMapper? _instance;
  static ChannelEpgMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChannelEpgMapper._());
      EpgListingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChannelEpg';

  static List<EpgListing>? _$epgListings(ChannelEpg v) => v.epgListings;
  static const Field<ChannelEpg, List<EpgListing>> _f$epgListings =
      Field('epgListings', _$epgListings, key: r'epg_listings');

  @override
  final MappableFields<ChannelEpg> fields = const {
    #epgListings: _f$epgListings,
  };

  static ChannelEpg _instantiate(DecodingData data) {
    return ChannelEpg(epgListings: data.dec(_f$epgListings));
  }

  @override
  final Function instantiate = _instantiate;

  static ChannelEpg fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChannelEpg>(map);
  }

  static ChannelEpg fromJson(String json) {
    return ensureInitialized().decodeJson<ChannelEpg>(json);
  }
}

mixin ChannelEpgMappable {
  String toJson() {
    return ChannelEpgMapper.ensureInitialized()
        .encodeJson<ChannelEpg>(this as ChannelEpg);
  }

  Map<String, dynamic> toMap() {
    return ChannelEpgMapper.ensureInitialized()
        .encodeMap<ChannelEpg>(this as ChannelEpg);
  }

  ChannelEpgCopyWith<ChannelEpg, ChannelEpg, ChannelEpg> get copyWith =>
      _ChannelEpgCopyWithImpl<ChannelEpg, ChannelEpg>(
          this as ChannelEpg, $identity, $identity);
  @override
  String toString() {
    return ChannelEpgMapper.ensureInitialized()
        .stringifyValue(this as ChannelEpg);
  }

  @override
  bool operator ==(Object other) {
    return ChannelEpgMapper.ensureInitialized()
        .equalsValue(this as ChannelEpg, other);
  }

  @override
  int get hashCode {
    return ChannelEpgMapper.ensureInitialized().hashValue(this as ChannelEpg);
  }
}

extension ChannelEpgValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChannelEpg, $Out> {
  ChannelEpgCopyWith<$R, ChannelEpg, $Out> get $asChannelEpg =>
      $base.as((v, t, t2) => _ChannelEpgCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChannelEpgCopyWith<$R, $In extends ChannelEpg, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, EpgListing, EpgListingCopyWith<$R, EpgListing, EpgListing>>?
      get epgListings;
  $R call({List<EpgListing>? epgListings});
  ChannelEpgCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChannelEpgCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChannelEpg, $Out>
    implements ChannelEpgCopyWith<$R, ChannelEpg, $Out> {
  _ChannelEpgCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChannelEpg> $mapper =
      ChannelEpgMapper.ensureInitialized();
  @override
  ListCopyWith<$R, EpgListing, EpgListingCopyWith<$R, EpgListing, EpgListing>>?
      get epgListings => $value.epgListings != null
          ? ListCopyWith($value.epgListings!, (v, t) => v.copyWith.$chain(t),
              (v) => call(epgListings: v))
          : null;
  @override
  $R call({Object? epgListings = $none}) => $apply(
      FieldCopyWithData({if (epgListings != $none) #epgListings: epgListings}));
  @override
  ChannelEpg $make(CopyWithData data) =>
      ChannelEpg(epgListings: data.get(#epgListings, or: $value.epgListings));

  @override
  ChannelEpgCopyWith<$R2, ChannelEpg, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChannelEpgCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
