import 'package:dart_mappable/dart_mappable.dart';

part 'category.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Category with CategoryMappable {
  final int? categoryId;
  final String? categoryName;
  final int? parentId;

  Category({required this.categoryId, required this.categoryName, required this.parentId});
}
