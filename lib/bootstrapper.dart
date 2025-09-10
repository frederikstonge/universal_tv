import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'blocs/settings/settings_cubit.dart';
import 'generated/imdb_api/imdb_api.swagger.dart';

class Bootstrapper extends StatelessWidget {
  const Bootstrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (context) => ImdbApi.create(baseUrl: Uri.parse('https://api.imdbapi.dev/'))),
        ],
        child: const App(),
      ),
    );
  }
}
