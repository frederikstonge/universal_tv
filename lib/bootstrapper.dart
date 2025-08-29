import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:microsoft_kiota_bundle/microsoft_kiota_bundle.dart';

import 'app.dart';
import 'generated/imdb_api/imdb_api.dart';

class Bootstrapper extends StatelessWidget {
  const Bootstrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) =>
          ImdbApi(DefaultRequestAdapter(authProvider: AnonymousAuthenticationProvider()))
            ..withUrl('https://api.imdbapi.dev/'),
      child: const App(),
    );
  }
}
