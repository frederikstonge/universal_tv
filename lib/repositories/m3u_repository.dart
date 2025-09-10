import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import '../../models/iptv_type.dart';
import '../blocs/settings/iptv_provider.dart';
import '../extensions/m3u_entry_extensions.dart';
import '../generated/imdb_api/imdb_api.swagger.dart';
import 'stream_base_repository.dart';

class M3uRepository extends StreamBaseRepository {
  final M3uIptvProvider provider;
  final Dio dio;
  final ImdbApi imdbApi;

  final List<XtM3uEntry> entries = [];
  final List<ImdbapiTitle> imdbEntries = [];

  M3uRepository({required this.provider, required this.dio, required this.imdbApi});

  @override
  Future<void> load() async {
    entries.clear();
    for (final link in provider.urls) {
      final value = await dio.getUri<String>(link);
      final m3uData = parseM3u(Stream.value(utf8.encode(value.data!)));
      entries.addAll(await m3uData.toList());
    }

    imdbEntries.clear();

    final imdbTitles = entries
        .where(
          (e) =>
              (e.type == IptvType.movies || e.type == IptvType.tvshows) &&
              (e.tvgId != null || e.safeTvgName != null) &&
              ((e.tvgId ?? e.safeTvgName)?.startsWith('tt') ?? false),
        )
        .map((e) => e.tvgId ?? e.safeTvgName)
        .whereType<String>()
        .toSet()
        .toList();

    final pageSize = 5;
    for (var i = 0; i < (imdbTitles.length / pageSize).ceil(); i++) {
      final titlesBatch = imdbTitles.skip(i * pageSize).take(pageSize).toList();
      try {
        final result = await imdbApi.titlesBatchGetGet(titleIds: titlesBatch);
        final titles = result.body?.titles?.toList() ?? [];
        imdbEntries.addAll(titles);
      } catch (e) {
        // ignore errors from imdb api
      }
    }
  }

  @override
  Future<List<XtCategory>> getLiveCategories() async {
    final categories = entries
        .where((e) => e.type == IptvType.live)
        .map((e) => e.groupTitle ?? 'Unknown')
        .toSet()
        .toList()
        .asMap()
        .entries
        .map((e) => XtCategory(id: e.value, name: e.value, kind: 'live'))
        .toList();

    return categories;
  }

  @override
  Future<List<XtCategory>> getVodCategories() async {
    final categories = imdbEntries
        .expand((e) => e.genres ?? [])
        .toSet()
        .toList()
        .asMap()
        .entries
        .map((e) => XtCategory(id: e.value.toString(), name: e.value.toString(), kind: 'vod'))
        .toList();

    return categories;
  }

  @override
  Future<List<XtCategory>> getSeriesCategories() async {
    final categories = imdbEntries
        .expand((e) => e.genres ?? [])
        .toSet()
        .toList()
        .asMap()
        .entries
        .map((e) => XtCategory(id: e.value.toString(), name: e.value.toString(), kind: 'series'))
        .toList();

    return categories;
  }

  @override
  Future<List<XtVodItem>> getVodStreams() async {
    final vodItems = entries.where((e) => e.type == IptvType.movies).mapIndexed((i, e) {
      final imdbId = e.tvgId ?? e.safeTvgName;
      final imdbEntry = imdbEntries.firstWhereOrNull((e) => e.id == imdbId);
      return XtVodItem(
        streamId: i,
        name: e.name,
        categoryId: imdbEntry?.genres?.firstOrNull ?? e.groupTitle ?? 'Unknown',
        posterUrl: imdbEntry?.primaryImage?.url ?? e.logoUrl,
      );
    }).toList();

    return vodItems;
  }

