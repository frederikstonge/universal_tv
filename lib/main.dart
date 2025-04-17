import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fvp/fvp.dart' as fvp;
import 'package:video_player/video_player.dart';

import 'data/protocols/m3u/entries/generic_entry.dart';
import 'data/protocols/m3u/m3u_nullsafe.dart';
import 'data/protocols/m3u/m3u_parser.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  fvp.registerWith();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
    final playlist = await M3uParser.parse(response.data.toString());
    final categories = sortedCategories(
      entries: playlist,
      attributeName: 'group-title',
    );

    setState(() {
      this.playlist = playlist;
      this.categories = categories;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (selectedEntry != null && videoPlayerController != null)
              AspectRatio(
                aspectRatio: 16 / 9,
                child: VideoPlayer(
                  videoPlayerController!,
                  key: ValueKey(selectedEntry!.link),
                ),
              ),
            ExpansionPanelList(
              expansionCallback:
                  (panelIndex, isExpanded) => setState(() {
                    expandedPanels[categories!.keys.elementAt(panelIndex)] =
                        isExpanded;
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
                              final logo = entry.attributes.entries.where((e) => e.key == 'tv-logo').firstOrNull?.value;
                              return ListTile(
                                leading:
                                    logo != null
                                        ? CachedNetworkImage(
                                          height: 40,
                                          width: 40,
                                          cacheKey: logo,
                                          imageUrl: logo,
                                          progressIndicatorBuilder:
                                              (
                                                context,
                                                url,
                                                downloadProgress,
                                              ) => CircularProgressIndicator(
                                                value:
                                                    downloadProgress.progress,
                                              ),
                                          errorWidget:
                                              (context, error, stackTrace) =>
                                                  SizedBox.shrink(),
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

                                    videoPlayerController =
                                        VideoPlayerController.networkUrl(
                                          Uri.parse(entry.link),
                                        );
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
                                      ).showSnackBar(
                                        const SnackBar(
                                          content: Text('Error playing video'),
                                        ),
                                      );
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
