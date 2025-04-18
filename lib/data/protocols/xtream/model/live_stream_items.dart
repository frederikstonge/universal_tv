import 'package:dart_mappable/dart_mappable.dart';

part 'live_stream_items.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeLiveStreamItem with XTremeCodeLiveStreamItemMappable {
  final int? num;
  final String? name;
  final String? streamType;
  final int? streamId;
  final String? streamIcon;
  final String? epgChannelId;
  final DateTime? added;
  final int? customSid;
  final int? tvArchive;
  final String? directSource;
  final int? tvArchiveDuration;
  final int? categoryId;
  final List<int>? categoryIds;
  final String? thumbnail;

  XTremeCodeLiveStreamItem({
    required this.num,
    required this.name,
    required this.streamType,
    required this.streamId,
    required this.streamIcon,
    required this.epgChannelId,
    required this.added,
    required this.customSid,
    required this.tvArchive,
    required this.directSource,
    required this.tvArchiveDuration,
    required this.categoryId,
    required this.categoryIds,
    required this.thumbnail,
  });
}
