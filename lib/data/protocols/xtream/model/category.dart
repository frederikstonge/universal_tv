import 'package:dart_mappable/dart_mappable.dart';
import '../utils/json_helper.dart';

part 'category.mapper.dart';

/// Represents a category in XTremeCode.
@JsonSerializable()
@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeCategory with XTremeCodeCategoryMappable {
  final int? categoryId;
  final String? categoryName;
  final int? parentId;

  XTremeCodeCategory({required this.categoryId, required this.categoryName, required this.parentId});
}
