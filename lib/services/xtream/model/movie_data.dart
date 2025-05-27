import 'package:dart_mappable/dart_mappable.dart';

part 'movie_data.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class MovieData with MovieDataMappable {
  final int? streamId;
  final String? name;
  final String? title;
  final String? year;
  final DateTime? added;
  final int? categoryId;
  final List<int>? categoryIds;
  final String containerExtension;
  final String? customSid;
  final String? directSource;

  MovieData({
    required this.streamId,
    required this.name,
    required this.title,
    required this.year,
    required this.added,
    required this.categoryId,
    required this.categoryIds,
    required this.containerExtension,
    required this.customSid,
    required this.directSource,
  });
}
