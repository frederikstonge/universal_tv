import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

import '../../../blocs/live/live_cubit.dart';
import '../../../blocs/live/live_state.dart';
import '../../../blocs/state_status.dart';
import '../../components/tv_guide.dart';

class LivePage extends StatelessWidget {
  const LivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LiveCubit, LiveState, StateStatus>(
      selector: (state) => state.status,
      builder: (context, status) => FScaffold(
        child: switch (status) {
          StateStatus.initial || StateStatus.loading => const Center(child: FCircularProgress()),
          StateStatus.failure => const Center(child: Text('Failed to load live channels')),
          StateStatus.success => TvGuide(
            onChannelSelected: (ch) async {
              context.read<LiveCubit>().selectChannel(ch);
              await GoRouter.of(context).pushNamed('livePlayer');
            },
          ),
        },
      ),
    );
  }
}
