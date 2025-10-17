import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'blocs/iptv_service/iptv_service_cubit.dart';
import 'blocs/iptv_service/iptv_service_state.dart';
import 'blocs/state_status.dart';
import 'presentation/pages/movie_details/movie_details_shell.dart';
import 'presentation/pages/player/player_page.dart';
import 'presentation/pages/tv_show_details/tv_show_details_shell.dart';
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
      overlayWidgetBuilder: (progress) => Center(child: FCircularProgress()),
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
              ),
              GoRoute(
                path: '/tvshow/:providerName/:tvShowId',
                name: 'tvShowDetails',
                builder: (context, state) {
                  final providerName = state.pathParameters['providerName']!;
                  final tvShowId = int.parse(state.pathParameters['tvShowId']!);
                  return TvShowDetailsShell(providerName: providerName, tvShowId: tvShowId);
                },
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
