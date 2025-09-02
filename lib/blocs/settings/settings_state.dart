import 'package:dart_mappable/dart_mappable.dart';

import 'iptv_provider.dart';

part 'settings_state.mapper.dart';

@MappableClass()
class SettingsState with SettingsStateMappable {
  final List<IptvProvider>? providers;

  SettingsState({this.providers = const []});
}
