import 'package:muxa_xtream/muxa_xtream.dart';

import '../blocs/settings/iptv_provider.dart';
import '../models/category.dart';
import '../models/live_channel.dart';
import '../models/movie_item.dart';
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
    portal = XtreamPortal(provider.url);
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
  Future<List<Category>> getVodCategories() async {
    final categories = await client.getVodCategories();
    return categories.map((e) => Category.fromXtCategory(e, provider.name)).toList();
  }

  @override
  Future<List<Category>> getSeriesCategories() async {
    final categories = await client.getSeriesCategories();
    return categories.map((e) => Category.fromXtCategory(e, provider.name)).toList();
  }

  @override
  Future<List<LiveChannel>> getLiveStreams() async {
    final streams = await client.getLiveStreams();
    return streams.map((e) => LiveChannel.fromXtLiveChannel(e, provider.name)).toList();
  }

  @override
  Future<List<MovieItem>> getVodStreams() async {
    final streams = await client.getVodStreams();
    return streams.map((e) => MovieItem.fromXtVodItem(e, provider.name)).toList();
  }

  @override
  Future<List<TvShowItem>> getSeries() async {
    final series = await client.getSeries();
    return series.map((e) => TvShowItem.fromXtSeriesItem(e, provider.name)).toList();
  }

  @override
  Future<XtSeriesDetails> getSeriesInfo(int seriesId) async => client.getSeriesInfo(seriesId);

  @override
  Future<XtVodDetails> getVodInfo(int vodId) async => client.getVodInfo(vodId);

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
      return items.map((e) => XmltvProgramme.fromXtEpg(e, provider.name)).toList();
    }

    return [];
  }

  @override
  Future<List<XmltvBase>> getXmltv() async {
    final capabilities = await client.capabilities();
    if (capabilities.supportsXmltv) {
      final items = await client.getXmltv().toList();
      return items
          .map((e) {
            if (e is XtXmltvChannel) {
              return XmltvChannel.fromXtXmltvChannel(e, provider.name);
            } else if (e is XtXmltvProgramme) {
              return XmltvProgramme.fromXtXmltvProgramme(e, provider.name);
            }

            return null;
          })
          .whereType<XmltvBase>()
          .toList();
    }

    return [];
  }

  @override
  Future<String> getLiveUrl(int streamId) async => liveUrl(portal, credentials, streamId).toString();

  @override
  Future<String> getSeriesUrl(int episodeId) async => seriesUrl(portal, credentials, episodeId).toString();

  @override
  Future<String> getVodUrl(int streamId) async => vodUrl(portal, credentials, streamId).toString();
}
