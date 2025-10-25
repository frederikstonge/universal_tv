import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../../../blocs/iptv_service/iptv_service_cubit.dart';
import '../../../blocs/live/live_cubit.dart';
import '../../../blocs/live/live_state.dart';
import '../../../models/live_channel.dart';

class LivePlayerPage extends StatefulWidget {
  const LivePlayerPage({super.key});

  @override
  State<LivePlayerPage> createState() => _LivePlayerPageState();
}

class _LivePlayerPageState extends State<LivePlayerPage> {
  late final Player player;
  late final VideoController videoController;

  @override
  void initState() {
    player = Player();
    videoController = VideoController(player);
    final liveCubit = context.read<LiveCubit>();
    _playLiveChannel(liveCubit.state.selectedChannel);

    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LiveCubit, LiveState>(
      listener: (context, liveState) {
        _playLiveChannel(liveState.selectedChannel);
      },
      child: FScaffold(
        header: FHeader.nested(
          titleAlignment: AlignmentGeometry.bottomCenter,
          prefixes: [
            if (Navigator.of(context).canPop()) ...[
              FButton.icon(onPress: () => Navigator.of(context).maybePop(), child: const Icon(FIcons.arrowLeft)),
            ],
          ],
          title: const Text('Player'),
        ),
        child: Video(controller: videoController),
      ),
    );
  }

  Future<void> _playLiveChannel(LiveChannel? selectedChannel) async {
    final iptvServiceCubit = context.read<IptvServiceCubit>();
    if (selectedChannel == null) {
      await Navigator.of(context).maybePop();
      return;
    }

    final url = await iptvServiceCubit.getLiveUrl(selectedChannel.providerName, selectedChannel.streamId);

    if (url != null) {
      await player.open(Media(url));
    }
  }
}
