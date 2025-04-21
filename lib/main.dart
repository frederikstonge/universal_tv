import 'package:flutter/widgets.dart';
import 'package:fvp/fvp.dart' as fvp;

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  fvp.registerWith();
  runApp(const App());
}
