import 'package:dart_mappable/dart_mappable.dart';
import 'epg_listing_table.dart';

part 'channel_epg_table.mapper.dart';

/// Represents a table of EPG (Electronic Program Guide) channels.
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChannelEpgTable with ChannelEpgTableMappable {
  final List<EpgListingTable>? epgListings;

  ChannelEpgTable({required this.epgListings});
}
