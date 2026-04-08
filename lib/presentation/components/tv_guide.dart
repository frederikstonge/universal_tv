import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';

import '../../blocs/live/live_cubit.dart';
import '../../blocs/live/live_state.dart';
import '../../models/category.dart';
import '../../models/live_channel.dart';
import '../../models/xmltv_programme.dart';

// ─── Layout constants ─────────────────────────────────────────────────────────
const _kDaysBefore = 3;
const _kDaysAfter = 4;
const _kTotalHours = (_kDaysBefore + _kDaysAfter) * 24;
const _kChannelColWidth = 140.0;
const _kRowHeight = 36.0;
const _kHeaderHeight = 16.0;
const _kPxPerMin = 3.0;
const _kTotalWidth = _kTotalHours * 60 * _kPxPerMin;

DateTime _timelineStart() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day).subtract(const Duration(days: _kDaysBefore));
}

double _nowPx() => DateTime.now().difference(_timelineStart()).inMinutes * _kPxPerMin;

// ─── TvGuide ──────────────────────────────────────────────────────────────────

class TvGuide extends StatefulWidget {
  /// Called when a channel row is selected (enter/tap).
  final ValueChanged<LiveChannel> onChannelSelected;

  /// Whether to show the channel column. Defaults to true.
  final bool showChannelColumn;

  /// Whether to show the toolbar (Now button + sort). Defaults to true.
  final bool showToolbar;

  const TvGuide({super.key, required this.onChannelSelected, this.showChannelColumn = true, this.showToolbar = true});

  @override
  State<TvGuide> createState() => TvGuideState();
}

class TvGuideState extends State<TvGuide> {
  late final ValueNotifier<double> _hOffset;
  late final ScrollController _vGrid;
  late final ScrollController _vChannel;
  late final FocusScopeNode _guideFocus;
  late final FocusNode _nowBtnFocus;
  int _focusedRow = -1;
  double _viewportWidth = 0;

  @override
  void initState() {
    super.initState();
    _hOffset = ValueNotifier<double>(_nowPx());
    _vGrid = ScrollController();
    _vChannel = ScrollController();
    _guideFocus = FocusScopeNode(debugLabel: 'TVGuide');
    _nowBtnFocus = FocusNode(debugLabel: 'NowButton');

    WidgetsBinding.instance.addPostFrameCallback((_) => _jumpToNow());
  }

  @override
  void dispose() {
    _hOffset.dispose();
    _vGrid.dispose();
    _vChannel.dispose();
    _guideFocus.dispose();
    _nowBtnFocus.dispose();
    super.dispose();
  }

  // ── Public API ──

  void jumpToNow() => _jumpToNow();

  // ── Horizontal offset helpers ──

  void _setHOffset(double v) {
    final max = _kTotalWidth - _viewportWidth;
    _hOffset.value = v.clamp(0.0, max > 0 ? max : 0);
  }

  void _jumpToNow() {
    _setHOffset(_nowPx() - _viewportWidth / 2);
  }

  void _scrollH(double delta) {
    _setHOffset(_hOffset.value + delta);
  }

