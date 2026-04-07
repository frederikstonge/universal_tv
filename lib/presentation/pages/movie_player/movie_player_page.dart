import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../../../blocs/iptv_service/iptv_service_cubit.dart';
import '../../../blocs/movie_details/movie_details_cubit.dart';
import '../../../blocs/movie_details/movie_details_state.dart';
import '../../../blocs/state_status.dart';
import '../../../models/movie_details.dart';
import '../../components/custom_video_controls.dart';

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

    final movieState = context.read<MovieDetailsCubit>().state;
    if (movieState.status == StateStatus.success && movieState.movie != null) {
      _playMovie(movieState.movie!);
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
    return BlocConsumer<MovieDetailsCubit, MovieDetailsState>(
      listener: (context, movieState) {
        if (movieState.status == StateStatus.success && movieState.movie != null) {
          _playMovie(movieState.movie!);
        }
      },
      builder: (context, movieState) => movieState.movie != null
          ? Video(
              controller: videoController,
              controls: (state) => CustomVideoControls(
                state: state,
                isLive: false,
                title: movieState.movie!.name,
                logoUrl: movieState.movie!.posterUrl,
              ),
            )
          : const SizedBox.shrink(),
    );
  }

  Future<void> _playMovie(MovieDetails movie) async {
    final url = await context.read<IptvServiceCubit>().getMovieUrl(movie.providerName, movie.streamId);
    if (url != null) {
      await player.open(Media(url));
    }
  }
}
