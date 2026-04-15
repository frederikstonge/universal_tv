import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'iptv_provider.dart';
import 'settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(SettingsState());

  void addIptvProvider(IptvProvider provider) {
    final updatedProviders = List<IptvProvider>.from(state.providers)..add(provider);
    final reorderedProviders = _reorderProviders(updatedProviders);
    emit(state.copyWith(providers: reorderedProviders));
  }

  void editIptvProvider(IptvProvider provider) {
    final updatedProviders = List<IptvProvider>.from(state.providers)..[provider.order] = provider;
    final reorderedProviders = _reorderProviders(updatedProviders);
    emit(state.copyWith(providers: reorderedProviders));
  }

  void removeIptvProvider(IptvProvider provider) {
    final updatedProviders = List<IptvProvider>.from(state.providers)..remove(provider);
    final reorderedProviders = _reorderProviders(updatedProviders);
    emit(state.copyWith(providers: reorderedProviders));
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) => SettingsStateMapper.fromMap(json);

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.toMap();

  List<IptvProvider> _reorderProviders(List<IptvProvider> providers) => providers.asMap().entries.map((entry) {
    final index = entry.key;
    final provider = entry.value;
    return provider.copyWith(order: index);
  }).toList();
}
