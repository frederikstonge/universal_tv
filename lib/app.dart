import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

import 'blocs/settings/settings_cubit.dart';
import 'blocs/settings/settings_state.dart';
import 'presentation/pages/live_page.dart';
import 'presentation/pages/movies_page.dart';
import 'presentation/pages/player_page.dart';
import 'presentation/pages/search_page.dart';
import 'presentation/pages/settings_page.dart';
import 'presentation/pages/tv_shows_page.dart';
import 'presentation/shells/main_shell.dart';
import 'services/iptv_service.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsCubit, SettingsState>(
      listenWhen: (previous, current) => previous.providers != current.providers,
      listener: (context, settingsState) async {
        final service = context.read<IptvService>();
        await service.load(settingsState.providers);
      },
      child: WidgetsApp.router(
        color: FThemes.zinc.dark.colors.primary,
        title: 'UniversalTV',
        builder: (context, child) => FTheme(data: FThemes.zinc.dark, child: child!),
        routerConfig: GoRouter(
          initialLocation: '/movies',
          routes: [
            StatefulShellRoute.indexedStack(
              branches: [
                StatefulShellBranch(
                  routes: [GoRoute(path: '/movies', name: 'movies', builder: (context, state) => const MoviesPage())],
                ),
                StatefulShellBranch(
                  routes: [
                    GoRoute(path: '/tvshows', name: 'tvshows', builder: (context, state) => const TvShowsPage()),
                  ],
                ),
                StatefulShellBranch(
                  routes: [GoRoute(path: '/live', name: 'live', builder: (context, state) => const LivePage())],
                ),
                StatefulShellBranch(
                  routes: [GoRoute(path: '/search', name: 'search', builder: (context, state) => const SearchPage())],
                ),
                StatefulShellBranch(
                  routes: [
                    GoRoute(path: '/settings', name: 'settings', builder: (context, state) => const SettingsPage()),
                  ],
                ),
              ],
              builder: (context, state, navigationShell) => MainShell(navigationShell: navigationShell),
            ),
            GoRoute(
              path: '/player',
              name: 'player',
              builder: (context, state) {
                return PlayerPage();
              },
            ),
          ],
        ),
      ),
    );
  }
}
