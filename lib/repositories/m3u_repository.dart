import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import '../../models/iptv_type.dart';
import '../blocs/settings/iptv_provider.dart';
import '../extensions/m3u_entry_extensions.dart';
import '../generated/imdb_api/imdb_api.swagger.dart';
import '../models/category.dart';
import '../models/episode_details.dart';
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

  final List<M3uEntry> _entries = [];
  final List<ImdbEntry> _imdbEntries = [];

  M3uRepository({required this.provider, required this.dio, required this.imdbApi});

  @override
  String get name => provider.name;

  @override
  Future<void> load() async {
    for (final link in provider.urls) {
      if (link.contains('{page}')) {
        bool success;
        var page = 1;
        do {
          final currentPage = page++;
          final url = link.replaceAll('{page}', currentPage.toString());
          success = await _loadm3uData(url);
        } while (success);
      } else {
        await _loadm3uData(link);
      }
    }
  }

  Future<bool> _loadm3uData(String link) async {
    String data;
    try {
      final response = await dio.get<String>(link);
      if (response.data == null || response.statusCode != 200) {
        return false;
      }
      data = response.data!;
    } catch (e) {
      return false;
    }

    final List<M3uEntry> entries = [];
    try {
      final m3uDataStream = parseM3u(Stream.value(utf8.encode(data)));
      final m3uData = await m3uDataStream.toList();
      final m3uEntries = m3uData
          .asMap()
          .entries
          .map((e) => M3uEntry.fromXtM3uEntry(e.key, e.value, provider.name))
          .toList();
      entries.addAll(m3uEntries);
    } catch (e) {
      return false;
    }

    final entriesWithImdbIds = entries
        .where(
          (e) =>
              (e.type == IptvType.movies || e.type == IptvType.tvshows) &&
              e.imdbId != null &&
              (e.imdbId?.startsWith('tt') ?? false),
        )
        .toList();

    final imdbTitlesIds = entriesWithImdbIds.map((e) => e.imdbId).whereType<String>().toSet().toList();

    for (final ids in imdbTitlesIds.slices(5)) {
      try {
        final result = await imdbApi.titlesBatchGetGet(titleIds: ids);
        final titles = result.body?.titles?.map((e) => ImdbEntry.fromImdbapiTitle(e)).toList() ?? [];
        _imdbEntries.addAll(titles);
      } catch (e) {
        // ignore errors from imdb api
      }
    }

    final entriesWithoutImdbIds = entries.where((e) => !entriesWithImdbIds.contains(e)).toList();
    final imdbTitlesName = entriesWithoutImdbIds.map((e) => e.imdbTitle).whereType<String>().toSet().toList();

    for (final imdbTitleName in imdbTitlesName) {
      try {
        final result = await imdbApi.searchTitlesGet(query: imdbTitleName, limit: 1);
        final title = result.body?.titles?.firstOrNull;
        if (title != null) {
          final imdbEntry = ImdbEntry.fromImdbapiTitle(title);
          final element = entries.firstWhereOrNull((e) => e.imdbTitle == imdbTitleName);
          if (element != null) {
            final newElement = element.copyWith(tvgId: imdbEntry.id);
            entries[entries.indexOf(element)] = newElement;
          }

          _imdbEntries.add(imdbEntry);
        }
      } catch (e) {
        // ignore errors from imdb api
      }
    }

    _entries.addAll(entries);
    return true;
  }

  @override
  Future<void> dispose() async {
    _entries.clear();
    _imdbEntries.clear();
  }

  @override
  Future<List<Category>> getLiveCategories() async {
    final categories = _entries
        .where((e) => e.type == IptvType.live)
        .groupListsBy((e) => e.groupTitle)
        .keys
        .whereType<String>()
        .toSet()
        .toList()
        .map((i) => Category(id: i, name: i, type: IptvType.live, providerName: provider.name))
        .toList();

    return categories;
  }

  @override
  Future<List<Category>> getMovieCategories() async {
    final entries = _entries.where((e) => e.type == IptvType.movies).toList();
    final imdbIds = entries.map((e) => e.imdbId).whereType<String>().toSet().toList();
    final imdbEntries = _imdbEntries.where((element) => imdbIds.contains(element.id)).toList();

    return imdbEntries
        .expand((e) => e.genres ?? [])
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
    final entries = _entries.where((e) => e.type == IptvType.tvshows).toList();
    final imdbIds = entries.map((e) => e.imdbId).whereType<String>().toSet().toList();
    final imdbEntries = _imdbEntries.where((element) => imdbIds.contains(element.id)).toList();

    return imdbEntries
        .expand((e) => e.genres ?? [])
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
    final entries = _entries.where((e) => e.type == IptvType.movies).toList();
    final imdbIds = entries.map((e) => e.imdbId).whereType<String>().toSet().toList();
    final imdbEntries = _imdbEntries.where((element) => imdbIds.contains(element.id)).toList();

    final vodItems = entries.where((e) => e.type == IptvType.movies).map((e) {
      final imdbId = e.imdbId;
      final imdbEntry = imdbEntries.firstWhereOrNull((e) => e.id == imdbId);
      return MovieItem(
        streamId: e.id,
        name: e.name,
        categoryIds: imdbEntry?.genres ?? [e.groupTitle ?? provider.name],
        posterUrl: imdbEntry?.primaryImage?.url ?? e.logoUrl,
        providerName: provider.name,
      );
    }).toList();

    return vodItems;
  }

  @override
  Future<List<TvShowItem>> getTvShows() async {
    final entries = _entries.where((e) => e.type == IptvType.tvshows).toList();
    final imdbIds = entries.map((e) => e.imdbId).whereType<String>().toSet().toList();
    final imdbEntries = _imdbEntries.where((element) => imdbIds.contains(element.id)).toList();

    final seriesItems = entries
        .where((e) => e.type == IptvType.tvshows)
        .groupListsBy((e) => e.groupTitle)
        .entries
        .mapIndexed((i, e) {
          final imdbId = e.value.first.imdbId;
          final imdbEntry = imdbEntries.firstWhereOrNull((e) => e.id == imdbId);
          final entry = e.value.first;
          return TvShowItem(
            seriesId: i,
            name:
                imdbEntry?.primaryTitle ??
                imdbEntry?.originalTitle ??
                entry.groupTitle ??
                entry.safeTvgName ??
                entry.name,
            categoryIds: imdbEntry?.genres ?? [provider.name],
            posterUrl: imdbEntry?.primaryImage?.url ?? entry.logoUrl,
            providerName: provider.name,
          );
        })
        .toList();

    return seriesItems;
  }

  @override
  Future<List<LiveChannel>> getLiveStreams() async {
    final entries = _entries.where((e) => e.type == IptvType.live).toList();
    final liveChannels = entries.mapIndexed((i, e) {
      return LiveChannel(
        streamId: i,
        name: e.name,
        categoryId: e.groupTitle ?? provider.name,
        logoUrl: e.logoUrl,
        epgChannelId: e.tvgId,
        providerName: provider.name,
      );
    }).toList();

    return liveChannels;
  }

  @override
  Future<MovieDetails> getMovieDetails(int vodId) async {
    final entry = _entries.firstWhereOrNull((e) => e.id == vodId);
    if (entry == null) {
      throw Exception('Movie not found');
    }

    final imdbId = entry.imdbId;
    final imdbEntry = _imdbEntries.firstWhereOrNull((e) => e.id == imdbId);

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
    final entry = _entries.firstWhereOrNull((e) => e.id == seriesId);
    if (entry == null) {
      throw Exception('TV Show not found');
    }

    final entries = _entries.where((e) => e.groupTitle == entry.groupTitle && e.type == IptvType.tvshows).toList();

    final imdbId = entry.imdbId;
    final imdbEntry = _imdbEntries.firstWhereOrNull((e) => e.id == imdbId);

    final episodesInfo = await imdbApi.titlesTitleIdEpisodesGet(titleId: imdbId);
    final seasons = episodesInfo.body?.episodes?.groupListsBy((g) => g.season);

    return TvShowDetails(
      seriesId: seriesId,
      name: imdbEntry?.primaryTitle ?? imdbEntry?.originalTitle ?? entry.groupTitle ?? entry.safeTvgName ?? entry.name,
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
    final entry = _entries.firstWhereOrNull((e) => e.id == streamId && e.type == IptvType.live);
    if (entry == null) {
      throw Exception('Stream not found');
    }

    return entry.url;
  }

  @override
  Future<String> getMovieUrl(int streamId, {String? extension}) async {
    final entry = _entries.firstWhereOrNull((e) => e.id == streamId && e.type == IptvType.movies);
    if (entry == null) {
      throw Exception('Movie not found');
    }

    return entry.url;
  }

  @override
  Future<String> getTvShowUrl(int episodeId, {String? extension}) async {
    final entry = _entries.firstWhereOrNull((e) => e.id == episodeId && e.type == IptvType.tvshows);
    if (entry == null) {
      throw Exception('TV Show not found');
    }

    return entry.url;
  }
}
