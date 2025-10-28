import 'package:go_router/go_router.dart';

import '../presentation/pages/live_player/live_player_page.dart';
import '../presentation/pages/movie_details/movie_details_shell.dart';
import '../presentation/pages/movie_player/movie_player_shell.dart';
import '../presentation/pages/tv_show_details/tv_show_details_shell.dart';
import '../presentation/pages/tv_show_player/tv_show_player_shell.dart';
import '../presentation/shells/main_shell.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home', name: 'home', builder: (context, state) => const MainShell()),
    GoRoute(
      path: '/movie/:providerName/:movieId',
      name: 'movieDetails',
      builder: (context, state) {
        final providerName = state.pathParameters['providerName']!;
        final movieId = int.parse(state.pathParameters['movieId']!);
        return MovieDetailsShell(providerName: providerName, movieId: movieId);
      },
      routes: [
        GoRoute(
          path: 'movie-player',
          name: 'moviePlayer',
          builder: (context, state) {
            final providerName = state.pathParameters['providerName']!;
            final movieId = int.parse(state.pathParameters['movieId']!);
            return MoviePlayerShell(providerName: providerName, movieId: movieId);
          },
        ),
      ],
    ),
    GoRoute(
      path: '/tvshow/:providerName/:tvShowId',
      name: 'tvShowDetails',
      builder: (context, state) {
        final providerName = state.pathParameters['providerName']!;
        final tvShowId = int.parse(state.pathParameters['tvShowId']!);
        return TvShowDetailsShell(providerName: providerName, tvShowId: tvShowId);
      },
      routes: [
        GoRoute(
          path: '/tvshow-player',
          name: 'tvShowPlayer',
          builder: (context, state) {
            final providerName = state.pathParameters['providerName']!;
            final tvShowId = int.parse(state.pathParameters['tvShowId']!);
            final selectedSeason = int.parse(state.uri.queryParameters['season']!);
            final selectedEpisode = int.parse(state.uri.queryParameters['episode']!);

            return TvShowPlayerShell(
              providerName: providerName,
              tvShowId: tvShowId,
              selectedSeason: selectedSeason,
              selectedEpisode: selectedEpisode,
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: '/live-player',
      name: 'livePlayer',
      builder: (context, state) {
        return LivePlayerPage();
      },
    ),
  ],
);
