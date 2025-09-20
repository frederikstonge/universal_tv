import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';

import '../../../blocs/movies/movies_cubit.dart';
import '../../../blocs/movies/movies_state.dart';
import '../../components/movie_card.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesCubit, MoviesState>(
      builder: (context, state) {
        return ListView.separated(
          itemCount: state.categories?.length ?? 0,
          separatorBuilder: (context, index) => const FDivider(),
          itemBuilder: (context, index) {
            final category = state.categories![index];
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FHeader.nested(title: Text(category.name), titleAlignment: AlignmentGeometry.centerLeft),
                SizedBox(
                  height: 320,
                  child: ListView.builder(
                    itemCount: state.items!.where((e) => e.categoryId == category.id).length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final entry = state.items!.where((e) => e.categoryId == category.id).elementAt(index);
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MovieCard(
                          movie: entry,
                          onTap: () async {
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
        );
      },
    );
  }
}
