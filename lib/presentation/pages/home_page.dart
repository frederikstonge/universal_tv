import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

import '../../services/m3u/m3u_parser.dart';
import '../../services/m3u/models/attribute.dart';
import '../../services/m3u/models/generic_entry.dart';
import '../../services/m3u/playlist_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String m3uLink = String.fromEnvironment('M3ULINK');

  List<M3uGenericEntry>? playlist;
  Map<String, List<M3uGenericEntry>>? categories;
  M3uGenericEntry? selectedEntry;
  Map<String, bool> expandedPanels = {};

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future init() async {
    final dio = Dio();
    final uri = Uri.parse(m3uLink);
    final response = await dio.getUri(uri);
    final playlist = M3uParser.parse(response.data.toString());
    final categories = PlaylistHelper.sortedCategories(entries: playlist.playlist, attributes: Attribute.GROUP);

    setState(() {
      this.playlist = playlist.playlist;
      this.categories = categories;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader(title: const Text('Home')),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FAccordion(
              children:
                  categories?.entries.take(10).map((e) {
                    return FAccordionItem(
                      title: Text(e.key),
                      child: ListView.builder(
                        itemCount: e.value.take(10).length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final entry = e.value[index];
                          final logo = entry.attributes.entries.where((e) => e.key == 'tvg-logo').firstOrNull?.value;
                          return FTile(
                            prefix: logo != null
                                ? CachedNetworkImage(
                                    height: 40,
                                    width: 40,
                                    cacheKey: logo,
                                    imageUrl: logo,
                                    progressIndicatorBuilder: (context, url, downloadProgress) =>
                                        FProgress(value: downloadProgress.progress),
                                    errorWidget: (context, error, stackTrace) => SizedBox.shrink(),
                                  )
                                : null,
                            suffix: const Icon(FIcons.play),
                            title: Text(entry.title),
                            onPress: () async {
                              await GoRouter.of(context).pushNamed('player', queryParameters: {'source': entry.link});
                            },
                          );
                        },
                      ),
                    );
                  }).toList() ??
                  [],
            ),
          ],
        ),
      ),
    );
  }
}
