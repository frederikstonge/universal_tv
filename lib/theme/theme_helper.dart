import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:forui/forui.dart';

class ThemeHelper {
  static FThemeData getThemeForPlatform(Brightness brightness) {
    final isDesktop = Platform.isWindows || Platform.isLinux || Platform.isMacOS || kIsWeb;
    final theme = FThemes.slate;
    final themeBrightness = brightness == Brightness.dark ? theme.dark : theme.light;
    return isDesktop ? themeBrightness.desktop : themeBrightness.touch;
  }
}
