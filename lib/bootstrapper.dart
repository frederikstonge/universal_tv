import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'blocs/live/live_cubit.dart';
import 'blocs/movies/movies_cubit.dart';
import 'blocs/settings/settings_cubit.dart';
import 'blocs/tv_shows/tv_shows_cubit.dart';
import 'generated/imdb_api/imdb_api.swagger.dart';
import 'services/iptv_service.dart';

class Bootstrapper extends StatelessWidget {
  const Bootstrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (blocContext) => SettingsCubit(),
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (repositoryContext) => Dio()),
          RepositoryProvider(
            create: (repositoryContext) => ImdbApi.create(baseUrl: Uri.parse('https://api.imdbapi.dev/')),
          ),
          RepositoryProvider(
            lazy: false,
            create: (repositoryContext) => IptvService(
              dio: repositoryContext.read<Dio>(),
              imdbApi: repositoryContext.read<ImdbApi>(),
              settingsCubit: repositoryContext.read<SettingsCubit>(),
            )..initialize(repositoryContext.read<SettingsCubit>().state.providers),
            dispose: (value) async => await value.dispose(),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (blocContext) => MoviesCubit()),
            BlocProvider(create: (blocContext) => TvShowsCubit()),
            BlocProvider(create: (blocContext) => LiveCubit()),
          ],
          child: const App(),
        ),
      ),
    );
  }
}
