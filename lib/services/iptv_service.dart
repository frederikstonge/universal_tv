import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:muxa_xtream/muxa_xtream.dart';
import 'package:reaxdb_dart/reaxdb_dart.dart';

import '../blocs/settings/iptv_provider.dart';
import '../generated/imdb_api/imdb_api.swagger.dart';
import '../models/category.dart';
import '../models/live_channel.dart';
import '../models/movie_item.dart';
import '../models/tv_show_item.dart';
import '../repositories/base_repository.dart';
import '../repositories/m3u_repository.dart';
import '../repositories/stream_base_repository.dart';
import '../repositories/xmltv_repository.dart';
import '../repositories/xtream_repository.dart';

class IptvService {
  final Dio dio;
  final ImdbApi imdbApi;
  SimpleReaxDB? db;

  final List<BaseRepository> _repositories = [];

  IptvService({required this.dio, required this.imdbApi});

  Future<void> initialize(List<IptvProvider> providers) async {
    db ??= await SimpleReaxDB.open('unversal_tv');
    await db!.clear();
    await load(providers);
  }

  Future<void> load(List<IptvProvider> providers) async {
    final removedRepositories = _repositories.where((r) => !providers.any((p) => p.name == r.name)).toList();
    await Future.wait(removedRepositories.map((r) => r.dispose()).toList());
    _repositories.removeWhere((r) => removedRepositories.contains(r));

    final newProviders = providers.where((p) => !_repositories.any((r) => r.name == p.name)).toList();
    if (newProviders.isEmpty) {
      return;
    }

    final List<BaseRepository> repositories = newProviders.map((p) {
      switch (p.type) {
        case IptvProviderType.xtream:
          return XtreamRepository(provider: p as XtreamIptvProvider);
        case IptvProviderType.xmltv:
          return XmltvRepository(provider: p as XmltvIptvProvider, dio: dio, db: db!);
        case IptvProviderType.m3u:
          return M3uRepository(provider: p as M3uIptvProvider, dio: dio, imdbApi: imdbApi, db: db!);
      }
    }).toList();

    if (repositories.isNotEmpty) {
      _repositories.addAll(repositories);
    }
  }

  Future<void> dispose() async {
    await db!.clear();
    await db?.close();
    db = null;
  }

  Future<List<Category>> getLiveCategories() async {
    final categories = await Future.wait(
      _repositories.whereType<StreamBaseRepository>().map((r) => r.getLiveCategories()),
    );
    return categories.expand((c) => c).toList();
  }

  Future<List<Category>> getVodCategories() async {
    final categories = await Future.wait(
      _repositories.whereType<StreamBaseRepository>().map((r) => r.getVodCategories()),
    );
    return categories.expand((c) => c).toList();
  }

  Future<List<Category>> getSeriesCategories() async {
    final categories = await Future.wait(
      _repositories.whereType<StreamBaseRepository>().map((r) => r.getSeriesCategories()),
    );
    return categories.expand((c) => c).toList();
  }

  Future<List<LiveChannel>> getLiveStreams() async {
    final channels = await Future.wait(_repositories.whereType<StreamBaseRepository>().map((r) => r.getLiveStreams()));
    return channels.expand((c) => c).toList();
  }

  Future<List<MovieItem>> getVodStreams() async {
    final movies = await Future.wait(_repositories.whereType<StreamBaseRepository>().map((r) => r.getVodStreams()));
    return movies.expand((c) => c).toList();
  }

  Future<List<TvShowItem>> getSeries() async {
    final series = await Future.wait(_repositories.whereType<StreamBaseRepository>().map((r) => r.getSeries()));
    return series.expand((c) => c).toList();
  }

  Future<XtSeriesDetails?> getSeriesInfo(String providerName, int seriesId) async {
    final repository = _repositories.whereType<StreamBaseRepository>().firstWhereOrNull((r) => r.name == providerName);
    return await repository?.getSeriesInfo(seriesId);
  }

  Future<XtVodDetails?> getVodInfo(String providerName, int vodId) async {
    final repository = _repositories.whereType<StreamBaseRepository>().firstWhereOrNull((r) => r.name == providerName);
    return await repository?.getVodInfo(vodId);
  }

  Future<String?> getLiveUrl(String providerName, int streamId) async {
    final repository = _repositories.whereType<StreamBaseRepository>().firstWhereOrNull((r) => r.name == providerName);

    return await repository?.getLiveUrl(streamId);
  }

  Future<String?> getVodUrl(String providerName, int streamId) async {
    final repository = _repositories.whereType<StreamBaseRepository>().firstWhereOrNull((r) => r.name == providerName);

    return await repository?.getVodUrl(streamId);
  }

  Future<String?> getSeriesUrl(String providerName, int episodeId) async {
    final repository = _repositories.whereType<StreamBaseRepository>().firstWhereOrNull((r) => r.name == providerName);

    return await repository?.getSeriesUrl(episodeId);
  }
}
