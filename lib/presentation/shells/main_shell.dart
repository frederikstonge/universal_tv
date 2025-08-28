import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

class MainShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainShell({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final items = {'Home': FIcons.house, 'Search': FIcons.search, 'Settings': FIcons.settings};
    final breakpoints = context.theme.breakpoints;
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width <= breakpoints.sm;
    return FScaffold(
      childPad: false,
      footer: isMobile
          ? FBottomNavigationBar(
              index: navigationShell.currentIndex,
              onChange: (value) => navigationShell.goBranch(value),
              children: items.entries
                  .map((e) => FBottomNavigationBarItem(icon: Icon(e.value), label: Text(e.key)))
                  .toList(),
            )
          : null,
      sidebar: isMobile
          ? null
          : FSidebar(
              header: FHeader.nested(title: Text('Universal TV')),
              children: items.entries
                  .mapIndexed(
                    (i, e) => FSidebarItem(
                      icon: Icon(e.value),
                      label: Text(e.key),
                      selected: navigationShell.currentIndex == i,
                      onPress: () => navigationShell.goBranch(i),
                    ),
                  )
                  .toList(),
            ),
      child: navigationShell,
    );
  }
}
