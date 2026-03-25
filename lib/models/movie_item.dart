import 'package:dart_mappable/dart_mappable.dart';
import 'package:xtream_code_client/xtream_code_client.dart';

import '../extensions/m3u_entry_extensions.dart';
import 'repositories/m3u_entry.dart';

part 'movie_item.mapper.dart';

@MappableClass()
class MovieItem with MovieItemMappable {
  final String streamId;
  final String name;
  final List<String> categoryIds;
  final String? posterUrl;
  final String providerName;

  const MovieItem({
    required this.streamId,
    required this.name,
    required this.categoryIds,
    required this.providerName,
    this.posterUrl,
  });

  factory MovieItem.fromXtVodItem(VodItem item, String providerName) {
    return MovieItem(
      streamId: item.streamId.toString(),
      name: item.name?.toString() ?? item.streamId.toString(),
      categoryIds: item.categoryIds?.map((c) => c.toString()).toList() ?? [item.categoryId?.toString() ?? ''],
      posterUrl: item.streamIcon,
      providerName: providerName,
    );
  }

  factory MovieItem.fromM3uEntry(M3uEntry entry) {
    return MovieItem(
      streamId: entry.id,
      name: entry.name,
      categoryIds: [if (entry.groupTitle != null) entry.groupTitle!],
      posterUrl: entry.posterUrl,
      providerName: entry.providerName,
    );
  }
}
