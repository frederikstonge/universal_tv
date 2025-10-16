import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import '../pages/live/live_page.dart';
import '../pages/movies/movies_page.dart';
import '../pages/settings/settings_page.dart';
import '../pages/tv_shows/tv_shows_page.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  final items = [
    NavigationItem(label: 'Movies', icon: FIcons.tvMinimal, page: MoviesPage()),
    NavigationItem(label: 'TV Shows', icon: FIcons.tvMinimalPlay, page: TvShowsPage()),
    NavigationItem(label: 'Live TV', icon: FIcons.tv, page: LivePage()),
    NavigationItem(label: 'Settings', icon: FIcons.settings, page: SettingsPage()),
  ];

  int index = 0;

  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final breakpoints = context.theme.breakpoints;
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width <= breakpoints.sm;
    return FocusScope(
      child: FScaffold(
        childPad: false,
        footer: isMobile
            ? FBottomNavigationBar(
                index: index,
                onChange: onItemTapped,
                children: items
                    .asMap()
                    .entries
                    .map((e) => FBottomNavigationBarItem(icon: Icon(e.value.icon), label: Text(e.value.label)))
                    .toList(),
              )
            : null,
        sidebar: isMobile
            ? null
            : FSidebar(
                autofocus: true,
                header: FHeader.nested(title: Text('Universal TV')),
                children: [
                  FSidebarGroup(
                    label: const Text('Navigation'),
                    children: items
                        .asMap()
                        .entries
                        .mapIndexed(
                          (i, e) => FSidebarItem(
                            icon: Icon(e.value.icon),
                            label: Text(e.value.label),
                            selected: index == i,
                            onPress: () => onItemTapped(i),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
        child: PageView(controller: pageController, children: items.map((i) => i.page).toList()),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      this.index = index;
    });
    pageController.jumpToPage(index);
  }
}

class NavigationItem {
  final String label;
  final IconData icon;
  final Widget page;

  NavigationItem({required this.label, required this.icon, required this.page});
}
