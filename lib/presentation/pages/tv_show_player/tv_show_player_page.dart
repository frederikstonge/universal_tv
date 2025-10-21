import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class TvShowPlayerPage extends StatefulWidget {
  const TvShowPlayerPage({super.key});

  @override
  State<TvShowPlayerPage> createState() => _TvShowPlayerPageState();
}

class _TvShowPlayerPageState extends State<TvShowPlayerPage> {
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
