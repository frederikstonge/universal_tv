import 'package:dart_mappable/dart_mappable.dart';
import 'package:xtream_code_client/xtream_code_client.dart';

import '../extensions/m3u_entry_extensions.dart';
import 'm3u/m3u_entry.dart';

part 'tv_show_item.mapper.dart';

@MappableClass()
class TvShowItem with TvShowItemMappable {
  final String seriesId;
  final String name;
  final List<String> categoryIds;
  final String? posterUrl;
  final String providerName;

  const TvShowItem({
    required this.seriesId,
    required this.name,
    required this.categoryIds,
    required this.providerName,
    this.posterUrl,
  });

  factory TvShowItem.fromXtSeriesItem(SeriesItem item, String providerName) {
    return TvShowItem(
      seriesId: item.seriesId.toString(),
      name: item.name ?? item.seriesId?.toString() ?? '',
      categoryIds: [if (item.categoryId != null) item.categoryId!.toString()],
      posterUrl: item.cover,
      providerName: providerName,
    );
  }

  factory TvShowItem.fromM3uEntry(M3uEntry entry) {
    return TvShowItem(
      seriesId: entry.id,
      name: entry.seriesName ?? entry.name,
      categoryIds: [if (entry.groupTitle != null) entry.groupTitle!],
      posterUrl: entry.posterUrl,
      providerName: entry.providerName,
    );
  }
}
