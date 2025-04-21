import 'package:dart_mappable/dart_mappable.dart';

part 'category.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeCategory with XTremeCodeCategoryMappable {
  final int? categoryId;
  final String? categoryName;
  final int? parentId;

  XTremeCodeCategory({required this.categoryId, required this.categoryName, required this.parentId});
}
