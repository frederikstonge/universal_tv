import 'dart:convert';

import 'package:xtream_code_client/xtream_code_client.dart' hide Category;
import 'package:xtream_code_client/xtream_code_client.dart' as xt show Category;

import '../blocs/settings/iptv_provider.dart';
import '../models/category.dart';
import '../models/iptv_type.dart';
import '../models/live_channel.dart';
import '../models/movie_details.dart';
import '../models/movie_item.dart';
import '../models/tv_show_details.dart';
import '../models/tv_show_item.dart';
import '../models/xmltv_base.dart';
import '../models/xmltv_channel.dart';
import '../models/xmltv_programme.dart';
import 'stream_base_repository.dart';
import 'xmltv_base_repository.dart';

class XtreamRepository implements StreamBaseRepository, XmltvBaseRepository {
  final XtreamIptvProvider provider;
  late final XtreamClient client;

  XtreamRepository({required this.provider}) {
    client = XtreamClient(url: provider.url, username: provider.userName, password: provider.password);
  }

  @override
  String get name => provider.name;

  @override
  Future<void> load() async {
    final serverInfo = await client.serverInformation();
    if (serverInfo.meta.statusCode < 200 || serverInfo.meta.statusCode >= 300) {
      throw Exception(
        'Failed to connect to Xtream server: ${serverInfo.meta.statusCode} ${jsonEncode(serverInfo.warnings)}',
      );
    }
  }

  @override
  Future<void> dispose() async {
    client.close();
  }

  @override
  Future<List<Category>> getLiveCategories() async {
    final categories = await client.liveStreamCategoriesData();
    return categories.map((e) => Category.fromXtCategory(e, IptvType.live, provider.name)).toList();
  }

  @override
  Future<List<Category>> getMovieCategories() async {
    final categories = await client.vodCategoriesData();
    return categories.map((e) => Category.fromXtCategory(e, IptvType.movies, provider.name)).toList();
  }

  @override
  Future<List<Category>> getTvShowCategories() async {
    final categories = await client.seriesCategoriesData();
    return categories.map((e) => Category.fromXtCategory(e, IptvType.tvshows, provider.name)).toList();
  }

  @override
  Future<List<LiveChannel>> getLiveStreams({String? categoryId}) async {
    final category = categoryId != null ? xt.Category(categoryId: int.parse(categoryId)) : null;
    final streams = await client.liveStreamItemsData(category: category);
    return streams.map((e) => LiveChannel.fromXtLiveChannel(e, provider.name)).toList();
  }

  @override
  Future<List<MovieItem>> getMovies({String? categoryId}) async {
    final category = categoryId != null ? xt.Category(categoryId: int.parse(categoryId)) : null;
    final movies = await client.vodItemsData(category: category);
    return movies.map((e) => MovieItem.fromXtVodItem(e, provider.name)).toList();
  }

  @override
  Future<List<TvShowItem>> getTvShows({String? categoryId}) async {
    final category = categoryId != null ? xt.Category(categoryId: int.parse(categoryId)) : null;
    final tvShows = await client.seriesItemsData(category: category);
    return tvShows.map((e) => TvShowItem.fromXtSeriesItem(e, provider.name)).toList();
  }

  @override
  Future<TvShowDetails> getTvShowDetails(String seriesId) async {
    final series = SeriesItem(seriesId: int.parse(seriesId));
    final tvShow = await client.seriesInfoData(series);
    return TvShowDetails.fromXtSeriesItem(tvShow, provider.name);
  }

  @override
  Future<MovieDetails> getMovieDetails(String vodId) async {
    final vod = VodItem(streamId: int.parse(vodId));
    final item = await client.vodInfoData(vod);
    return MovieDetails.fromXtVodDetails(item, provider.name);
  }

  @override
  Future<List<XmltvProgramme>> getShortEpg({String? channelId}) async {
    final items = await client.epgLiteData();
    final filteredItems = items.programmes.where((e) => channelId == null || e.channelId == channelId).toList();
    final expiration = DateTime.now().add(provider.epgExpiration);
    return filteredItems.map((e) => XmltvProgramme.fromXtEpg(e, provider.name, expiration)).toList();
  }

  @override
  Future<List<XmltvBase>> getXmltv() async {
    final items = await client.epgData();
    final expiration = DateTime.now().add(provider.epgExpiration);
    return [
      ...items.channels.map((c) => XmltvChannel.fromXtXmltvChannel(c, provider.name, expiration)),
      ...items.programmes.map((p) => XmltvProgramme.fromXtXmltvProgramme(p, provider.name, expiration)),
    ];
  }

  @override
  Future<String> getLiveUrl(String streamId, {String? extension}) async =>
      client.streamUrl(int.parse(streamId), [extension ?? 'ts']).toString();

  @override
  Future<String> getTvShowUrl(String episodeId, {String? extension}) async =>
      client.seriesUrl(int.parse(episodeId), extension ?? 'm3u8').toString();

  @override
  Future<String> getMovieUrl(String streamId, {String? extension}) async =>
      client.movieUrl(int.parse(streamId), extension ?? 'm3u8').toString();
}
