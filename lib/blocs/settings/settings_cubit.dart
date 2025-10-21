import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'iptv_provider.dart';
import 'settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(SettingsState());

  void updateSettings(SettingsState newState) {
    emit(newState);
  }

  void addIptvProvider(IptvProvider provider) {
    final updatedProviders = List<IptvProvider>.from(state.providers)..add(provider);
    final reorderedProviders = updatedProviders.asMap().entries.map((entry) {
      final index = entry.key;
      final provider = entry.value;
      return provider.copyWith(order: index);
    }).toList();
    emit(state.copyWith(providers: reorderedProviders));
  }

  void editIptvProvider(IptvProvider provider) {
    final index = state.providers.indexWhere((p) => p.id == provider.id);
    final updatedProviders = List<IptvProvider>.from(state.providers)
      ..removeWhere((p) => p.id == provider.id)
      ..insert(index, provider);
    final reorderedProviders = updatedProviders.asMap().entries.map((entry) {
      final index = entry.key;
      final provider = entry.value;
      return provider.copyWith(order: index);
    }).toList();
    emit(state.copyWith(providers: reorderedProviders));
  }

  void removeIptvProvider(IptvProvider provider) {
    final updatedProviders = List<IptvProvider>.from(state.providers)..remove(provider);
    final reorderedProviders = updatedProviders.asMap().entries.map((entry) {
      final index = entry.key;
      final provider = entry.value;
      return provider.copyWith(order: index);
    }).toList();
    emit(state.copyWith(providers: reorderedProviders));
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
