import 'package:muxa_xtream/muxa_xtream.dart';

import '../models/category.dart';
import '../models/live_channel.dart';
import '../models/movie_item.dart';
import '../models/tv_show_item.dart';
import 'base_repository.dart';

abstract class StreamBaseRepository implements BaseRepository {
  Future<List<Category>> getLiveCategories();
  Future<List<Category>> getVodCategories();
  Future<List<Category>> getSeriesCategories();
  Future<List<LiveChannel>> getLiveStreams();
  Future<List<MovieItem>> getVodStreams();
  Future<List<TvShowItem>> getSeries();
  Future<XtSeriesDetails> getSeriesInfo(int seriesId);
  Future<XtVodDetails> getVodInfo(int vodId);
  Future<String> getLiveUrl(int streamId, {String? extension});
  Future<String> getVodUrl(int streamId, {String? extension});
  Future<String> getSeriesUrl(int episodeId, {String? extension});
}
