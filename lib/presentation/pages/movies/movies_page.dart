import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

import '../../../blocs/movies/movies_cubit.dart';
import '../../../blocs/movies/movies_state.dart';
import '../../../blocs/state_status.dart';
import '../../components/cover_card.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesCubit, MoviesState>(
      builder: (context, state) {
        return FScaffold(
          header: FHeader(
            title: const Text('Movies'),
            suffixes: [FButton.icon(onPress: () {}, child: const Icon(FIcons.search))],
          ),
          child: switch (state.status) {
            StateStatus.initial || StateStatus.loading => const Center(child: FCircularProgress()),
            StateStatus.failure => const Center(child: Text('Failed to load movies')),
            StateStatus.success => ListView.separated(
              itemCount: state.categories?.length ?? 0,
              separatorBuilder: (context, index) => const FDivider(),
              itemBuilder: (context, index) {
                final category = state.categories![index];
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FHeader.nested(title: Text(category.name), titleAlignment: AlignmentGeometry.centerLeft),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: state.items!.where((e) => e.categoryIds.contains(category.id)).length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final entry = state.items!.where((e) => e.categoryIds.contains(category.id)).elementAt(index);
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CoverCard(
                              title: entry.name,
                              posterUrl: entry.posterUrl,
                              onTap: () async {
                                await GoRouter.of(context).pushNamed(
                                  'movieDetails',
                                  pathParameters: {
                                    'providerName': entry.providerName,
                                    'movieId': entry.streamId.toString(),
                                  },
                                );
                                //await GoRouter.of(context).pushNamed('player', extra: entry.seriesId);
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          },
        );
      },
    );
  }
}
