import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

import '../../helpers/category_helper.dart';
import '../../models/iptv_entry.dart';
import '../../services/m3u/m3u_client.dart';
import '../components/entry_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String m3uLink = String.fromEnvironment('M3ULINK');
  late M3uClient m3uClient = M3uClient(m3ulink: Uri.parse(m3uLink));

  List<IptvEntry>? playlist;
  Map<String, List<IptvEntry>>? categories;

  @override
  void initState() {
    init();
    super.initState();
  }

  Future init() async {
    final response = await m3uClient.getAllStreams();
    final playlist = response.map((i) => IptvEntry.fromM3uEntry(i)).toList();
    final categories = CategoryHelper.sortedCategories(entries: playlist);

    setState(() {
      this.playlist = playlist;
      this.categories = categories;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: categories?.entries.length ?? 0,
      separatorBuilder: (context, index) => const FDivider(),
      itemBuilder: (context, index) {
        final category = categories!.entries.elementAt(index);
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FHeader.nested(title: Text(category.key), titleAlignment: AlignmentGeometry.centerLeft),
            SizedBox(
              height: 320,
              child: ListView.builder(
                itemCount: category.value.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final entry = category.value[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: EntryCard(
                      entry: entry,
                      onTap: () async {
                        await GoRouter.of(context).pushNamed('player', extra: entry.toJson());
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
