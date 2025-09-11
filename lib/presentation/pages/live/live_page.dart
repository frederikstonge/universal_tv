import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import '../../../blocs/settings/iptv_provider.dart';
import '../../../generated/imdb_api/imdb_api.swagger.dart';
import '../../../repositories/m3u_repository.dart';
import '../../components/entry_card.dart';

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  static const String m3uLinks = String.fromEnvironment('M3ULINKS');
  late M3uRepository m3uClient = M3uRepository(
    provider: M3uIptvProvider(name: 'test', urls: m3uLinks.split(',').map((l) => Uri.parse(l)).toList()),
    dio: Dio(),
    imdbApi: context.read<ImdbApi>(),
  );

  List<XtSeriesItem>? playlist;
  List<XtCategory>? categories;

  @override
  void initState() {
    m3uClient.load().then((value) => init());
    super.initState();
  }

  Future init() async {
    final response = await m3uClient.getSeries();
    final playlist = response.toList();
    final categories = await m3uClient.getSeriesCategories();

    setState(() {
      this.playlist = playlist;
      this.categories = categories;
    });
  }

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
