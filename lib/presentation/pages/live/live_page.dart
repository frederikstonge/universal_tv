import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';

import '../../../blocs/live/live_cubit.dart';
import '../../../blocs/live/live_state.dart';
import '../../components/cover_card.dart';

class LivePage extends StatelessWidget {
  const LivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveCubit, LiveState>(
      builder: (context, state) {
        return FScaffold(
          header: FHeader(
            title: const Text('Live TV'),
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
                      itemCount: state.items!.where((e) => e.categoryId == category.id).length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final entry = state.items!.where((e) => e.categoryId == category.id).elementAt(index);
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CoverCard(
                            title: entry.name,
                            iconUrl: entry.logoUrl,
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
          ),
        );
      },
    );
  }
}
