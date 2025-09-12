import '../models/category.dart';
import '../models/live_channel.dart';
import '../models/movie_details.dart';
import '../models/movie_item.dart';
import '../models/tv_show_details.dart';
import '../models/tv_show_item.dart';
import 'base_repository.dart';

abstract class StreamBaseRepository implements BaseRepository {
  Future<List<Category>> getLiveCategories();
  Future<List<Category>> getMovieCategories();
  Future<List<Category>> getTvShowCategories();
  Future<List<LiveChannel>> getLiveStreams();
  Future<List<MovieItem>> getMovies();
  Future<List<TvShowItem>> getTvShows();
  Future<MovieDetails> getMovieDetails(int vodId);
  Future<TvShowDetails> getTvShowDetails(int seriesId);
  Future<String> getLiveUrl(int streamId, {String? extension});
  Future<String> getMovieUrl(int streamId, {String? extension});
  Future<String> getTvShowUrl(int episodeId, {String? extension});
}
