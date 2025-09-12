import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import '../../components/entry_card.dart';

class TvShowsPage extends StatefulWidget {
  const TvShowsPage({super.key});

  @override
  State<TvShowsPage> createState() => _TvShowsPageState();
}

class _TvShowsPageState extends State<TvShowsPage> {
  List<XtSeriesItem>? playlist;
  List<XtCategory>? categories;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: categories?.length ?? 0,
      separatorBuilder: (context, index) => const FDivider(),
      itemBuilder: (context, index) {
        final category = categories![index];
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FHeader.nested(title: Text(category.name), titleAlignment: AlignmentGeometry.centerLeft),
            SizedBox(
              height: 320,
              child: ListView.builder(
                itemCount: playlist!.where((e) => e.categoryId == category.id).length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final entry = playlist!.where((e) => e.categoryId == category.id).elementAt(index);
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: EntryCard(
                      series: entry,
                      onTap: () async {
                        await GoRouter.of(context).pushNamed('player', extra: entry.seriesId);
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
  }
}
