import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';

import '../../../blocs/cast/cast_cubit.dart';
import '../../../blocs/cast/cast_state.dart';

class CastPage extends StatefulWidget {
  const CastPage({super.key});

  @override
  State<CastPage> createState() => _CastPageState();
}

class _CastPageState extends State<CastPage> {
  late final CastCubit castCubit;
  @override
  void initState() {
    castCubit = context.read<CastCubit>();
    castCubit.startDiscovery();
    super.initState();
  }

  @override
  void dispose() {
    castCubit.stopDiscovery();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader.nested(
        prefixes: [FButton.icon(onPress: () => Navigator.of(context).maybePop(), child: Icon(FIcons.x))],
        title: Text('Cast'),
      ),
      child: BlocBuilder<CastCubit, CastState>(
        builder: (context, state) {
          return ListView.separated(
            separatorBuilder: (context, index) {
              if (state.devices.isEmpty) {
                return const SizedBox.shrink();
              }
              final device = state.devices[index];
              final isSelected = device.id == state.selectedDevice?.id && state.session != null;
              return isSelected ? FDivider() : const SizedBox(height: 4);
            },
            itemCount: state.devices.isEmpty ? 1 : state.devices.length,
            itemBuilder: (context, index) {
              if (state.devices.isEmpty) {
                return const Center(child: Text('No devices found'));
              }
              final device = state.devices[index];
              final isSelected = device.id == state.selectedDevice?.id && state.session != null;
              return FTile(
                suffix: isSelected ? Icon(FIcons.check) : null,
                title: Text(device.name),
                subtitle: Text(device.protocol.name.toUpperCase()),
                onPress: () => isSelected ? castCubit.disconnect(state.session!) : castCubit.connect(device),
              );
            },
          );
        },
      ),
    );
  }
}
