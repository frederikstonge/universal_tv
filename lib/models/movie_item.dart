import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

part 'movie_item.mapper.dart';

@MappableClass()
class MovieItem with MovieItemMappable {
  final int streamId;
  final String name;
  final String categoryId;
  final String? posterUrl;
  final String providerName;

  const MovieItem({
    required this.streamId,
    required this.name,
    required this.categoryId,
    this.posterUrl,
    required this.providerName,
  });

  factory MovieItem.fromXtVodItem(XtVodItem item, String providerName) {
    return MovieItem(
      streamId: item.streamId,
      name: item.name,
      categoryId: item.categoryId,
      posterUrl: item.posterUrl,
      providerName: providerName,
    );
  }
}
