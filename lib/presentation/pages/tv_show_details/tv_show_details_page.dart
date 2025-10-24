import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

import '../../../blocs/tv_show_details/tv_show_details_cubit.dart';
import '../../../blocs/tv_show_details/tv_show_details_state.dart';
import '../../../models/episode_details.dart';

class TvShowDetailsPage extends StatelessWidget {
  const TvShowDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvShowDetailsCubit, TvShowDetailsState>(
      builder: (context, state) {
        return FScaffold(
          childPad: false,
          header: FHeader.nested(
            prefixes: [FButton.icon(child: Icon(FIcons.arrowLeft), onPress: () => Navigator.of(context).pop())],
            title: Text(state.tvShow?.name ?? 'Loading...'),
          ),
          child: state.tvShow != null
              ? SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          image: state.tvShow!.posterUrl != null
                              ? DecorationImage(image: NetworkImage(state.tvShow!.posterUrl!), fit: BoxFit.cover)
                              : null,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    context.theme.colors.background.withAlpha(0),
                                    context.theme.colors.background.withAlpha(200),
                                    context.theme.colors.background.withAlpha(255),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    constraints: BoxConstraints(maxWidth: 400),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Flexible(
                                          child: FSelect<int>(
                                            items: state.tvShow!.seasons.map((i, e) => MapEntry('Season $i', i)),
                                            initialValue: state.selectedSeason,
                                            onChange: (value) {
                                              if (value == null) {
                                                return;
                                              }

                                              context.read<TvShowDetailsCubit>().selectSeason(value);
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Flexible(
                                          child: FSelect<EpisodeDetails>(
                                            items: state.tvShow!.seasons[state.selectedSeason]!.asMap().map(
                                              (i, e) => MapEntry('Episode ${e.episode}', e),
                                            ),
                                            initialValue:
                                                state.selectedEpisode ??
                                                state.tvShow!.seasons[state.selectedSeason]!.first,
                                            onChange: (value) {
                                              if (value == null) {
                                                return;
                                              }

                                              context.read<TvShowDetailsCubit>().selectEpisode(value);
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Flexible(
                                        child: FButton(
                                          mainAxisSize: MainAxisSize.min,
                                          prefix: Icon(FIcons.play),
                                          onPress: () {
                                            GoRouter.of(context).pushNamed(
                                              'tvShowPlayer',
                                              pathParameters: {
                                                'providerName': state.tvShow!.providerName,
                                                'tvShowId': state.tvShow!.seriesId.toString(),
                                              },
                                              queryParameters: {
                                                'season': state.selectedSeason.toString(),
                                                'episode':
                                                    (state.selectedEpisode?.episode ??
                                                            state.tvShow!.seasons[state.selectedSeason]!.first.episode)
                                                        .toString(),
                                              },
                                            );
                                          },
                                          child: Text('Play'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (state.tvShow!.plot != null) ...[
                        Padding(padding: const EdgeInsets.all(8.0), child: Text(state.tvShow!.plot!)),
                      ],
                    ],
                  ),
                )
              : Center(child: FCircularProgress()),
        );
      },
    );
  }
}
