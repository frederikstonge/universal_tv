import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:muxa_xtream/muxa_xtream.dart';
import 'package:reaxdb_dart/reaxdb_dart.dart';

import '../../models/iptv_type.dart';
import '../blocs/settings/iptv_provider.dart';
import '../extensions/m3u_entry_extensions.dart';
import '../generated/imdb_api/imdb_api.swagger.dart';
import '../models/category.dart';
import '../models/live_channel.dart';
import '../models/movie_details.dart';
import '../models/movie_item.dart';
import '../models/repositories/imdb_entry.dart';
import '../models/repositories/m3u_entry.dart';
import '../models/tv_show_details.dart';
import '../models/tv_show_item.dart';
import 'stream_base_repository.dart';

class M3uRepository extends StreamBaseRepository {
  final M3uIptvProvider provider;
  final Dio dio;
  final ImdbApi imdbApi;
  final SimpleReaxDB db;

  M3uRepository({required this.provider, required this.dio, required this.imdbApi, required this.db});

  @override
  String get name => provider.name;

  @override
  Future<void> load() async {
    for (final link in provider.urls) {
      final value = await dio.getUri<String>(link);
      final m3uDataStream = parseM3u(Stream.value(utf8.encode(value.data!)));
      final m3uData = await m3uDataStream.toList();
      final entries = m3uData
          .asMap()
          .entries
          .map((e) => M3uEntry.fromXtM3uEntry(e.key, e.value, provider.name))
          .toList();

      await db.putAll(entries.asMap().map((k, v) => MapEntry('m3u_${provider.name}:${v.id}', v.toMap())));

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
          final titles = result.body?.titles?.map((e) => ImdbEntry.fromImdbapiTitle(e)).toList() ?? [];
          await db.putAll(titles.asMap().map((k, v) => MapEntry('imdb_${provider.name}:${v.id}', v.toMap())));
        } catch (e) {
          // ignore errors from imdb api
        }
      }
    }
  }

  @override
  Future<void> dispose() async {
    final keys = await db.query('m3u_${provider.name}:*');
    for (final key in keys) {
      await db.delete(key);
    }

    final imdbKeys = await db.query('imdb_${provider.name}:*');
    for (final imdbKey in imdbKeys) {
      await db.delete(imdbKey);
    }
  }

  @override
  Future<List<Category>> getLiveCategories() async {
    final items = await db.advanced
        .collection('m3u_${provider.name}')
        .whereEquals('type', IptvType.live.name)
        .distinct('groupTitle');
    final categories = items.map((i) => CategoryMapper.fromMap(i)).toList();
    return categories;
  }

  @override
  Future<List<Category>> getMovieCategories() async {
    final items = await db.advanced.collection('m3u_${provider.name}').whereEquals('type', IptvType.movies.name).find();
    final entries = items.map((i) => M3uEntryMapper.fromMap(i)).toList();
    final imdbIds = entries.map((e) => e.tvgId ?? e.safeTvgName).whereType<String>().toSet().toList();
    final imdbItems = await db.advanced.collection('imdb_${provider.name}').whereIn('id', imdbIds).find();
    final imdbEntries = imdbItems.map((i) => ImdbEntryMapper.fromMap(i)).toList();

    return imdbEntries
        .map((e) => e.genres?.first)
        .where((e) => e != null)
        .toSet()
        .toList()
        .asMap()
        .entries
        .map(
          (e) => Category(
            id: e.value.toString(),
            name: e.value.toString(),
            type: IptvType.movies,
            providerName: provider.name,
          ),
        )
        .toList();
  }

  @override
  Future<List<Category>> getTvShowCategories() async {
    final items = await db.advanced
        .collection('m3u_${provider.name}')
        .whereEquals('type', IptvType.tvshows.name)
        .find();

    final entries = items.map((i) => M3uEntryMapper.fromMap(i)).toList();
    final imdbIds = entries.map((e) => e.tvgId ?? e.safeTvgName).whereType<String>().toSet().toList();
    final imdbItems = await db.advanced.collection('imdb_${provider.name}').whereIn('id', imdbIds).find();
    final imdbEntries = imdbItems.map((i) => ImdbEntryMapper.fromMap(i)).toList();

    return imdbEntries
        .map((e) => e.genres?.first)
        .where((e) => e != null)
        .toSet()
        .toList()
        .asMap()
        .entries
        .map(
          (e) => Category(
            id: e.value.toString(),
            name: e.value.toString(),
            type: IptvType.movies,
            providerName: provider.name,
          ),
        )
        .toList();
  }

  @override
  Future<List<MovieItem>> getMovies() async {
    final items = await db.advanced.collection('m3u_${provider.name}').whereEquals('type', IptvType.movies.name).find();
    final entries = items.map((i) => M3uEntryMapper.fromMap(i)).toList();
    final imdbIds = entries.map((e) => e.tvgId ?? e.safeTvgName).whereType<String>().toSet().toList();
    final imdbItems = await db.advanced.collection('imdb_${provider.name}').whereIn('id', imdbIds).find();
    final imdbEntries = imdbItems.map((i) => ImdbEntryMapper.fromMap(i)).toList();

    final vodItems = entries.where((e) => e.type == IptvType.movies).map((e) {
      final imdbId = e.tvgId ?? e.safeTvgName;
      final imdbEntry = imdbEntries.firstWhereOrNull((e) => e.id == imdbId);
      return MovieItem(
        streamId: e.id,
        name: e.name,
        categoryId: imdbEntry?.genres?.firstOrNull ?? e.groupTitle ?? 'Unknown',
        posterUrl: imdbEntry?.primaryImage?.url ?? e.logoUrl,
        providerName: provider.name,
      );
    }).toList();

    return vodItems;
  }

  @override
  Future<List<TvShowItem>> getTvShows() async {
    final items = await db.advanced
        .collection('m3u_${provider.name}')
        .whereEquals('type', IptvType.tvshows.name)
        .find();

    final entries = items.map((i) => M3uEntryMapper.fromMap(i)).toList();
    final imdbIds = entries.map((e) => e.tvgId ?? e.safeTvgName).whereType<String>().toSet().toList();
    final imdbItems = await db.advanced.collection('imdb_${provider.name}').whereIn('id', imdbIds).find();
    final imdbEntries = imdbItems.map((i) => ImdbEntryMapper.fromMap(i)).toList();

    final seriesItems = entries
        .where((e) => e.type == IptvType.tvshows)
        .groupListsBy((e) => e.groupTitle)
        .entries
        .mapIndexed((i, e) {
          final imdbId = e.value.first.tvgId ?? e.value.first.safeTvgName;
          final imdbEntry = imdbEntries.firstWhereOrNull((e) => e.id == imdbId);
          return TvShowItem(
            seriesId: i,
            name: imdbEntry?.primaryTitle ?? imdbEntry?.originalTitle ?? e.key ?? 'Unknown',
            categoryId: imdbEntry?.genres?.firstOrNull ?? 'Unknown',
            posterUrl: imdbEntry?.primaryImage?.url ?? e.value.first.logoUrl,
            providerName: provider.name,
          );
        })
        .toList();

    return seriesItems;
  }

  @override
  Future<List<LiveChannel>> getLiveStreams() async {
    final items = await db.advanced.collection('m3u_${provider.name}').whereEquals('type', IptvType.live.name).find();
    final entries = items.map((i) => M3uEntryMapper.fromMap(i)).toList();
    final liveChannels = entries.where((e) => e.type == IptvType.live).mapIndexed((i, e) {
      return LiveChannel(
        streamId: i,
        name: e.name,
        categoryId: e.groupTitle ?? 'Unknown',
        logoUrl: e.logoUrl,
        epgChannelId: e.tvgId,
        providerName: provider.name,
      );
    }).toList();

    return liveChannels;
  }

  @override
  Future<MovieDetails> getMovieDetails(int vodId) async {
    final item = await db.advanced.collection('m3u_${provider.name}:$vodId').findOne();
    final entry = M3uEntryMapper.fromMap(item!);
    final imdbId = entry.tvgId ?? entry.safeTvgName;
    final imdbItem = await db.advanced.collection('imdb_${provider.name}').whereEquals('id', imdbId).findOne();
    final imdbEntry = imdbItem != null ? ImdbEntryMapper.fromMap(imdbItem) : null;

    return MovieDetails(
      streamId: vodId,
      name: entry.name,
      plot: imdbEntry?.plot,
      rating: imdbEntry?.rating?.aggregateRating,
      year: imdbEntry?.startYear,
      posterUrl: imdbEntry?.primaryImage?.url ?? entry.logoUrl,
      duration: imdbEntry?.runtimeSeconds != null ? Duration(seconds: imdbEntry!.runtimeSeconds!) : null,
      providerName: provider.name,
    );
  }

  @override
  Future<TvShowDetails> getTvShowDetails(int seriesId) async {
    final item = await db.advanced.collection('m3u_${provider.name}:$seriesId').findOne();
    final entry = M3uEntryMapper.fromMap(item!);
    final items = await db.advanced
        .collection('m3u_${provider.name}')
        .whereEquals('groupTitle', entry.groupTitle)
        .whereEquals('type', IptvType.tvshows.name)
        .find();

    final entries = items.map((i) => M3uEntryMapper.fromMap(i)).toList();

    final imdbId = entry.tvgId ?? entry.safeTvgName;
    final imdbItem = await db.advanced.collection('imdb_${provider.name}').whereEquals('id', imdbId).findOne();
    final imdbEntry = imdbItem != null ? ImdbEntryMapper.fromMap(imdbItem) : null;

    final episodesInfo = await imdbApi.titlesTitleIdEpisodesGet(titleId: imdbId);
    final seasons = episodesInfo.body?.episodes?.groupListsBy((g) => g.season);

    return TvShowDetails(
      seriesId: seriesId,
      name: imdbEntry?.primaryTitle ?? imdbEntry?.originalTitle ?? entry.groupTitle ?? 'Unknown',
      seasons: entries
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
                return EpisodeDetails(
                  id: entries.indexOf(episode),
                  title: episodeImdbEntry?.title ?? episode.name,
                  season: episode.seasonNumber,
                  episode: episode.episodeNumber,
                  duration: episodeImdbEntry?.runtimeSeconds != null
                      ? Duration(seconds: episodeImdbEntry!.runtimeSeconds!)
                      : null,
                  plot: episodeImdbEntry?.plot,
                  providerName: provider.name,
                );
              }).toList(),
            ),
          ),
      plot: imdbEntry?.plot,
      posterUrl: imdbEntry?.primaryImage?.url ?? entry.logoUrl,
      providerName: provider.name,
    );
  }

  @override
  Future<String> getLiveUrl(int streamId, {String? extension}) async {
    final item = await db.advanced.collection('m3u_${provider.name}:$streamId').findOne();
    final entry = M3uEntryMapper.fromMap(item!);
    return entry.url;
  }

  @override
  Future<String> getMovieUrl(int streamId, {String? extension}) async {
    final item = await db.advanced.collection('m3u_${provider.name}:$streamId').findOne();
    final entry = M3uEntryMapper.fromMap(item!);
    return entry.url;
  }

  @override
  Future<String> getTvShowUrl(int episodeId, {String? extension}) async {
    final item = await db.advanced.collection('m3u_${provider.name}:$episodeId').findOne();
    final entry = M3uEntryMapper.fromMap(item!);
    return entry.url;
  }
}
