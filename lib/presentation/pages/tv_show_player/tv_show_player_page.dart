import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../../../blocs/iptv_service/iptv_service_cubit.dart';
import '../../../blocs/state_status.dart';
import '../../../blocs/tv_show_details/tv_show_details_cubit.dart';
import '../../../blocs/tv_show_details/tv_show_details_state.dart';
import '../../../models/episode_details.dart';
import '../../../models/tv_show_details.dart';

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
    final tvShowState = context.read<TvShowDetailsCubit>().state;
    if (tvShowState.status == StateStatus.success &&
        tvShowState.tvShow != null &&
        tvShowState.selectedEpisode != null) {
      _playTvShow(tvShowState.tvShow!, tvShowState.selectedEpisode!);
    }

    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TvShowDetailsCubit, TvShowDetailsState>(
      listener: (context, tvShowState) {
        if (tvShowState.status == StateStatus.success &&
            tvShowState.tvShow != null &&
            tvShowState.selectedEpisode != null) {
          _playTvShow(tvShowState.tvShow!, tvShowState.selectedEpisode!);
        }
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

  Future<void> _playTvShow(TvShowDetails tvShow, EpisodeDetails episode) async {
    final url = await context.read<IptvServiceCubit>().getTvShowUrl(tvShow.providerName, episode.id);
    if (url != null) {
      await player.open(Media(url));
    }
  }
}
