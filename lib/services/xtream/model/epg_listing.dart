import 'package:dart_mappable/dart_mappable.dart';

part 'epg_listing.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class EpgListing with EpgListingMappable {
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
  final DateTime? stop;

  EpgListing({
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
    required this.stop,
  });
}
