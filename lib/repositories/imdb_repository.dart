import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_ce/hive.dart';

import '../generated/imdb_api/imdb_api.swagger.dart';
import '../models/repositories/imdb_entry.dart';

class ImdbRepository {
  final Duration throttleDelay = const Duration(milliseconds: 1000 ~/ 5); // 5 per seconds
  final Duration throttleBatchDelay = const Duration(milliseconds: (1000 * 10) ~/ 20); // 20 per 10 seconds

  final ImdbApi imdbApi;
  final HiveInterface hive;

  DateTime? _lastApiCall;
  DateTime? _lastBatchApiCall;

  ImdbRepository({required this.imdbApi, required this.hive});

  Future<Box<ImdbEntry>> get cacheBox => hive.openBox<ImdbEntry>('imdb_cache_box');

  Future<ImdbEntry?> getEntry(String imdbId) async {
    final box = await cacheBox;
    final cacheKey = _getCacheKey(imdbId);
    if (box.containsKey(cacheKey)) {
      final cachedData = box.get(cacheKey);
      if (cachedData != null) {
        return cachedData;
      }
    }

    try {
      await _throttleApiCall();
      final response = await imdbApi.titlesTitleIdGet(titleId: imdbId);
      if (response.isSuccessful && response.body != null) {
        final imdbEntry = ImdbEntry.fromImdbapiTitle(response.body!);
        await box.put(cacheKey, imdbEntry);
        return imdbEntry;
      } else {
        if (kDebugMode) {
          debugPrint('ImdbRepository preload - title not found: $imdbId');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('ImdbRepository getEntry error: $e');
      }
    }

    return null;
  }

  Future<ImdbEpisodesEntry?> getEpisodeDetails(String imdbId) async {
    try {
      final response = await imdbApi.titlesTitleIdEpisodesGet(titleId: imdbId);
      if (response.isSuccessful && response.body != null) {
        return ImdbEpisodesEntry.fromImdbapiEpisodes(response.body!);
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('ImdbRepository getEpisodeDetails error: $e');
      }
    }

    return null;
  }

  Future<List<ImdbEntry>> getEntries(List<String> imdbIds) async {
    final box = await cacheBox;
    final imdbTitlesIds = imdbIds.toSet().toList().where((id) => !box.containsKey(_getCacheKey(id))).toList();

    if (imdbTitlesIds.isEmpty) {
      return [];
    }

    final entries = <ImdbEntry>[];
    for (final ids in imdbTitlesIds.slices(5)) {
      try {
        await _throttleBatchApiCall();
        final result = await imdbApi.titlesBatchGetGet(titleIds: ids);
        final titles = result.body?.titles?.map((e) => ImdbEntry.fromImdbapiTitle(e)).toList() ?? [];
        final idsNotFound = ids.toSet().difference(titles.map((e) => e.id).toSet()).toList();
        if (idsNotFound.isNotEmpty && kDebugMode) {
          debugPrint('ImdbRepository getEntries - titles not found: $idsNotFound');
        }
        entries.addAll(titles);
      } catch (e) {
        if (kDebugMode) {
          debugPrint('ImdbRepository getEntries error: $e');
        }
        // ignore errors from imdb api
      }
    }

    await box.putAll(entries.asMap().map((i, e) => MapEntry(_getCacheKey(e.id), e)));
    return entries;
  }

  Future<void> clearCache() async {
    final box = await cacheBox;
    await box.clear();
  }

  String _getCacheKey(String? imdbId) {
    return 'imdb_entry_$imdbId';
  }

  Future<void> _throttleApiCall() async {
    if (_lastApiCall != null) {
      final timeSinceLastCall = DateTime.now().difference(_lastApiCall!);
      if (timeSinceLastCall < throttleDelay) {
        final remainingDelay = throttleDelay - timeSinceLastCall;
        await Future.delayed(remainingDelay);
      }
    }

    _lastApiCall = DateTime.now();
  }

  Future<void> _throttleBatchApiCall() async {
    if (_lastBatchApiCall != null) {
      final timeSinceLastCall = DateTime.now().difference(_lastBatchApiCall!);
      if (timeSinceLastCall < throttleBatchDelay) {
        final remainingDelay = throttleBatchDelay - timeSinceLastCall;
        await Future.delayed(remainingDelay);
      }
    }

    _lastBatchApiCall = DateTime.now();
  }
}
