import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

import 'router/router.dart';
import 'theme/theme_helper.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeHelper.getThemeForPlatform(Brightness.dark);
    return WidgetsApp.router(
      localizationsDelegates: FLocalizations.localizationsDelegates,
      supportedLocales: FLocalizations.supportedLocales,
      color: theme.colors.primary,
      title: 'Universal TV',
      builder: (context, child) => FTheme(data: theme, child: child!),
      routerConfig: router,
    );
  }
}
