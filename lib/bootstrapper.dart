import 'package:dart_cast/dart_cast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'blocs/cast/cast_cubit.dart';
import 'blocs/iptv_service/iptv_service_cubit.dart';
import 'blocs/live/live_cubit.dart';
import 'blocs/movies/movies_cubit.dart';
import 'blocs/settings/settings_cubit.dart';
import 'blocs/tv_shows/tv_shows_cubit.dart';
import 'repositories/tmdb_repository.dart';

class Bootstrapper extends StatelessWidget {
  const Bootstrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (repositoryContext) => Dio(), dispose: (value) => value.close(force: true)),
        RepositoryProvider(create: (repositoryContext) => TmdbRepository(dio: repositoryContext.read<Dio>())),
        RepositoryProvider(
          create: (repositoryContext) => CastService(
            discoveryProviders: [DlnaDiscoveryProvider(), ChromecastDiscoveryProvider(), AirPlayDiscoveryProvider()],
            sessionFactory: (device) => switch (device.protocol) {
              CastProtocol.chromecast => ChromecastSession(device: device),
              CastProtocol.airplay => AirPlaySession(device),
              CastProtocol.dlna => DlnaSession.fromDevice(device),
            },
          ),
          dispose: (value) => value.dispose(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (blocContext) => SettingsCubit()),
          BlocProvider(
            create: (blocContext) {
              final castService = blocContext.read<CastService>();
              return CastCubit(castService: castService);
            },
          ),
          BlocProvider(
            create: (blocContext) => IptvServiceCubit(
              dio: blocContext.read<Dio>(),
              tmdbRepository: blocContext.read<TmdbRepository>(),
              settingsCubit: blocContext.read<SettingsCubit>(),
            )..initialize(blocContext.read<SettingsCubit>().state.providers),
          ),
          BlocProvider(
            create: (blocContext) => MoviesCubit(iptvServiceCubit: blocContext.read<IptvServiceCubit>())..load(),
          ),
          BlocProvider(
            create: (blocContext) => TvShowsCubit(iptvServiceCubit: blocContext.read<IptvServiceCubit>())..load(),
          ),
          BlocProvider(
            create: (blocContext) => LiveCubit(iptvServiceCubit: blocContext.read<IptvServiceCubit>())..load(),
          ),
        ],
        child: const App(),
      ),
    );
  }
}
