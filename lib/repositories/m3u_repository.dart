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
import '../models/tv_show_details.dart';
import '../models/tv_show_item.dart';
import '../models/xmltv_base.dart';
import '../models/xmltv_programme.dart';
import '../parsers/m3u_parser.dart';
import 'stream_base_repository.dart';
import 'xmltv_base_repository.dart';

class M3uRepository implements StreamBaseRepository, XmltvBaseRepository {
  final M3uIptvProvider provider;
  final Dio dio;

  final List<M3uEntry> _entries = [];
  DateTime? _lastLoaded;

  M3uRepository({required this.provider, required this.dio});

  @override
  String get name => provider.name;

  @override
  Future<void> load() async {
    _entries.clear();
    for (final link in provider.urls) {
      if (link.contains('{page}')) {
        bool success;
        var page = 1;
        do {
          final currentPage = page++;
          final url = link.replaceAll('{page}', currentPage.toString());
          success = await _loadm3uData(url);
        } while (success);
      } else if (link.contains('{skip}') && link.contains('{take}')) {
        bool success;
        var skip = 0;
        final take = 1000;
        do {
          final url = link.replaceAll('{skip}', skip.toString()).replaceAll('{take}', take.toString());
          success = await _loadm3uData(url);
          skip += take;
        } while (success);
      } else {
        await _loadm3uData(link);
      }
    }

    _lastLoaded = DateTime.now();
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
      final m3uDataStream = M3uParser.parseM3u(Stream.value(utf8.encode(data)), provider.name);
      final m3uData = await m3uDataStream.toList();
      entries.addAll(m3uData);
    } catch (e) {
      return false;
    }

    _entries.addAll(entries);
    return true;
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
    return entries.groupListsBy((e) => e.groupTitle).entries.map((e) => Category.fromM3uEntry(e.value.first)).toList();
  }

  @override
  Future<List<Category>> getTvShowCategories() async {
    final entries = _entries.where((e) => e.type == IptvType.tvshows);
    return entries.groupListsBy((e) => e.groupTitle).entries.map((e) => Category.fromM3uEntry(e.value.first)).toList();
  }

  @override
  Future<List<MovieItem>> getMovies({String? categoryId}) async {
    final movieEntries = _entries
        .where((e) => e.type == IptvType.movies && (categoryId == null || e.groupTitle == categoryId))
        .toList();

    final vodItems = movieEntries.map((e) => MovieItem.fromM3uEntry(e)).toList();

    return vodItems;
  }

  @override
  Future<List<TvShowItem>> getTvShows({String? categoryId}) async {
    final tvShowEntries = _entries
        .where((e) => e.type == IptvType.tvshows && (categoryId == null || e.groupTitle == categoryId))
        .toList();

    final seriesItems = tvShowEntries
        .groupListsBy((e) => e.groupTitle)
        .entries
        .map((e) => TvShowItem.fromM3uEntry(e.value.first))
        .toList();

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

    return MovieDetails.fromM3uEntry(entry);
  }

  @override
  Future<TvShowDetails> getTvShowDetails(String seriesId) async {
    final entry = _entries.firstWhereOrNull((e) => e.id == seriesId && e.type == IptvType.tvshows);
    if (entry == null) {
      throw Exception('TV Show not found');
    }

    final entries = _entries.where((e) => e.groupTitle == entry.groupTitle && e.type == IptvType.tvshows).toList();

    return TvShowDetails.fromM3uEntries(entries);
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
