import 'package:muxa_xtream/muxa_xtream.dart';

import '../models/iptv_type.dart';
import 'map_extensions.dart';

extension XtM3uEntryExtensions on XtM3uEntry {
  IptvType get type => IptvType.values.firstWhere((e) => e.name == safeTvgType, orElse: () => IptvType.unknown);

  String? get safeTvgName => attrs.safeGet('tvg-name') ?? attrs.safeGet('tvg_name');

  String? get safeTvgType => attrs.safeGet('tvg-type') ?? attrs.safeGet('tvg_type');

  String? get seriesInfo => groupTitle != null ? name.replaceAll(groupTitle!, '').trim() : null;

  int? get seasonNumber => int.tryParse(seriesInfo?.split(' ').firstOrNull?.replaceAll('S', '') ?? '');

  int? get episodeNumber => int.tryParse(seriesInfo?.split(' ').lastOrNull?.replaceAll('E', '') ?? '');
}
