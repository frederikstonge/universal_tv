import 'package:muxa_xtream/muxa_xtream.dart';

import '../blocs/settings/iptv_provider.dart';
import 'base_repository.dart';

class XtreamRepository extends BaseRepository {
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
  Future<void> load() async {}

  @override
  Future<List<XtCategory>> getLiveCategories() async => client.getLiveCategories();

  @override
  Future<List<XtCategory>> getVodCategories() async => client.getVodCategories();

  @override
  Future<List<XtCategory>> getSeriesCategories() async => client.getSeriesCategories();

  @override
  Future<List<XtLiveChannel>> getLiveStreams() async => client.getLiveStreams();

  @override
  Future<List<XtVodItem>> getVodStreams() async => client.getVodStreams();

  @override
  Future<List<XtSeriesItem>> getSeries() async => client.getSeries();

  @override
  Future<XtSeriesDetails> getSeriesInfo(int seriesId) async => client.getSeriesInfo(seriesId);

  @override
  Future<XtVodDetails> getVodInfo(int vodId) async => client.getVodInfo(vodId);

  @override
  String getLiveUrl(int streamId) => liveUrl(portal, credentials, streamId).toString();

  @override
  String getSeriesUrl(int episodeId) => seriesUrl(portal, credentials, episodeId).toString();

  @override
  String getVodUrl(int streamId) => vodUrl(portal, credentials, streamId).toString();
}
