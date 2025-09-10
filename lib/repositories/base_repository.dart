import 'package:muxa_xtream/muxa_xtream.dart';

abstract class BaseRepository {
  Future<void> load();
  Future<List<XtCategory>> getLiveCategories();
  Future<List<XtCategory>> getVodCategories();
  Future<List<XtCategory>> getSeriesCategories();
  Future<List<XtLiveChannel>> getLiveStreams();
  Future<List<XtVodItem>> getVodStreams();
  Future<List<XtSeriesItem>> getSeries();
  Future<XtSeriesDetails> getSeriesInfo(int seriesId);
  Future<XtVodDetails> getVodInfo(int vodId);
  String getLiveUrl(int streamId);
  String getVodUrl(int streamId);
  String getSeriesUrl(int episodeId);
}
