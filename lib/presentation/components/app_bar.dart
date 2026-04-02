import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

class AppBar extends StatelessWidget {
  final Widget title;
  const AppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return FHeader(
      title: title,
      suffixes: [
        FButton.icon(
          onPress: () {
            GoRouter.of(context).pushNamed('cast');
          },
          child: const Icon(FIcons.cast),
        ),
        const SizedBox(width: 4),
        FButton.icon(
          onPress: () {
            GoRouter.of(context).pushNamed('search');
          },
          child: const Icon(FIcons.search),
        ),
      ],
    );
  }
}
