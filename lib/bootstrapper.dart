import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'blocs/live/live_cubit.dart';
import 'blocs/movies/movies_cubit.dart';
import 'services/iptv_service.dart';
import 'blocs/settings/settings_cubit.dart';
import 'blocs/tv_shows/tv_shows_cubit.dart';
import 'generated/imdb_api/imdb_api.swagger.dart';

class Bootstrapper extends StatelessWidget {
  const Bootstrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => Dio()),
        RepositoryProvider(create: (context) => ImdbApi.create(baseUrl: Uri.parse('https://api.imdbapi.dev/'))),
        RepositoryProvider(
          create: (context) => IptvService(dio: context.read<Dio>(), imdbApi: context.read<ImdbApi>()),
          dispose: (value) async => await value.dispose(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SettingsCubit()),
          BlocProvider(create: (context) => MoviesCubit()),
          BlocProvider(create: (context) => TvShowsCubit()),
          BlocProvider(create: (context) => LiveCubit()),
        ],
        child: const App(),
      ),
    );
  }
}
