import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

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
    this.posterUrl,
    required this.providerName,
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
}
