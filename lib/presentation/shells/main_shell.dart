import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
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
    NavigationItem(label: 'Movies', icon: FIcons.tvMinimal, page: const MoviesPage()),
    NavigationItem(label: 'TV Shows', icon: FIcons.tvMinimalPlay, page: const TvShowsPage()),
    NavigationItem(label: 'Live TV', icon: FIcons.tv, page: const LivePage()),
    NavigationItem(label: 'Settings', icon: FIcons.settings, page: const SettingsPage()),
  ];

  int index = 0;

  late PageController pageController;
  final FocusScopeNode _sidebarFocusNode = FocusScopeNode(
    debugLabel: 'Sidebar',
    traversalEdgeBehavior: TraversalEdgeBehavior.parentScope,
  );
  final FocusScopeNode _contentFocusNode = FocusScopeNode(debugLabel: 'Content');

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
    _sidebarFocusNode.dispose();
    _contentFocusNode.dispose();
    super.dispose();
  }

  bool _isFocusInScope(FocusScopeNode scope) {
    FocusNode? current = FocusManager.instance.primaryFocus;
    while (current != null) {
      if (current == scope) return true;
      current = current.parent;
    }
    return false;
  }

  void _focusSidebar() {
    final focusedChild = _sidebarFocusNode.focusedChild;
    if (focusedChild != null) {
      focusedChild.requestFocus();
    } else {
      _sidebarFocusNode.traversalDescendants.firstOrNull?.requestFocus();
    }
  }

  void _focusContent() {
    final focusedChild = _contentFocusNode.focusedChild;
    if (focusedChild != null) {
      focusedChild.requestFocus();
    } else {
      _contentFocusNode.traversalDescendants.firstOrNull?.requestFocus();
    }
  }

  KeyEventResult _handleKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    if (ModalRoute.of(context)?.isCurrent != true) return KeyEventResult.ignored;

    final primaryFocus = FocusManager.instance.primaryFocus;
    if (primaryFocus?.context?.findAncestorStateOfType<EditableTextState>() != null) {
      return KeyEventResult.ignored;
    }

    if (event.logicalKey == LogicalKeyboardKey.arrowRight && _isFocusInScope(_sidebarFocusNode)) {
      _focusContent();
      return KeyEventResult.handled;
    }

    if (event.logicalKey == LogicalKeyboardKey.arrowLeft && _isFocusInScope(_contentFocusNode)) {
      if (primaryFocus != null && !primaryFocus.focusInDirection(TraversalDirection.left)) {
        _focusSidebar();
      }
      return KeyEventResult.handled;
    }

    if ((event.logicalKey == LogicalKeyboardKey.escape || event.logicalKey == LogicalKeyboardKey.goBack) &&
        _isFocusInScope(_contentFocusNode)) {
      _focusSidebar();
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
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

  @override
  Widget build(BuildContext context) {
    final breakpoints = context.theme.breakpoints;
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width <= breakpoints.sm;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop && !isMobile && _isFocusInScope(_contentFocusNode)) {
          _focusSidebar();
        }
      },
      child: FocusScope(
        onKeyEvent: !isMobile ? _handleKeyEvent : null,
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
                  focusNode: _sidebarFocusNode,
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
          child: FocusScope(
            autofocus: true,
            node: _contentFocusNode,
            child: PageView(
              controller: pageController,
              physics: NeverScrollableScrollPhysics(),
              children: items.map((i) => i.page).toList(),
            ),
          ),
        ),
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
