import '../models/iptv_type.dart';
import '../models/repositories/m3u_entry.dart';
import 'map_extensions.dart';

extension M3uEntryExtensions on M3uEntry {
  static const String seasonEpisodePattern = r's([0-9]+)[ ._x-]*e([0-9]+(?:(?:[a-i]|\\.[1-9])(?![0-9]))?)';
  IptvType get type => IptvType.values.firstWhere((e) => e.name == safeTvgType, orElse: () => IptvType.unknown);

  String? get safeTvgName => attributes.safeGet('tvg-name') ?? attributes.safeGet('tvg_name');

  String? get safeTvgType => attributes.safeGet('tvg-type') ?? attributes.safeGet('tvg_type');

  MapEntry<String?, String?> get seriesInfo => MapEntry(
    name.toLowerCase().allMatches(seasonEpisodePattern).first.group(1),
    name.toLowerCase().allMatches(seasonEpisodePattern).first.group(2),
  );

  int get seasonNumber => seriesInfo.key != null ? int.parse(seriesInfo.key!) : 0;

  int get episodeNumber => seriesInfo.value != null ? int.parse(seriesInfo.value!) : 0;
}
