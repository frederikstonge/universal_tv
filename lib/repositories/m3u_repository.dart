import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';

import '../../models/iptv_type.dart';
import '../blocs/settings/iptv_provider.dart';
import '../extensions/m3u_entry_extensions.dart';
import '../models/category.dart';
import '../models/live_channel.dart';
import '../models/m3u/m3u_entry.dart';
import '../models/movie_details.dart';
import '../models/movie_item.dart';
import '../models/tmdb/tmdb_entry.dart';
import '../models/tv_show_details.dart';
import '../models/tv_show_item.dart';
import '../models/xmltv_base.dart';
import '../models/xmltv_programme.dart';
import '../parsers/m3u_parser.dart';
import 'stream_base_repository.dart';
import 'tmdb_repository.dart';
import 'xmltv_base_repository.dart';

class M3uRepository implements StreamBaseRepository, XmltvBaseRepository {
  final M3uIptvProvider provider;
  final Dio dio;
  final TmdbRepository tmdbRepository;

  final List<M3uEntry> _entries = [];
  DateTime? _lastLoaded;

  M3uRepository({required this.provider, required this.dio, required this.tmdbRepository});

  @override
  String get name => provider.name;

  @override
  Stream<void> load() async* {
    _entries.clear();

    for (final link in provider.urls) {
      if (link.contains('{page}')) {
        var page = 1;
        bool hasEntries;
        do {
          final url = link.replaceAll('{page}', (page++).toString());
          hasEntries = false;
          await for (final _ in _loadm3uData(url)) {
            hasEntries = true;
          }
          if (hasEntries) yield null;
        } while (hasEntries);
      } else if (link.contains('{skip}') && link.contains('{take}')) {
        var skip = 0;
        final take = 1000;
        bool hasEntries;
        do {
          final url = link.replaceAll('{skip}', skip.toString()).replaceAll('{take}', take.toString());
          hasEntries = false;
          await for (final _ in _loadm3uData(url)) {
            hasEntries = true;
          }
          if (hasEntries) yield null;
          skip += take;
        } while (hasEntries);
      } else {
        await for (final _ in _loadm3uData(link)) {}
        yield null;
      }
    }

    _lastLoaded = DateTime.now();
  }

  Stream<M3uEntry> _loadm3uData(String link) async* {
    String data;
    try {
      final response = await dio.get<String>(link);
      if (response.data == null || response.statusCode != 200) {
        return;
      }
      data = response.data!;
    } catch (e) {
      return;
    }

    Stream<M3uEntry> m3uDataStream;
    try {
      m3uDataStream = M3uParser.parseM3u(Stream.value(utf8.encode(data)), provider.name);
    } catch (e) {
      return;
    }

    await for (final entry in m3uDataStream) {
      await tmdbRepository.getM3u(entry);
      _entries.add(entry);
      yield entry;
    }
  }

  String? _tmdbPosterUrl(TmdbEntry? tmdbEntry) {
    if (tmdbEntry?.posterPath == null) return null;
    return tmdbRepository.getImageUrl(tmdbEntry!.posterPath!);
  }

  @override
  Future<void> dispose() async {
    _entries.clear();
  }

  @override
  Future<List<Category>> getLiveCategories() async {
    final entries = _entries.where((e) => e.type == IptvType.live);
    return entries.groupListsBy((e) => e.groupTitle).entries.map((e) => Category.fromM3uEntry(e.value.first)).toList();
  }

  @override
  Future<List<Category>> getMovieCategories() async {
    final entries = _entries.where((e) => e.type == IptvType.movies);
    final tmdbEntries = await Future.wait(entries.map((e) => tmdbRepository.getM3u(e)));
    final genreIds = tmdbEntries.nonNulls.expand((e) => e.genreIds ?? <int>[]).toSet();
    if (genreIds.isNotEmpty) {
      final allGenres = await tmdbRepository.getMovieGenres();
      final tmdbCategories = allGenres.entries
          .where((g) => genreIds.contains(g.key))
          .map((g) => Category(id: g.key.toString(), name: g.value, type: IptvType.movies, providerName: provider.name))
          .toList();
      if (tmdbCategories.isNotEmpty) {
        return tmdbCategories;
      }
    }

    return entries.groupListsBy((e) => e.groupTitle).entries.map((e) => Category.fromM3uEntry(e.value.first)).toList();
  }

