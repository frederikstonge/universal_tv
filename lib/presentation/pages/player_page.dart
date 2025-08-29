import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../../models/iptv_entry.dart';

class PlayerPage extends StatefulWidget {
  final IptvEntry entry;

  const PlayerPage({super.key, required this.entry});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  late final Player player;
  late final VideoController videoController;

  @override
  void initState() {
    player = Player();
    videoController = VideoController(player);
    player.open(Media(widget.entry.url));
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FScaffold(
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
    );
  }
}
