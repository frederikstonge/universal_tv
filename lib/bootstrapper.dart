import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:microsoft_kiota_bundle/microsoft_kiota_bundle.dart';
import 'package:tiny_db/tiny_db.dart';

import 'app.dart';
import 'blocs/settings/settings_cubit.dart';
import 'generated/imdb_api/imdb_api.dart';

class Bootstrapper extends StatelessWidget {
  const Bootstrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (context) => TinyDb(MemoryStorage()), dispose: (value) => value.close()),
          RepositoryProvider(
            create: (context) =>
                ImdbApi(DefaultRequestAdapter(authProvider: AnonymousAuthenticationProvider()))
                  ..withUrl('https://api.imdbapi.dev/'),
          ),
        ],
        child: const App(),
      ),
    );
  }
}
