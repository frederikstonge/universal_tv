import 'package:dart_mappable/dart_mappable.dart';
import 'package:xtream_code_client/xtream_code_client.dart' as xt;

import '../extensions/m3u_entry_extensions.dart';
import 'iptv_type.dart';
import 'repositories/m3u_entry.dart';

part 'category.mapper.dart';

@MappableClass()
class Category with CategoryMappable {
  final String id;
  final String? parentId;
  final String name;
  final IptvType type;
  final String providerName;

  Category({required this.id, this.parentId, required this.name, required this.type, required this.providerName});

  factory Category.fromXtCategory(xt.Category category, IptvType type, String providerName) {
    return Category(
      id: category.categoryId!.toString(),
      parentId: category.parentId?.toString(),
      name: category.categoryName!,
      type: type,
      providerName: providerName,
    );
  }

  factory Category.fromM3uEntry(M3uEntry entry) {
    return Category(
      id: entry.groupTitle ?? '',
      name: entry.groupTitle ?? '',
      type: entry.type,
      providerName: entry.providerName,
    );
  }
}
