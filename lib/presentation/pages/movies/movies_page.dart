import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

import '../../../blocs/movies/movies_cubit.dart';
import '../../../blocs/movies/movies_state.dart';
import '../../../blocs/state_status.dart';
import '../../../models/movie_item.dart';
import '../../components/content_row.dart';
import '../../components/cover_card.dart';
import '../../components/featured_banner.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  void _openMovie(BuildContext context, MovieItem movie) {
    GoRouter.of(context).pushNamed(
      'movieDetails',
      pathParameters: {'providerName': movie.providerName, 'movieId': movie.streamId.toString()},
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesCubit, MoviesState>(
      builder: (context, state) {
        return switch (state.status) {
          StateStatus.initial || StateStatus.loading => const Center(child: FCircularProgress()),
          StateStatus.failure => const Center(child: Text('Failed to load movies')),
          StateStatus.success => _buildContent(context, state),
        };
      },
    );
  }

  Widget _buildContent(BuildContext context, MoviesState state) {
    final items = state.items ?? [];
    final categories = state.categories ?? [];

    // Pick a featured item – first one with a poster
    final featured = items.where((e) => e.posterUrl != null).firstOrNull;

    // Pre-group items by category for performance
    final itemsByCategory = <String, List<MovieItem>>{};
    for (final category in categories) {
      itemsByCategory[category.id] = items.where((e) => e.categoryIds.contains(category.id)).toList();
    }

    return CustomScrollView(
      slivers: [
        // Featured banner
        if (featured != null)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: FeaturedBanner(
                title: featured.name,
                posterUrl: featured.posterUrl,
                providerName: featured.providerName,
                onTap: () => _openMovie(context, featured),
              ),
            ),
          ),

        // Category rows
        for (final category in categories)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ContentRow(
                title: category.name,
                itemCount: itemsByCategory[category.id]?.length ?? 0,
                itemBuilder: (context, index) {
                  final entry = itemsByCategory[category.id]![index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: CoverCard(
                      title: entry.name,
                      providerName: entry.providerName,
                      posterUrl: entry.posterUrl,
                      onTap: () => _openMovie(context, entry),
                    ),
                  );
                },
              ),
            ),
          ),

        // Bottom padding
        const SliverPadding(padding: EdgeInsets.only(bottom: 24)),
      ],
    );
  }
}
