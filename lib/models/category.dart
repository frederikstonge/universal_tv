import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import '../extensions/m3u_entry_extensions.dart';
import 'iptv_type.dart';
import 'repositories/m3u_entry.dart';

part 'category.mapper.dart';

@MappableClass()
class Category with CategoryMappable {
  final String id;
  final String name;
  final IptvType type;
  final String providerName;

  Category({required this.id, required this.name, required this.type, required this.providerName});

  factory Category.fromXtCategory(XtCategory category, String providerName) {
    final type = switch (category.kind) {
      'live' => IptvType.live,
      'vod' => IptvType.movies,
      'series' => IptvType.tvshows,
      _ => IptvType.unknown,
    };

    return Category(id: category.id, name: category.name, type: type, providerName: providerName);
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
