import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

import '../../../blocs/movie_details/movie_details_cubit.dart';
import '../../../blocs/movie_details/movie_details_state.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
      builder: (context, state) {
        return FScaffold(
          childPad: false,
          header: FHeader.nested(
            prefixes: [FButton.icon(child: Icon(FIcons.arrowLeft), onPress: () => Navigator.of(context).pop())],
            title: Text(state.movie?.name ?? 'Loading...'),
          ),
          child: state.movie != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        image: state.movie!.posterUrl != null
                            ? DecorationImage(image: NetworkImage(state.movie!.posterUrl!), fit: BoxFit.cover)
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
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      child: FButton(
                                        mainAxisSize: MainAxisSize.min,
                                        prefix: Icon(FIcons.play),
                                        onPress: () {
                                          GoRouter.of(context).pushNamed(
                                            'moviePlayer',
                                            pathParameters: {
                                              'providerName': state.movie!.providerName,
                                              'movieId': state.movie!.streamId.toString(),
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
                    if (state.movie!.plot != null) ...[
                      Padding(padding: const EdgeInsets.all(8.0), child: Text(state.movie!.plot!)),
                    ],
                  ],
                )
              : Center(child: FCircularProgress()),
        );
      },
    );
  }
}
