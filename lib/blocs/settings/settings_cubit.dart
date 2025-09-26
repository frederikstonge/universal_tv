import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'iptv_provider.dart';
import 'settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(SettingsState());

  void updateSettings(SettingsState newState) {
    emit(newState);
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) {
    if (kDebugMode) {
      final m3ulinks = String.fromEnvironment('M3U_LINKS').split(',').where((link) => link.isNotEmpty).toList();
      if (m3ulinks.isNotEmpty) {
        return SettingsState(
          providers: [M3uIptvProvider(name: 'M3U', order: 1, urls: m3ulinks)],
        );
      }
    }

    return SettingsStateMapper.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.toMap();
}
