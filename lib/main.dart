import 'package:flutter/widgets.dart';
import 'package:media_kit/media_kit.dart';

import 'bootstrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  runApp(const Bootstrapper());
}
