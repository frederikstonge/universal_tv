import 'package:dart_mappable/dart_mappable.dart';

import 'epg_listing.dart';

part 'channel_epg.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChannelEpg with ChannelEpgMappable {
  final List<EpgListing>? epgListings;

  ChannelEpg({required this.epgListings});
}