  @override
  Future<List<Category>> getTvShowCategories() async {
    final entries = _entries.where((e) => e.type == IptvType.tvshows);
    final tmdbEntries = await Future.wait(entries.map((e) => tmdbRepository.getM3u(e)));
    final genreIds = tmdbEntries.nonNulls.expand((e) => e.genreIds ?? <int>[]).toSet();
    if (genreIds.isNotEmpty) {
      final allGenres = await tmdbRepository.getTvShowGenres();
      final tmdbCategories = allGenres.entries
          .where((g) => genreIds.contains(g.key))
          .map(
            (g) => Category(id: g.key.toString(), name: g.value, type: IptvType.tvshows, providerName: provider.name),
          )
          .toList();
      if (tmdbCategories.isNotEmpty) {
        return tmdbCategories;
      }
    }

    return entries.groupListsBy((e) => e.groupTitle).entries.map((e) => Category.fromM3uEntry(e.value.first)).toList();
  }

  @override
  Future<List<MovieItem>> getMovies({String? categoryId}) async {
    final movieEntries = _entries
        .where((e) => e.type == IptvType.movies && (categoryId == null || e.groupTitle == categoryId))
        .toList();

    final vodItems = await Future.wait(
      movieEntries.map((e) async {
        final tmdbEntry = await tmdbRepository.getM3u(e);
        return MovieItem.fromM3uEntry(e, tmdbEntry: tmdbEntry, tmdbPosterUrl: _tmdbPosterUrl(tmdbEntry));
      }),
    );

    return vodItems;
  }

  @override
  Future<List<TvShowItem>> getTvShows({String? categoryId}) async {
    final tvShowEntries = _entries
        .where((e) => e.type == IptvType.tvshows && (categoryId == null || e.groupTitle == categoryId))
        .toList();

    final seriesItems = await Future.wait(
      tvShowEntries.groupListsBy((e) => e.groupTitle).entries.map((e) async {
        final first = e.value.first;
        final tmdbEntry = await tmdbRepository.getM3u(first);
        return TvShowItem.fromM3uEntry(first, tmdbEntry: tmdbEntry, tmdbPosterUrl: _tmdbPosterUrl(tmdbEntry));
      }),
    );

    return seriesItems;
  }

  @override
  Future<List<LiveChannel>> getLiveStreams({String? categoryId}) async {
    final liveEntries = _entries
        .where((e) => e.type == IptvType.live && (categoryId == null || e.groupTitle == categoryId))
        .toList();

    final liveChannels = liveEntries.map((e) => LiveChannel.fromM3uEntry(e)).toList();

    return liveChannels;
  }

  @override
  Future<MovieDetails> getMovieDetails(String vodId) async {
    final entry = _entries.firstWhereOrNull((e) => e.id == vodId && e.type == IptvType.movies);
    if (entry == null) {
      throw Exception('Movie not found');
    }

    final tmdbEntry = await tmdbRepository.getM3u(entry);
    return MovieDetails.fromM3uEntry(entry, tmdbEntry: tmdbEntry, tmdbPosterUrl: _tmdbPosterUrl(tmdbEntry));
  }

  @override
  Future<TvShowDetails> getTvShowDetails(String seriesId) async {
    final entry = _entries.firstWhereOrNull((e) => e.id == seriesId && e.type == IptvType.tvshows);
    if (entry == null) {
      throw Exception('TV Show not found');
    }

    final entries = _entries.where((e) => e.groupTitle == entry.groupTitle && e.type == IptvType.tvshows).toList();
    final tmdbEntry = await tmdbRepository.getM3u(entry);
    return TvShowDetails.fromM3uEntries(entries, tmdbEntry: tmdbEntry, tmdbPosterUrl: _tmdbPosterUrl(tmdbEntry));
  }

  @override
  Future<String> getLiveUrl(String streamId, {String? extension}) async {
    final entry = _entries.firstWhereOrNull((e) => e.id == streamId && e.type == IptvType.live);
    if (entry == null) {
      throw Exception('Stream not found');
    }

    return entry.url;
  }

  @override
  Future<String> getMovieUrl(String streamId, {String? extension}) async {
    final entry = _entries.firstWhereOrNull((e) => e.id == streamId && e.type == IptvType.movies);
    if (entry == null) {
      throw Exception('Movie not found');
    }

    return entry.url;
  }

  @override
  Future<String> getTvShowUrl(String episodeId, {String? extension}) async {
    final entry = _entries.firstWhereOrNull((e) => e.id == episodeId && e.type == IptvType.tvshows);
    if (entry == null) {
      throw Exception('TV Show not found');
    }

    return entry.url;
  }

  @override
  Future<List<XmltvProgramme>> getShortEpg({String? channelId}) {
    final liveEntries = _entries.where(
      (e) =>
          e.type == IptvType.live &&
          (channelId == null || e.epgChannelId == channelId) &&
          e.startTime != null &&
          e.endTime != null,
    );
    final expiration = _lastLoaded!.add(const Duration(hours: 24));
    return Future.value(liveEntries.map((e) => XmltvProgramme.fromM3uEntry(e, expiration)).toList());
  }

  @override
  Future<List<XmltvBase>> getXmltv() {
    return Future.value([]);
  }
}
