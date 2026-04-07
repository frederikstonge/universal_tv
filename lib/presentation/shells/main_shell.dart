import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

import '../pages/live/live_page.dart';
import '../pages/movies/movies_page.dart';
import '../pages/tv_shows/tv_shows_page.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  final tabs = [
    NavigationItem(label: 'Movies', icon: FIcons.tvMinimal, page: const MoviesPage()),
    NavigationItem(label: 'TV Shows', icon: FIcons.tvMinimalPlay, page: const TvShowsPage()),
    NavigationItem(label: 'Live TV', icon: FIcons.tv, page: const LivePage()),
  ];

  int index = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(onPageChange);
    super.initState();
  }

  @override
  void dispose() {
    pageController.removeListener(onPageChange);
    pageController.dispose();
    super.dispose();
  }

  void onPageChange() {
    if (pageController.page != null && pageController.page! % 1.0 == 0.0) {
      final newIndex = pageController.page!.round();
      if (newIndex != index) {
        setState(() {
          index = newIndex;
        });
      }
    }
  }

  void onItemTapped(int index) {
    setState(() {
      this.index = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    final breakpoints = context.theme.breakpoints;
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width <= breakpoints.sm;

    return FScaffold(
      childPad: false,
      header: FHeader.nested(
        prefixes: [
          FButton.icon(
            variant: FButtonVariant.ghost,
            onPress: () => GoRouter.of(context).pushNamed('settings'),
            child: FAvatar.raw(size: 32, child: const Icon(FIcons.user)),
          ),
        ],
        title: isMobile
            ? const Text('Universal TV')
            : Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 8,
                children: [
                  for (int i = 0; i < tabs.length; i++)
                    FButton(
                      variant: index == i ? FButtonVariant.primary : FButtonVariant.ghost,
                      onPress: () => onItemTapped(i),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [Icon(tabs[i].icon), const SizedBox(width: 8), Text(tabs[i].label)],
                      ),
                    ),
                ],
              ),
        suffixes: [
          FButton.icon(onPress: () => GoRouter.of(context).pushNamed('cast'), child: const Icon(FIcons.cast)),
          const SizedBox(width: 4),
          FButton.icon(onPress: () => GoRouter.of(context).pushNamed('search'), child: const Icon(FIcons.search)),
        ],
      ),
      footer: isMobile
          ? FBottomNavigationBar(
              index: index,
              onChange: onItemTapped,
              children: tabs.map((e) => FBottomNavigationBarItem(icon: Icon(e.icon), label: Text(e.label))).toList(),
            )
          : null,
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: tabs.map((i) => i.page).toList(),
      ),
    );
  }
}

class NavigationItem {
  final String label;
  final IconData icon;
  final Widget page;

  NavigationItem({required this.label, required this.icon, required this.page});
}
