import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

import '../../../blocs/tv_shows/tv_shows_cubit.dart';
import '../../../blocs/tv_shows/tv_shows_state.dart';
import '../../components/cover_card.dart';

class TvShowsPage extends StatelessWidget {
  const TvShowsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvShowsCubit, TvShowsState>(
      builder: (context, state) {
        return FScaffold(
          header: FHeader(
            title: const Text('TV Shows'),
            suffixes: [FButton.icon(onPress: () {}, child: const Icon(FIcons.search))],
          ),
          child: ListView.separated(
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
                                'tvShowDetails',
                                pathParameters: {
                                  'providerName': entry.providerName,
                                  'tvShowId': entry.seriesId.toString(),
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
        );
      },
    );
  }
}
