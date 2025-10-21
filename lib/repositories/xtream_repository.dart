import 'package:muxa_xtream/muxa_xtream.dart';

import '../blocs/settings/iptv_provider.dart';
import '../models/category.dart';
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
  late final XtreamPortal portal;
  late final XtreamCredentials credentials;
  late final XtreamClient client;

  XtreamRepository({required this.provider}) {
    portal = XtreamPortal(Uri.parse(provider.url));
    credentials = XtreamCredentials(username: provider.userName, password: provider.password);
    client = XtreamClient(portal, credentials);
  }

  @override
  String get name => provider.name;

  @override
  Future<void> load() async {
    final health = await client.ping();
    if (!health.ok) {
      throw Exception('Failed to connect to Xtream server ${provider.name}: ${health.statusCode}');
    }
  }

  @override
  Future<void> dispose() async {
    // No persistent data to clear
  }

  @override
  Future<List<Category>> getLiveCategories() async {
    final categories = await client.getLiveCategories();
    return categories.map((e) => Category.fromXtCategory(e, provider.name)).toList();
  }

  @override
  Future<List<Category>> getMovieCategories() async {
    final categories = await client.getVodCategories();
    return categories.map((e) => Category.fromXtCategory(e, provider.name)).toList();
  }

  @override
  Future<List<Category>> getTvShowCategories() async {
    final categories = await client.getSeriesCategories();
    return categories.map((e) => Category.fromXtCategory(e, provider.name)).toList();
  }

  @override
  Future<List<LiveChannel>> getLiveStreams() async {
    final streams = await client.getLiveStreams();
    return streams.map((e) => LiveChannel.fromXtLiveChannel(e, provider.name)).toList();
  }

  @override
  Future<List<MovieItem>> getMovies() async {
    final movies = await client.getVodStreams();
    return movies.map((e) => MovieItem.fromXtVodItem(e, provider.name)).toList();
  }

  @override
  Future<List<TvShowItem>> getTvShows() async {
    final tvShows = await client.getSeries();
    return tvShows.map((e) => TvShowItem.fromXtSeriesItem(e, provider.name)).toList();
  }

  @override
  Future<TvShowDetails> getTvShowDetails(int seriesId) async {
    final tvShow = await client.getSeriesInfo(seriesId);
    return TvShowDetails.fromXtSeriesItem(tvShow, provider.name);
  }

  @override
  Future<MovieDetails> getMovieDetails(int vodId) async {
    final item = await client.getVodInfo(vodId);
    return MovieDetails.fromXtVodDetails(item, provider.name);
  }

  @override
  Future<bool> supportsShortEpg() async {
    final capabilities = await client.capabilities();
    return capabilities.supportsShortEpg;
  }

  @override
  Future<bool> supportsXmltv() async {
    final capabilities = await client.capabilities();
    return capabilities.supportsXmltv;
  }

  @override
  Future<List<XmltvProgramme>> getShortEpg() async {
    final capabilities = await client.capabilities();
    if (capabilities.supportsShortEpg) {
      final items = await client.getShortEpg();
      final expiration = DateTime.now().add(provider.epgExpiration);
      return items.map((e) => XmltvProgramme.fromXtEpg(e, provider.name, expiration)).toList();
    }

    return [];
  }

  @override
  Future<List<XmltvBase>> getXmltv() async {
    final capabilities = await client.capabilities();
    if (capabilities.supportsXmltv) {
      final items = await client.getXmltv().toList();
      final expiration = DateTime.now().add(provider.epgExpiration);
      return items
          .map((e) {
            if (e is XtXmltvChannel) {
              return XmltvChannel.fromXtXmltvChannel(e, provider.name, expiration);
            } else if (e is XtXmltvProgramme) {
              return XmltvProgramme.fromXtXmltvProgramme(e, provider.name, expiration);
            }

            return null;
          })
          .whereType<XmltvBase>()
          .toList();
    }

    return [];
  }

  @override
  Future<String> getLiveUrl(int streamId, {String? extension}) async =>
      liveUrl(portal, credentials, streamId, extension: extension ?? 'm3u8').toString();

  @override
  Future<String> getTvShowUrl(int episodeId, {String? extension}) async =>
      seriesUrl(portal, credentials, episodeId, extension: extension ?? 'm3u8').toString();

  @override
  Future<String> getMovieUrl(int streamId, {String? extension}) async =>
      vodUrl(portal, credentials, streamId, extension: extension ?? 'm3u8').toString();
}