  // ── Build ──

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveCubit, LiveState>(
      builder: (context, state) {
        final channels = _sortChannels(state);
        final epg = state.epg ?? {};
        final now = DateTime.now();
        final start = _timelineStart();

        return Column(
          children: [
            if (widget.showToolbar) _buildToolbar(context, state),
            _buildTimeHeaderRow(context, start, now),
            Expanded(
              child: FocusScope(
                node: _guideFocus,
                onKeyEvent: _onGuideKey,
                child: Row(
                  children: [
                    if (widget.showChannelColumn) _buildChannelColumn(context, channels, state.categories),
                    Expanded(child: _buildGrid(context, channels, epg, start, now)),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // ── Toolbar ──

  Widget _buildToolbar(BuildContext context, LiveState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FButton(focusNode: _nowBtnFocus, onPress: () => _jumpToNow(), child: const Text('Now')),
          const SizedBox(width: 8),
          Flexible(
            child: Container(
              constraints: BoxConstraints(maxWidth: 180),
              child: FSelect<LiveSortOrder>(
                control: .managed(
                  initial: state.sortOrder,
                  onChange: (v) {
                    if (v != null) context.read<LiveCubit>().setSortOrder(v);
                  },
                ),
                items: const {'Name': LiveSortOrder.name, 'Category': LiveSortOrder.category},
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── Time Header ──

  Widget _buildTimeHeaderRow(BuildContext context, DateTime start, DateTime now) {
    return SizedBox(
      height: _kHeaderHeight,
      child: Row(
        children: [
          if (widget.showChannelColumn)
            SizedBox(
              width: _kChannelColWidth,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Channels',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: context.theme.colors.mutedForeground,
                  ),
                ),
              ),
            ),
          Expanded(
            child: ClipRect(
              child: ValueListenableBuilder<double>(
                valueListenable: _hOffset,
                builder: (context, offset, child) => Transform.translate(offset: Offset(-offset, 0), child: child),
                child: OverflowBox(
                  maxWidth: _kTotalWidth,
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: _kTotalWidth,
                    child: Stack(
                      children: [
                        Row(
                          children: List.generate(_kTotalHours, (i) {
                            final t = start.add(Duration(hours: i));
                            return SizedBox(
                              width: 60 * _kPxPerMin,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  _headerLabel(t),
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: context.theme.colors.mutedForeground,
                                    fontWeight: t.hour == 0 ? FontWeight.bold : null,
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                        _pastOverlay(context, now, start),
                        _nowLine(context, now, start),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── Channel Column ──

  Widget _buildChannelColumn(BuildContext context, List<LiveChannel> channels, List<Category>? categories) {
    return SizedBox(
      width: _kChannelColWidth,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: Listener(
          onPointerSignal: (e) {
            if (e is PointerScrollEvent && _vGrid.hasClients) {
              _vGrid.jumpTo((_vGrid.offset + e.scrollDelta.dy).clamp(0.0, _vGrid.position.maxScrollExtent));
            }
          },
          child: ListView.builder(
            controller: _vChannel,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: channels.length,
            itemBuilder: (context, i) {
              final ch = channels[i];
              final category = ch.categoryId.isNotEmpty ? categories?.firstWhere((c) => c.id == ch.categoryId) : null;
              final categoryName = category?.name ?? (ch.categoryId.isNotEmpty ? ch.categoryId : null);
              return ExcludeFocus(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => widget.onChannelSelected(ch),
                  child: Container(
                    height: _kRowHeight,
                    decoration: _focusedRow == i
                        ? BoxDecoration(color: context.theme.colors.primary.withAlpha(20))
                        : null,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        if (ch.logoUrl != null)
                          CachedNetworkImage(
                            imageUrl: ch.logoUrl!,
                            width: 24,
                            height: 24,
                            errorWidget: (_, _, _) => const SizedBox.shrink(),
                          ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ch.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 11, color: context.theme.colors.foreground),
                              ),
                              if (categoryName != null)
                                Text(
                                  categoryName,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: context.theme.colors.foreground,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  // ── Programme Grid ──

  Widget _buildGrid(
    BuildContext context,
    List<LiveChannel> channels,
    Map<String, List<XmltvProgramme>> epg,
    DateTime start,
    DateTime now,
  ) {
    return LayoutBuilder(
      builder: (context, constraints) {
        _viewportWidth = constraints.maxWidth;
        return Listener(
          onPointerSignal: (e) {
            if (e is PointerScrollEvent && e.scrollDelta.dx != 0) {
              _scrollH(e.scrollDelta.dx);
            }
          },
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onHorizontalDragUpdate: (d) => _scrollH(-d.delta.dx),
            child: NotificationListener<ScrollNotification>(
              onNotification: (n) {
                if (n is ScrollUpdateNotification && n.metrics.axis == Axis.vertical) {
                  if (_vChannel.hasClients) _vChannel.jumpTo(n.metrics.pixels);
                }
                return false;
              },
              child: RawScrollbar(
                controller: _vGrid,
                child: ListView.builder(
                  controller: _vGrid,
                  itemCount: channels.length,
                  itemBuilder: (context, i) {
                    final ch = channels[i];
                    final programmes = epg[ch.epgChannelId] ?? [];
                    return _GuideRow(
                      channel: ch,
                      programmes: programmes,
                      timelineStart: start,
                      now: now,
                      isFocused: _focusedRow == i,
                      hOffset: _hOffset,
                      onFocused: () => setState(() => _focusedRow = i),
                      onScrollH: _scrollH,
                      onSelect: () => widget.onChannelSelected(ch),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // ── Guide-level key handler ──

  KeyEventResult _onGuideKey(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent && event is! KeyRepeatEvent) return KeyEventResult.ignored;
    final key = event.logicalKey;
    if (key == LogicalKeyboardKey.goBack || key == LogicalKeyboardKey.escape) {
      _nowBtnFocus.requestFocus();
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  // ── Helpers ──

  static List<LiveChannel> _sortChannels(LiveState state) {
    final list = List<LiveChannel>.from(state.items ?? []);
    switch (state.sortOrder) {
      case LiveSortOrder.name:
        list.sort((a, b) => a.name.compareTo(b.name));
      case LiveSortOrder.category:
        list.sort((a, b) {
          final c = a.categoryId.compareTo(b.categoryId);
          return c != 0 ? c : a.name.compareTo(b.name);
        });
    }
    return list;
  }

  // ── Shared visual builders ──

  static Widget _pastOverlay(BuildContext context, DateTime now, DateTime start) {
    return Positioned(
      left: 0,
      top: 0,
      bottom: 0,
      width: now.difference(start).inMinutes * _kPxPerMin,
      child: IgnorePointer(child: Container(color: context.theme.colors.background.withAlpha(150))),
    );
  }

  static Widget _nowLine(BuildContext context, DateTime now, DateTime start) {
    return Positioned(
      left: now.difference(start).inMinutes * _kPxPerMin,
      top: 0,
      bottom: 0,
      child: Container(width: 2, color: context.theme.colors.foreground),
    );
  }

  static String _headerLabel(DateTime t) {
    if (t.hour == 0) {
      const d = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
      return '${d[t.weekday - 1]} ${t.day}';
    }
    return '${t.hour.toString().padLeft(2, '0')}:00';
  }
}

// ─── Guide Row ────────────────────────────────────────────────────────────────

class _GuideRow extends StatelessWidget {
  final LiveChannel channel;
  final List<XmltvProgramme> programmes;
  final DateTime timelineStart;
  final DateTime now;
  final bool isFocused;
  final ValueNotifier<double> hOffset;
  final VoidCallback onFocused;
  final void Function(double) onScrollH;
  final VoidCallback onSelect;

  const _GuideRow({
    required this.channel,
    required this.programmes,
    required this.timelineStart,
    required this.now,
    required this.isFocused,
    required this.hOffset,
    required this.onFocused,
    required this.onScrollH,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.colors;
    final end = timelineStart.add(const Duration(hours: _kTotalHours));
    final visible = programmes.where((p) => p.start.isBefore(end) && (p.stop?.isAfter(timelineStart) ?? true)).toList()
      ..sort((a, b) => a.start.compareTo(b.start));

    return Focus(
      onFocusChange: (f) {
        if (f) onFocused();
      },
      onKeyEvent: _onKey,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onSelect,
        child: Container(
          height: _kRowHeight,
          decoration: isFocused
              ? BoxDecoration(
                  color: colors.primary.withAlpha(20),
                  border: Border.all(color: colors.primary),
                )
              : null,
          child: ClipRect(
            child: ValueListenableBuilder<double>(
              valueListenable: hOffset,
              builder: (context, offset, child) => Transform.translate(offset: Offset(-offset, 0), child: child),
              child: OverflowBox(
                maxWidth: _kTotalWidth,
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: _kTotalWidth,
                  child: Stack(
                    children: [
                      if (visible.isEmpty) ..._noScheduleCells(context) else ..._programmeCells(context, visible, end),
                      TvGuideState._pastOverlay(context, now, timelineStart),
                      TvGuideState._nowLine(context, now, timelineStart),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  KeyEventResult _onKey(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent && event is! KeyRepeatEvent) return KeyEventResult.ignored;
    final key = event.logicalKey;
    if (key == LogicalKeyboardKey.arrowLeft || key == LogicalKeyboardKey.arrowRight) {
      onScrollH(key == LogicalKeyboardKey.arrowLeft ? -180.0 : 180.0);
      return KeyEventResult.handled;
    }
    if (key == LogicalKeyboardKey.select || key == LogicalKeyboardKey.enter) {
      onSelect();
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  List<Widget> _noScheduleCells(BuildContext context) {
    final colors = context.theme.colors;
    return List.generate(_kTotalHours, (i) {
      return Positioned(
        left: i * 60 * _kPxPerMin,
        top: 2,
        bottom: 2,
        width: 60 * _kPxPerMin - 2,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            color: colors.card,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: colors.border),
          ),
          alignment: Alignment.centerLeft,
          child: Text('No schedule', style: TextStyle(fontSize: 10, color: colors.mutedForeground)),
        ),
      );
    });
  }

  List<Widget> _programmeCells(BuildContext context, List<XmltvProgramme> visible, DateTime end) {
    final colors = context.theme.colors;
    return visible.map((p) {
      final s = p.start.isBefore(timelineStart) ? timelineStart : p.start;
      final e = (p.stop ?? s.add(const Duration(hours: 1)));
      final ce = e.isAfter(end) ? end : e;
      final left = s.difference(timelineStart).inMinutes * _kPxPerMin;
      final width = math.max(30.0, ce.difference(s).inMinutes * _kPxPerMin - 2);
      final playing = p.start.isBefore(now) && (p.stop?.isAfter(now) ?? true);

      return Positioned(
        left: left,
        top: 2,
        bottom: 2,
        width: width,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: playing ? colors.primary.withAlpha(30) : colors.card,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: playing ? colors.primary : colors.border, width: playing ? 2 : 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                p.title ?? 'Unknown',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 11, fontWeight: playing ? FontWeight.bold : null),
              ),
              Text('${_fmt(p.start)} – ${_fmt(p.stop)}', style: TextStyle(fontSize: 9, color: colors.mutedForeground)),
            ],
          ),
        ),
      );
    }).toList();
  }

  static String _fmt(DateTime? t) {
    if (t == null) return '';
    return '${t.hour.toString().padLeft(2, '0')}:${t.minute.toString().padLeft(2, '0')}';
  }
}
