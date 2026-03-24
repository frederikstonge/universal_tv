import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import '../extensions/m3u_entry_extensions.dart';
import 'repositories/m3u_entry.dart';

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

  factory TvShowItem.fromXtSeriesItem(XtSeriesItem item, String providerName) {
    return TvShowItem(
      seriesId: item.seriesId.toString(),
      name: item.name,
      categoryIds: [item.categoryId],
      posterUrl: item.posterUrl,
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
