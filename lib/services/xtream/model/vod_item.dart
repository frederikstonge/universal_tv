import 'package:dart_mappable/dart_mappable.dart';

part 'vod_item.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class VodItem with VodItemMappable {
  final int? streamId;
  final int? num;
  final String? name;
  final String? title;
  final String? year;
  final String? streamType;
  final String? streamIcon;
  final double? rating;
  final double? rating5based;
  final DateTime? added;
  final int? categoryId;
  final List<int>? categoryIds;
  final String? containerExtension;
  final String? customSid;
  final String? directSource;

  VodItem({
    required this.streamId,
    required this.num,
    required this.name,
    required this.title,
    required this.year,
    required this.streamType,
    required this.streamIcon,
    required this.rating,
    required this.rating5based,
    required this.added,
    required this.categoryId,
    required this.categoryIds,
    required this.containerExtension,
    required this.customSid,
    required this.directSource,
  });
}
