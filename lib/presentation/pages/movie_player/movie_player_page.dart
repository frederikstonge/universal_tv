import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class MoviePlayerPage extends StatefulWidget {
  const MoviePlayerPage({super.key});

  @override
  State<MoviePlayerPage> createState() => _MoviePlayerPageState();
}

class _MoviePlayerPageState extends State<MoviePlayerPage> {
  late final Player player;
  late final VideoController videoController;

  @override
  void initState() {
    player = Player();
    videoController = VideoController(player);
    player.open(Media(''));
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
