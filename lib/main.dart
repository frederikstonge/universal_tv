import 'package:flutter/widgets.dart';
import 'package:fvp/fvp.dart' as fvp;

import 'bootstrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  fvp.registerWith();
  runApp(const Bootstrapper());
}
