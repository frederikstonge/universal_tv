import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import '../extensions/map_extensions.dart';
import '../generated/imdb_api/models/imdbapi_title.dart';
import 'iptv_type.dart';

part 'iptv_entry.mapper.dart';

@MappableClass()
class IptvEntry with IptvEntryMappable {
  final String id;
  final String name;
  final IptvType type;
  final String? logoUrl;
  final List<String>? categories;
  final String? epgId;
  final String url;

  IptvEntry({
    required this.id,
    required this.name,
    required this.type,
    required this.logoUrl,
    required this.categories,
    required this.url,
    this.epgId,
  });

  /// https://github.com/HamzaBhf00/m3u-tags-iptv
  factory IptvEntry.fromM3uEntry(XtM3uEntry m3uEntry, {ImdbapiTitle? imdbResponse}) {
    final type = IptvType.values.firstWhere(
      (e) => e.name == m3uEntry.attrs.safeGet('tvg-type'),
      orElse: () => IptvType.unknown,
    );

    return IptvEntry(
      id: m3uEntry.tvgId ?? m3uEntry.name,
      name: m3uEntry.name,
      url: m3uEntry.url,
      type: type,
      logoUrl: type == IptvType.live || imdbResponse == null ? m3uEntry.logoUrl : imdbResponse.primaryImage?.url,
      // for tvshow, m3uEntry.groupTitle will contain the name of the tvshow.
      categories: type == IptvType.live || imdbResponse == null
          ? [
              if (m3uEntry.groupTitle != null) ...[m3uEntry.groupTitle!],
            ]
          : imdbResponse.genres?.toList(),
      epgId: m3uEntry.tvgId,
    );
  }

  factory IptvEntry.fromXTremeVodItem(XtVodItem vodItem, String url) {
    return IptvEntry(
      id: vodItem.streamId.toString(),
      name: vodItem.name,
      url: url,
      logoUrl: vodItem.posterUrl,
      type: IptvType.movies,
      categories: [vodItem.categoryId],
    );
  }

  factory IptvEntry.fromXTremeSeriesItem(XtSeriesItem seriesItem, String url) {
    return IptvEntry(
      id: seriesItem.seriesId.toString(),
      name: seriesItem.name,
      url: url,
      logoUrl: seriesItem.posterUrl,
      type: IptvType.tvshows,
      categories: [seriesItem.categoryId],
    );
  }

  factory IptvEntry.fromXTremeLiveStreamItem(XtLiveChannel liveStreamItem, String url) {
    return IptvEntry(
      id: liveStreamItem.streamId.toString(),
      name: liveStreamItem.name,
      url: url,
      logoUrl: liveStreamItem.logoUrl,
      type: IptvType.live,
      categories: [liveStreamItem.categoryId],
      epgId: liveStreamItem.epgChannelId,
    );
  }
}