  @override
  Future<List<XtSeriesItem>> getSeries() async {
    final seriesItems = entries
        .where((e) => e.type == IptvType.tvshows)
        .groupListsBy((e) => e.groupTitle)
        .entries
        .mapIndexed((i, e) {
          final imdbId = e.value.first.tvgId ?? e.value.first.safeTvgName;
          final imdbEntry = imdbEntries.firstWhereOrNull((e) => e.id == imdbId);
          return XtSeriesItem(
            seriesId: i,
            name: imdbEntry?.primaryTitle ?? imdbEntry?.originalTitle ?? e.key ?? 'Unknown',
            categoryId: imdbEntry?.genres?.firstOrNull ?? 'Unknown',
            posterUrl: imdbEntry?.primaryImage?.url ?? e.value.first.logoUrl,
          );
        })
        .toList();

    return seriesItems;
  }

  @override
  Future<List<XtLiveChannel>> getLiveStreams() async {
    final liveChannels = entries.where((e) => e.type == IptvType.live).mapIndexed((i, e) {
      return XtLiveChannel(
        streamId: i,
        name: e.name,
        categoryId: e.groupTitle ?? 'Unknown',
        logoUrl: e.logoUrl,
        epgChannelId: e.tvgId,
      );
    }).toList();

    return liveChannels;
  }

  @override
  Future<XtVodDetails> getVodInfo(int vodId) async {
    final entry = entries.where((e) => e.type == IptvType.movies).elementAt(vodId);
    final imdbId = entry.tvgId ?? entry.safeTvgName;
    final imdbEntry = imdbEntries.firstWhereOrNull((e) => e.id == imdbId);

    return XtVodDetails(
      streamId: vodId,
      name: entry.name,
      plot: imdbEntry?.plot,
      rating: imdbEntry?.rating?.aggregateRating,
      year: imdbEntry?.startYear,
      posterUrl: imdbEntry?.primaryImage?.url ?? entry.logoUrl,
      duration: imdbEntry?.runtimeSeconds != null ? Duration(seconds: imdbEntry!.runtimeSeconds!) : null,
    );
  }

  @override
  Future<XtSeriesDetails> getSeriesInfo(int seriesId) async {
    final entry = entries
        .where((e) => e.type == IptvType.tvshows)
        .groupListsBy((e) => e.groupTitle)
        .entries
        .elementAt(seriesId);

    final imdbId = entry.value.first.tvgId ?? entry.value.first.safeTvgName;
    final imdbEntry = imdbEntries.firstWhereOrNull((e) => e.id == imdbId);

    final episodesInfo = await imdbApi.titlesTitleIdEpisodesGet(titleId: imdbId);
    final seasons = episodesInfo.body?.episodes?.groupListsBy((g) => g.season);

    return XtSeriesDetails(
      seriesId: seriesId,
      name: imdbEntry?.primaryTitle ?? imdbEntry?.originalTitle ?? entry.key!,
      seasons: entry.value
          .groupListsBy((s) => s.seasonNumber)
          .map(
            (s, e) => MapEntry(
              s,
              e.map((episode) {
                final episodeImdbEntry = episodesInfo.body?.episodes?.firstWhereOrNull(
                  (ep) =>
                      ep.episodeNumber == episode.episodeNumber &&
                      (int.tryParse(ep.season ?? '') ?? seasons?.keys.toList().indexOf(ep.season)) ==
                          episode.seasonNumber,
                );
                return XtEpisode(
                  id: entries.indexOf(episode),
                  title: episodeImdbEntry?.title ?? episode.name,
                  season: episode.seasonNumber,
                  episode: episode.episodeNumber,
                  duration: episodeImdbEntry?.runtimeSeconds != null
                      ? Duration(seconds: episodeImdbEntry!.runtimeSeconds!)
                      : null,
                  plot: episodeImdbEntry?.plot,
                );
              }).toList(),
            ),
          ),
      plot: imdbEntry?.plot,
      posterUrl: imdbEntry?.primaryImage?.url ?? entry.value.first.logoUrl,
    );
  }

  @override
  String getLiveUrl(int streamId) {
    return entries.where((e) => e.type == IptvType.live).elementAt(streamId).url;
  }

  @override
  String getVodUrl(int streamId) {
    return entries.where((e) => e.type == IptvType.movies).elementAt(streamId).url;
  }

  @override
  String getSeriesUrl(int episodeId) {
    return entries.where((e) => e.type == IptvType.tvshows).elementAt(episodeId).url;
  }
}
