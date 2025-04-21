import 'package:dart_mappable/dart_mappable.dart';

import 'epg_listing.dart';

part 'channel_epg.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeChannelEpg with XTremeCodeChannelEpgMappable {
  final List<XTremeCodeEpgListing>? epgListings;

  XTremeCodeChannelEpg({required this.epgListings});
}
