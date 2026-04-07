import 'package:dart_mappable/dart_mappable.dart';

import 'tmdb_entry.dart';

part 'tmdb_find_response.mapper.dart';

@MappableClass()
class TmdbFindResponse with TmdbFindResponseMappable {
  @MappableField(key: 'movie_results')
  final List<TmdbEntry> movieResults;

  @MappableField(key: 'person_results')
  final List<TmdbEntry> personResults;

  @MappableField(key: 'tv_results')
  final List<TmdbEntry> tvResults;

  @MappableField(key: 'tv_episode_results')
  final List<TmdbEntry> tvEpisodeResults;

  @MappableField(key: 'tv_season_results')
  final List<TmdbEntry> tvSeasonResults;

  const TmdbFindResponse({
    this.movieResults = const [],
    this.personResults = const [],
    this.tvResults = const [],
    this.tvEpisodeResults = const [],
    this.tvSeasonResults = const [],
  });
}
