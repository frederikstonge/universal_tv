import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(SettingsState());

  void updateSettings(SettingsState newState) {
    emit(newState);
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) => SettingsStateMapper.fromMap(json);

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.toMap();
}
