import 'dart:async';
import 'dart:collection';

import 'package:dio/dio.dart';

import '../extensions/m3u_entry_extensions.dart';
import '../models/iptv_type.dart';
import '../models/m3u/m3u_entry.dart';
import '../models/tmdb/tmdb_entry.dart';
import '../models/tmdb/tmdb_find_response.dart';

class TmdbRepository {
  final Dio dio;

  final Map<String, TmdbEntry> _tmdbCache = {};
  final Map<int, String> _movieGenresCache = {};
  final Map<int, String> _tvShowGenresCache = {};

  // Rate limiter: 40 requests per second
  static const int _maxRequestsPerSecond = 40;
  final Queue<DateTime> _requestTimestamps = Queue();

  TmdbRepository({required this.dio});

  Future<void> preloadM3u(List<M3uEntry> entries) async {
    const batchSize = 10;
    for (var i = 0; i < entries.length; i += batchSize) {
      final batch = entries.skip(i).take(batchSize);
      await Future.wait(batch.map((e) => getM3u(e)));
    }
  }

  Future<TmdbEntry?> getM3u(M3uEntry entry) async {
    if (entry.type == IptvType.live) {
      return null;
    }

    final imdbId = entry.imdbId ?? entry.tvgId;
    final tmdbId = entry.tmdbId ?? entry.tvgId;

    if (imdbId != null && imdbId.startsWith('tt')) {
      return await _find(imdbId, 'imdb_id', entry.type);
    } else if (tmdbId != null) {
      return await _getByTmdbId(tmdbId, entry.type);
    }

    return null;
  }

  Future<TmdbEntry?> _find(String externalId, String externalSource, IptvType type) async {
    if (_tmdbCache.containsKey(externalId)) {
      return _tmdbCache[externalId]!;
    }

    final response = await _throttledGet<String>(
      'https://api.themoviedb.org/3/find/$externalId',
      queryParameters: {'external_source': externalSource},
      options: Options(
        headers: {'Authorization': 'Bearer ${const String.fromEnvironment('TMDB_API_KEY', defaultValue: '')}'},
      ),
    );
    final tmdbFindResponse = TmdbFindResponseMapper.fromJson(response.data!);
    final tmdbEntry =
        tmdbFindResponse.movieResults.firstOrNull ??
        tmdbFindResponse.tvResults.firstOrNull ??
        tmdbFindResponse.tvSeasonResults.firstOrNull ??
        tmdbFindResponse.tvEpisodeResults.firstOrNull;

    if (tmdbEntry != null) {
      _tmdbCache[externalId] = tmdbEntry;
    }

    return tmdbEntry;
  }

  Future<TmdbEntry?> _getByTmdbId(String tmdbId, IptvType type) async {
    if (_tmdbCache.containsKey(tmdbId)) {
      return _tmdbCache[tmdbId]!;
    }

    final typePath = switch (type) {
      IptvType.movies => 'movie',
      IptvType.tvshows => 'tv',
      _ => throw ArgumentError('Unsupported type: $type'),
    };

    // TMDB doesn't have an endpoint to get by tmdb id, so we need to get all genres and filter them
    final response = await _throttledGet<String>(
      'https://api.themoviedb.org/3/$typePath/$tmdbId',
      options: Options(
        headers: {'Authorization': 'Bearer ${const String.fromEnvironment('TMDB_API_KEY', defaultValue: '')}'},
      ),
    );

    final tmdbEntry = TmdbEntryMapper.fromJson(response.data!);
    _tmdbCache[tmdbId] = tmdbEntry;
    return tmdbEntry;
  }

  Future<Map<int, String>> getMovieGenres() async {
    if (_movieGenresCache.isNotEmpty) {
      return _movieGenresCache;
    }

    // TMDB doesn't have an endpoint to get genres by ids, so we need to get all genres and filter them
    final response = await _throttledGet<Map<String, dynamic>>(
      'https://api.themoviedb.org/3/genre/movie/list',
      options: Options(
        headers: {'Authorization': 'Bearer ${const String.fromEnvironment('TMDB_API_KEY', defaultValue: '')}'},
      ),
    );

    final genres = response.data?['genres'] as Map<int, String>;
    _movieGenresCache.addAll(genres);
    return _movieGenresCache;
  }

  Future<Map<int, String>> getTvShowGenres() async {
    if (_tvShowGenresCache.isNotEmpty) {
      return _tvShowGenresCache;
    }

    // TMDB doesn't have an endpoint to get genres by ids, so we need to get all genres and filter them
    final response = await _throttledGet<Map<String, dynamic>>(
      'https://api.themoviedb.org/3/genre/tv/list',
      options: Options(
        headers: {'Authorization': 'Bearer ${const String.fromEnvironment('TMDB_API_KEY', defaultValue: '')}'},
      ),
    );
    final genres = response.data?['genres'] as Map<int, String>;
    _tvShowGenresCache.addAll(genres);
    return _tvShowGenresCache;
  }

  String getImageUrl(String path, {ImageSize size = ImageSize.medium}) {
    return 'https://image.tmdb.org/t/p/${size.value}/$path';
  }

  Future<void> _waitForRateLimit() async {
    final now = DateTime.now();
    // Remove timestamps older than 1 second
    while (_requestTimestamps.isNotEmpty && now.difference(_requestTimestamps.first).inMilliseconds >= 1000) {
      _requestTimestamps.removeFirst();
    }
    if (_requestTimestamps.length >= _maxRequestsPerSecond) {
      final oldest = _requestTimestamps.first;
      final waitTime = Duration(milliseconds: 1000 - now.difference(oldest).inMilliseconds);
      await Future.delayed(waitTime);
    }
    _requestTimestamps.add(DateTime.now());
  }

  Future<Response<T>> _throttledGet<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    await _waitForRateLimit();
    return dio.get<T>(path, queryParameters: queryParameters, options: options);
  }
}

enum ImageSize {
  small('w200'),
  medium('w500'),
  large('original');

  final String value;

  const ImageSize(this.value);
}
