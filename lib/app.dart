import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'blocs/iptv_service/iptv_service_cubit.dart';
import 'blocs/iptv_service/iptv_service_state.dart';
import 'blocs/state_status.dart';
import 'presentation/pages/live/live_page.dart';
import 'presentation/pages/movies/movies_page.dart';
import 'presentation/pages/player/player_page.dart';
import 'presentation/pages/settings/settings_page.dart';
import 'presentation/pages/tv_shows/tv_shows_page.dart';
import 'presentation/shells/main_shell.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    if (context.read<IptvServiceCubit>().state.status == StateStatus.loading) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.loaderOverlay.show();
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      overlayWidgetBuilder: (progress) => Center(child: FProgress.circularIcon()),
      child: BlocListener<IptvServiceCubit, IptvServiceState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status == StateStatus.loading) {
            context.loaderOverlay.show();
          } else {
            context.loaderOverlay.hide();
          }
        },
        child: WidgetsApp.router(
          color: FThemes.slate.dark.colors.primary,
          title: 'Universal TV',
          builder: (context, child) => FTheme(data: FThemes.slate.dark, child: child!),
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
      ),
    );
  }
}
