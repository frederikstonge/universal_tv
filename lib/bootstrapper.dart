import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_ce/hive.dart';

import 'app.dart';
import 'blocs/iptv_service/iptv_service_cubit.dart';
import 'blocs/live/live_cubit.dart';
import 'blocs/movies/movies_cubit.dart';
import 'blocs/settings/settings_cubit.dart';
import 'blocs/tv_shows/tv_shows_cubit.dart';
import 'generated/imdb_api/imdb_api.swagger.dart';
import 'repositories/imdb_repository.dart';

class Bootstrapper extends StatelessWidget {
  const Bootstrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (repositoryContext) => Dio()),
        RepositoryProvider(
          create: (repositoryContext) => ImdbApi.create(baseUrl: Uri.parse('https://api.imdbapi.dev/')),
        ),
        RepositoryProvider(
          create: (repositoryContext) => ImdbRepository(imdbApi: repositoryContext.read<ImdbApi>(), hive: Hive),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (blocContext) => SettingsCubit()),
          BlocProvider(
            create: (blocContext) => IptvServiceCubit(
              dio: blocContext.read<Dio>(),
              imdbRepository: blocContext.read<ImdbRepository>(),
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
