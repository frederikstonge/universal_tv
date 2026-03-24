import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

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
    this.posterUrl,
    required this.providerName,
  });

  factory MovieItem.fromXtVodItem(XtVodItem item, String providerName) {
    return MovieItem(
      streamId: item.streamId.toString(),
      name: item.name,
      categoryIds: [item.categoryId],
      posterUrl: item.posterUrl,
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
