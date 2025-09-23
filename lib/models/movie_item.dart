import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

part 'movie_item.mapper.dart';

@MappableClass()
class MovieItem with MovieItemMappable {
  final int streamId;
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
      streamId: item.streamId,
      name: item.name,
      categoryIds: [item.categoryId],
      posterUrl: item.posterUrl,
      providerName: providerName,
    );
  }
}
