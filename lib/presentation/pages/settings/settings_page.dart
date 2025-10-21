import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';

import '../../../blocs/settings/settings_cubit.dart';
import '../../../blocs/settings/settings_state.dart';
import 'widgets/add_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return FScaffold(
          header: FHeader(title: const Text('Settings')),
          child: SingleChildScrollView(
            child: FTabs(
              scrollable: true,
              children: [
                FTabEntry(
                  label: Icon(FIcons.plus),
                  child: AddProvider(
                    onAdd: (provider) {
                      context.read<SettingsCubit>().addIptvProvider(provider);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
