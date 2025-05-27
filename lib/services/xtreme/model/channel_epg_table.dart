import 'package:dart_mappable/dart_mappable.dart';
import 'epg_listing_table.dart';

part 'channel_epg_table.mapper.dart';

/// Represents a table of EPG (Electronic Program Guide) channels.
@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeChannelEpgTable with XTremeCodeChannelEpgTableMappable {
  final List<XTremeCodeEpgListingTable>? epgListings;

  XTremeCodeChannelEpgTable({required this.epgListings});
}
