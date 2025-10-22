import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'iptv_provider.dart';
import 'settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(SettingsState());

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
  SettingsState? fromJson(Map<String, dynamic> json) => SettingsStateMapper.fromMap(json);

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.toMap();
}
