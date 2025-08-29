import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

import 'models/iptv_entry.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/player_page.dart';
import 'presentation/pages/search_page.dart';
import 'presentation/pages/settings_page.dart';
import 'presentation/shells/main_shell.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetsApp.router(
      color: FThemes.zinc.dark.colors.primary,
      title: 'Flutter Demo',
      builder: (context, child) => FTheme(data: FThemes.zinc.dark, child: child!),
      routerConfig: GoRouter(
        initialLocation: '/home',
        routes: [
          StatefulShellRoute.indexedStack(
            branches: [
              StatefulShellBranch(
                routes: [GoRoute(path: '/home', name: 'home', builder: (context, state) => const HomePage())],
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
              final entry = IptvEntryMapper.fromJson(state.extra.toString());
              return PlayerPage(entry: entry);
            },
          ),
        ],
      ),
    );
  }
}
