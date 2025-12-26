import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';

import '../../../blocs/settings/iptv_provider.dart';
import '../../../blocs/settings/settings_cubit.dart';
import '../../../blocs/settings/settings_state.dart';
import 'widgets/add_provider.dart';
import 'widgets/edit_m3u_provider.dart';
import 'widgets/edit_xmltv_provider.dart';
import 'widgets/edit_xtream_provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with TickerProviderStateMixin {
  late FTabController _tabController;

  @override
  void initState() {
    super.initState();
    final length = context.read<SettingsCubit>().state.providers.length + 1;
    _tabController = FTabController(length: length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, settingsState) {
        return FScaffold(
          header: FHeader(title: const Text('Settings')),
          child: SingleChildScrollView(
            child: FTabs(
              control: .managed(controller: _tabController),
              scrollable: true,
              children: [
                FTabEntry(
                  label: Icon(FIcons.plus),
                  child: AddProvider(onAdd: onAdd),
                ),
                ...settingsState.providers.map(
                  (provider) => FTabEntry(
                    label: Text(provider.name),
                    child: switch (provider.type) {
                      IptvProviderType.m3u => EditM3uProvider(
                        provider: provider as M3uIptvProvider,
                        onSave: onSave,
                        onDelete: onDelete,
                      ),
                      IptvProviderType.xtream => EditXtreamProvider(
                        provider: provider as XtreamIptvProvider,
                        onSave: onSave,
                        onDelete: onDelete,
                      ),
                      IptvProviderType.xmltv => EditXmltvProvider(
                        provider: provider as XmltvIptvProvider,
                        onSave: onSave,
                        onDelete: onDelete,
                      ),
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

  void onSave(IptvProvider provider) {
    context.read<SettingsCubit>().editIptvProvider(provider);
  }

  void onAdd(IptvProvider provider) {
    context.read<SettingsCubit>().addIptvProvider(provider);
    final length = context.read<SettingsCubit>().state.providers.length + 1;
    _tabController = FTabController(length: length, vsync: this, index: length - 1);
    setState(() {});
  }

  void onDelete(IptvProvider provider) {
    context.read<SettingsCubit>().removeIptvProvider(provider);
    final length = context.read<SettingsCubit>().state.providers.length + 1;
    _tabController = FTabController(length: length, vsync: this, index: length - 1);
    setState(() {});
  }
}
