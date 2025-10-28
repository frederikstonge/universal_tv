import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

import 'router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetsApp.router(
      localizationsDelegates: FLocalizations.localizationsDelegates,
      supportedLocales: FLocalizations.supportedLocales,
      color: FThemes.slate.dark.colors.primary,
      title: 'Universal TV',
      builder: (context, child) => FTheme(data: FThemes.slate.dark, child: child!),
      routerConfig: router,
    );
  }
}
