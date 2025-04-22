import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../data/m3u/m3u_parser.dart';
import '../../data/m3u/models/generic_entry.dart';
import '../../data/m3u/playlist_helper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const String m3uLink = String.fromEnvironment('M3ULINK');

  VideoPlayerController? videoPlayerController;
  final ScrollController scrollController = ScrollController();

  List<M3uGenericEntry>? playlist;
  Map<String, List<M3uGenericEntry>>? categories;
  M3uGenericEntry? selectedEntry;
  Map<String, bool> expandedPanels = {};

  @override
  void initState() {
    init();
    super.initState();
  }

  Future init() async {
    final dio = Dio();
    final uri = Uri.parse(m3uLink);
    final response = await dio.getUri(uri);
    final playlist = M3uParser.parse(response.data.toString());
    final categories = PlaylistHelper.sortedCategories(entries: playlist.playlist, attributeName: 'group-title');

    setState(() {
      this.playlist = playlist.playlist;
      this.categories = categories;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (selectedEntry != null && videoPlayerController != null)
              AspectRatio(
                aspectRatio: 16 / 9,
                child: VideoPlayer(videoPlayerController!, key: ValueKey(selectedEntry!.link)),
              ),
            ExpansionPanelList(
              expansionCallback:
                  (panelIndex, isExpanded) => setState(() {
                    expandedPanels[categories!.keys.elementAt(panelIndex)] = isExpanded;
                  }),
              children:
                  categories?.entries
                      .map(
                        (e) => ExpansionPanel(
                          isExpanded: expandedPanels[e.key] ?? false,
                          headerBuilder: (context, isExpanded) => Text(e.key),
                          body: ListView.builder(
                            itemCount: e.value.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final entry = e.value[index];
                              final logo =
                                  entry.attributes.entries.where((e) => e.key == 'tvg-logo').firstOrNull?.value;
                              return ListTile(
                                leading:
                                    logo != null
                                        ? CachedNetworkImage(
                                          height: 40,
                                          width: 40,
                                          cacheKey: logo,
                                          imageUrl: logo,
                                          progressIndicatorBuilder:
                                              (context, url, downloadProgress) =>
                                                  CircularProgressIndicator(value: downloadProgress.progress),
                                          errorWidget: (context, error, stackTrace) => SizedBox.shrink(),
                                        )
                                        : null,
                                trailing: const Icon(Icons.play_arrow),
                                title: Text(entry.title),
                                onTap: () async {
                                  try {
                                    if (videoPlayerController != null) {
                                      await videoPlayerController!.pause();
                                      await videoPlayerController!.dispose();
                                      videoPlayerController = null;
                                    }

                                    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(entry.link));
                                    await videoPlayerController!.initialize();
                                    await videoPlayerController!.play();
                                    setState(() {
                                      selectedEntry = entry;
                                    });
                                    scrollController.jumpTo(0);
                                  } catch (e) {
                                    if (context.mounted) {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(const SnackBar(content: Text('Error playing video')));
                                    }

                                    videoPlayerController = null;
                                    setState(() {
                                      selectedEntry = null;
                                    });
                                  }
                                },
                              );
                            },
                          ),
                        ),
                      )
                      .toList() ??
                  [],
            ),
          ],
        ),
      ),
    );
  }
}
