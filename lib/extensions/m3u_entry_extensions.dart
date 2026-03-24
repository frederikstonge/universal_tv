import '../models/iptv_type.dart';
import '../models/repositories/m3u_entry.dart';
import 'm3u_tags.dart';
import 'map_extensions.dart';

extension M3uEntryExtensions on M3uEntry {
  static RegExp seasonEpisodePattern = RegExp(r's([0-9]+)[ ._x-]*e([0-9]+(?:(?:[a-i]|\\.[1-9])(?![0-9]))?)');

  IptvType get type => IptvType.values.firstWhere((e) => e.name == safeTvgType, orElse: () => IptvType.unknown);

  String? get safeTvgName => attributes.safeGet(M3uTags.tvgName);

  String? get safeTvgType => attributes.safeGet(M3uTags.tvgType);

  MapEntry<String?, String?>? get seriesInfo {
    final season = attributes.safeGet(M3uTags.tvgSeason) ?? attributes.safeGet(M3uTags.seasonNum);
    final episode = attributes.safeGet(M3uTags.tvgEpisode) ?? attributes.safeGet(M3uTags.episodeNum);
    if (season != null && episode != null) {
      return MapEntry(season, episode);
    }

    final allMatches = seasonEpisodePattern.allMatches(name.toLowerCase());
    if (allMatches.isEmpty) {
      return null;
    }

    return MapEntry(allMatches.first.group(1), allMatches.first.group(2));
  }

  String? get imdbId => attributes.safeGet(M3uTags.imdbId) ?? tvgId;

  String? get tmdbId => attributes.safeGet(M3uTags.tmdbId) ?? tvgId;

  String? get tvdbId => attributes.safeGet(M3uTags.tvdbId) ?? tvgId;

  int get seasonNumber => seriesInfo?.key != null ? int.parse(seriesInfo!.key!) : 0;

  int get episodeNumber => seriesInfo?.value != null ? int.parse(seriesInfo!.value!) : 0;

  // ── VOD / Movie & TV Show ─────────────────────────────────────────────

  String? get plot => attributes.safeGet(M3uTags.plot);

  double? get rating {
    final value = attributes.safeGet(M3uTags.rating);
    return value != null ? double.tryParse(value) : null;
  }

  int? get year {
    final value = attributes.safeGet(M3uTags.year);
    return value != null ? int.tryParse(value) : null;
  }

  Duration? get duration {
    final value = attributes.safeGet(M3uTags.tvgDuration);
    if (value == null) return null;
    final seconds = int.tryParse(value);
    return seconds != null ? Duration(seconds: seconds) : null;
  }

  String? get posterUrl => attributes.safeGet(M3uTags.tvgPoster) ?? logoUrl;

  String? get backdropUrl => attributes.safeGet(M3uTags.tvgBackdrop);

  String? get genre => attributes.safeGet(M3uTags.genre);

  String? get director => attributes.safeGet(M3uTags.director);

  String? get cast => attributes.safeGet(M3uTags.cast);

  String? get seriesName => attributes.safeGet(M3uTags.seriesName);

  String? get originalTitle => attributes.safeGet(M3uTags.originalTitle);

  String? get subtitleLanguage => attributes.safeGet(M3uTags.subtitleLanguage);

  String? get audioLanguage => attributes.safeGet(M3uTags.audioLanguage);

  // ── Live Channel ──────────────────────────────────────────────────────

  String? get epgChannelId => attributes.safeGet(M3uTags.tvgEpgId);

  int? get channelNumber {
    final value = attributes.safeGet(M3uTags.tvgChNo);
    return value != null ? int.tryParse(value) : null;
  }

  String? get country => attributes.safeGet(M3uTags.tvgCountry);

  String? get language => attributes.safeGet(M3uTags.tvgLanguage);

  DateTime? get startTime =>
      attributes.safeGet(M3uTags.extXStart) != null ? DateTime.tryParse(attributes.safeGet(M3uTags.extXStart)!) : null;

  DateTime? get endTime => attributes.safeGet(M3uTags.extXStartDuration) != null && startTime != null
      ? startTime!.add(Duration(seconds: int.parse(attributes.safeGet(M3uTags.extXStartDuration)!)))
      : null;

  // ── Catchup ───────────────────────────────────────────────────────────

  String? get catchup => attributes.safeGet(M3uTags.catchup);

  String? get catchupSource => attributes.safeGet(M3uTags.catchupSource);

  int? get catchupDays {
    final value = attributes.safeGet(M3uTags.catchupDays);
    return value != null ? int.tryParse(value) : null;
  }

  // ── HTTP / Stream ─────────────────────────────────────────────────────

  String? get userAgent => attributes.safeGet(M3uTags.userAgent);

  String? get referrer => attributes.safeGet(M3uTags.referrer);
}
