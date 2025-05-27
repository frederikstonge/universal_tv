import 'package:dart_mappable/dart_mappable.dart';

part 'epg_listing_table.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeEpgListingTable with XTremeCodeEpgListingTableMappable {
  final int? id;
  final int? epgId;
  final String? title;
  final String? lang;
  final DateTime? start;
  final DateTime? end;
  final String? description;
  final String? channelId;
  final DateTime? startTimestamp;
  final DateTime? stopTimestamp;
  final bool? nowPlaying;
  final bool? hasArchive;

  XTremeCodeEpgListingTable({
    required this.id,
    required this.epgId,
    required this.title,
    required this.lang,
    required this.start,
    required this.end,
    required this.description,
    required this.channelId,
    required this.startTimestamp,
    required this.stopTimestamp,
    required this.nowPlaying,
    required this.hasArchive,
  });
}
