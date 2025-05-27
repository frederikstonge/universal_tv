import 'package:dart_mappable/dart_mappable.dart';

import '../services/m3u/models/attribute.dart';
import '../services/m3u/models/generic_entry.dart';
import '../services/xtreme/model/live_stream_item.dart';
import '../services/xtreme/model/series_item.dart';
import '../services/xtreme/model/vod_item.dart';
import 'iptv_type.dart';

part 'iptv_entry.mapper.dart';

@MappableClass()
class IptvEntry with IptvEntryMappable {
  final String id;
  final String name;
  final String title;
  final String url;
  final IptvType type;
  final List<String> categories;

  IptvEntry({
    required this.id,
    required this.name,
    required this.title,
    required this.url,
    required this.type,
    required this.categories,
  });

  factory IptvEntry.fromM3uEntry(M3uGenericEntry m3uEntry) {
    final type = IptvType.values.firstWhere(
      (v) => v.name == (m3uEntry.attributes[Attribute.CONTENT_TYPE] ?? m3uEntry.attributes[Attribute.TYPE]),
      orElse: () => IptvType.unknown,
    );

    return IptvEntry(
      id: m3uEntry.attributes[Attribute.ID] ?? m3uEntry.attributes[Attribute.NAME] ?? m3uEntry.title,
      name: m3uEntry.attributes[Attribute.NAME] ?? m3uEntry.attributes[Attribute.ID] ?? m3uEntry.title,
      title: m3uEntry.title,
      url: m3uEntry.link,
      type: type,
      categories: m3uEntry.attributes.entries
          .where((e) => Attribute.GROUP.contains(e.key) && e.value != null && e.value!.isNotEmpty)
          .map((e) => e.value!)
          .toList(),
    );
  }

  factory IptvEntry.fromXTremeVodItem(XTremeCodeVodItem vodItem, String url, List<String> categories) {
    return IptvEntry(
      id: vodItem.streamId!.toString(),
      name: vodItem.name!,
      title: vodItem.title!,
      url: url,
      type: IptvType.movies,
      categories: categories,
    );
  }

  factory IptvEntry.fromXTremeSeriesItem(XTremeCodeSeriesItem seriesItem, String url, List<String> categories) {
    return IptvEntry(
      id: seriesItem.seriesId!.toString(),
      name: seriesItem.name!,
      title: seriesItem.title!,
      url: url,
      type: IptvType.tvshows,
      categories: categories,
    );
  }

  factory IptvEntry.fromXTremeLiveStreamItem(
    XTremeCodeLiveStreamItem liveStreamItem,
    String url,
    List<String> categories,
  ) {
    return IptvEntry(
      id: liveStreamItem.streamId!.toString(),
      name: liveStreamItem.name!,
      title: liveStreamItem.name!,
      url: url,
      type: IptvType.live,
      categories: categories,
    );
  }
}
