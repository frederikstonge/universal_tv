import 'dart:async';
import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import 'video_controls_theme.dart';

class CustomVideoControls extends StatefulWidget {
  final bool isLive;
  final VideoState state;
  final String title;
  final String? logoUrl;
  final bool showSubtitles;
  final bool showFullscreen;
  final Widget? bottomWidget;
  final Duration seekDuration;
  final VideoControlsTheme theme;

  const CustomVideoControls({
    super.key,
    required this.state,
    required this.isLive,
    required this.title,
    this.logoUrl,
    this.showSubtitles = true,
    this.showFullscreen = true,
    this.bottomWidget,
    this.seekDuration = const Duration(seconds: 10),
    this.theme = const VideoControlsTheme(),
  });

  @override
  State<CustomVideoControls> createState() => _CustomVideoControlsState();
}

class _CustomVideoControlsState extends State<CustomVideoControls> with TickerProviderStateMixin {
  late final VideoController controller;
  late final AnimationController _spinController;
  late final AnimationController _panelController;
  Player get player => controller.player;
  VideoControlsTheme get theme => widget.theme;

  // Controls visibility.
  bool _visible = true;
  bool _hovering = false;
  Timer? _hideTimer;

  // Player state.
  bool _playing = false;
  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;
  double _volume = 100.0;
  bool _buffering = false;
  double? _seekPercent;
  List<SubtitleTrack> _subtitleTracks = [];
  SubtitleTrack _activeSubtitle = SubtitleTrack.no();

  // Bottom widget panel state.
  bool _panelOpen = false;

  final FocusNode _playPauseFocusNode = FocusNode(debugLabel: 'PlayPause');
  final _seekSliderController = _ActivatableSliderController();
  final _volumeSliderController = _ActivatableSliderController();
  late final List<StreamSubscription> _subscriptions;

  bool get _hasPanel => widget.bottomWidget != null && isFullscreen(context);

  // ── Lifecycle ─────────────────────────────────────────────────────────

  @override
  void initState() {
    super.initState();
    controller = widget.state.widget.controller;
    _spinController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _panelController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: theme.timing.panelAnimationDuration),
    );

    _playing = player.state.playing;
    _position = player.state.position;
    _duration = player.state.duration;
    _volume = player.state.volume;
    _buffering = player.state.buffering;
    _subtitleTracks = player.state.tracks.subtitle;
    _activeSubtitle = player.state.track.subtitle;

    _subscriptions = [
      player.stream.playing.listen((v) => setState(() => _playing = v)),
      player.stream.position.listen((v) {
        if (_seekPercent == null) setState(() => _position = v);
      }),
      player.stream.duration.listen((v) => setState(() => _duration = v)),
      player.stream.volume.listen((v) => setState(() => _volume = v)),
      player.stream.buffering.listen((v) {
        setState(() => _buffering = v);
        if (v) {
          _hideTimer?.cancel();
          setState(() => _visible = true);
          _spinController.repeat();
        } else {
          _spinController.stop();
          _resetHideTimer();
        }
      }),
      player.stream.tracks.listen((v) => setState(() => _subtitleTracks = v.subtitle)),
      player.stream.track.listen((v) => setState(() => _activeSubtitle = v.subtitle)),
    ];

    _resetHideTimer();
  }

  @override
  void dispose() {
    _hideTimer?.cancel();
    _playPauseFocusNode.dispose();
    _seekSliderController.dispose();
    _volumeSliderController.dispose();
    _spinController.dispose();
    _panelController.dispose();
    for (final sub in _subscriptions) {
      sub.cancel();
    }
    super.dispose();
  }

  // ── Controls visibility ───────────────────────────────────────────────

  void _resetHideTimer() {
    _hideTimer?.cancel();
    if (_buffering || _panelOpen) return;
    _hideTimer = Timer(Duration(milliseconds: theme.timing.hideDelay), () {
      if (mounted && _playing && !_hovering) {
        setState(() => _visible = false);
      }
    });
  }

  void _showControls() {
    if (!_visible) {
      setState(() => _visible = true);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _playPauseFocusNode.requestFocus();
      });
    }
    _resetHideTimer();
  }

  // ── Bottom widget panel ───────────────────────────────────────────────

  void _openPanel() {
    if (_panelOpen || widget.bottomWidget == null || !isFullscreen(context)) {
      return;
    }
    setState(() => _panelOpen = true);
    _hideTimer?.cancel();
    _panelController.forward();
  }

  void _closePanel() {
    if (!_panelOpen) return;
    _panelController.reverse().then((_) {
      if (mounted) setState(() => _panelOpen = false);
    });
    _resetHideTimer();
  }

  // ── Key handling ──────────────────────────────────────────────────────

  _ActivatableSliderController? get _activeSlider {
    if (_seekSliderController.active) return _seekSliderController;
    if (_volumeSliderController.active) return _volumeSliderController;
    return null;
  }

  KeyEventResult _handleKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    // Panel open: only escape/back closes it.
    if (_panelOpen) {
      final key = event.logicalKey;
      if (key == LogicalKeyboardKey.escape || key == LogicalKeyboardKey.goBack) {
        _closePanel();
        _playPauseFocusNode.requestFocus();
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    }

    // Controls hidden: any key shows them.
    if (!_visible) {
      _showControls();
      return KeyEventResult.handled;
    }

    final key = event.logicalKey;

    // Active slider mode: left/right pass through, up/down blocked,
    // select/enter/escape deactivates.
    final slider = _activeSlider;
    if (slider != null) {
      if (key == LogicalKeyboardKey.arrowLeft || key == LogicalKeyboardKey.arrowRight) {
        _resetHideTimer();
        return KeyEventResult.ignored;
      }
      if (key == LogicalKeyboardKey.arrowUp || key == LogicalKeyboardKey.arrowDown) {
        _resetHideTimer();
        return KeyEventResult.handled;
      }
      if (key == LogicalKeyboardKey.select ||
          key == LogicalKeyboardKey.enter ||
          key == LogicalKeyboardKey.escape ||
          key == LogicalKeyboardKey.goBack) {
        slider.deactivate();
        _resetHideTimer();
        return KeyEventResult.handled;
      }
    }

    // D-pad navigation: try to move focus, and if down fails open panel.
    if (key == LogicalKeyboardKey.arrowUp ||
        key == LogicalKeyboardKey.arrowDown ||
        key == LogicalKeyboardKey.arrowLeft ||
        key == LogicalKeyboardKey.arrowRight) {
      final direction = switch (key) {
        LogicalKeyboardKey.arrowUp => TraversalDirection.up,
        LogicalKeyboardKey.arrowDown => TraversalDirection.down,
        LogicalKeyboardKey.arrowLeft => TraversalDirection.left,
        _ => TraversalDirection.right,
      };
      final moved = FocusManager.instance.primaryFocus?.focusInDirection(direction) ?? false;
      if (!moved && key == LogicalKeyboardKey.arrowDown && _hasPanel) {
        _openPanel();
      }
      _resetHideTimer();
      return KeyEventResult.handled;
    }

    _resetHideTimer();
    return KeyEventResult.ignored;
  }

  // ── Scroll to open panel ──────────────────────────────────────────────

  void _onPointerSignal(PointerSignalEvent event) {
    if (event is PointerScrollEvent) {
      if (event.scrollDelta.dy > 0 && !_panelOpen) {
        _openPanel();
      }
    }
  }

  // ── Formatting helpers ────────────────────────────────────────────────

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return hours > 0 ? '$hours:$minutes:$seconds' : '$minutes:$seconds';
  }

  double get _positionPercent {
    if (_duration.inMilliseconds == 0) return 0.0;
    return (_position.inMilliseconds / _duration.inMilliseconds).clamp(0.0, 1.0);
  }

  // ── Build ─────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final hasPanel = _hasPanel;

    return FocusScope(
      onKeyEvent: _handleKeyEvent,
      child: Listener(
        behavior: HitTestBehavior.translucent,
        onPointerSignal: hasPanel ? _onPointerSignal : null,
        child: Stack(children: [_buildControlsOverlay(context, hasPanel), if (hasPanel) _buildBottomPanel(context)]),
      ),
    );
  }

  // ── Controls overlay (gradient, top bar, center, bottom bar) ──────────

  Widget _buildControlsOverlay(BuildContext context, bool hasPanel) {
    return MouseRegion(
      opaque: true,
      onEnter: (_) {
        _hovering = true;
        _hideTimer?.cancel();
        setState(() => _visible = true);
      },
      onHover: (_) {
        _hovering = true;
        if (!_visible) setState(() => _visible = true);
      },
      onExit: (_) {
        _hovering = false;
        _resetHideTimer();
      },
      child: GestureDetector(
        onTap: _panelOpen ? _closePanel : _showControls,
        behavior: HitTestBehavior.opaque,
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: theme.timing.animationDuration),
          child: ExcludeFocus(
            excluding: !_visible,
            child: IgnorePointer(
              ignoring: !_visible,
              child: FocusTraversalGroup(
                child: Stack(
                  children: [
                    if (!_panelOpen) _buildGradientOverlay(),
                    _buildTopBar(context),
                    if (!_panelOpen) _buildCenterControls(context),
                    if (!_panelOpen) _buildBottomBar(context, hasPanel),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGradientOverlay() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              theme.colors.overlayBackground,
              theme.colors.transparentColor,
              theme.colors.transparentColor,
              theme.colors.overlayBackground,
            ],
          ),
        ),
      ),
    );
  }

  // ── Top bar ───────────────────────────────────────────────────────────

  Widget _buildTopBar(BuildContext context) {
    return Positioned(
      left: theme.spacing.topBarInset,
      top: theme.spacing.topBarInset,
      right: theme.spacing.topBarInset,
      child: Row(
        children: [
          if (Navigator.of(context).canPop())
            FButton.icon(
              variant: .ghost,
              onPress: () async {
                if (isFullscreen(context)) {
                  await exitFullscreen(context);
                }
                if (context.mounted) {
                  unawaited(Navigator.of(context).maybePop());
                }
              },
              child: Icon(FIcons.arrowLeft, size: theme.iconSizes.back, color: theme.colors.foreground),
            ),
          if (widget.logoUrl != null) ...[
            SizedBox(width: theme.spacing.controlsGap),
            ClipRRect(
              borderRadius: BorderRadius.circular(theme.sizes.logoBorderRadius),
              child: Image.network(
                widget.logoUrl!,
                width: theme.sizes.logo,
                height: theme.sizes.logo,
                fit: BoxFit.contain,
                errorBuilder: (_, _, _) => const SizedBox.shrink(),
              ),
            ),
          ],
          SizedBox(width: theme.spacing.controlsGap),
          Expanded(
            child: Text(
              widget.title,
              style: TextStyle(
                color: theme.colors.foreground,
                fontSize: theme.fontSizes.title,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  // ── Center controls (spinner / play-pause / seek) ─────────────────────

  Widget _buildCenterControls(BuildContext context) {
    if (_buffering) {
      return Center(
        child: AnimatedBuilder(
          animation: _spinController,
          builder: (_, child) => Transform.rotate(angle: _spinController.value * 2 * pi, child: child),
          child: Icon(FIcons.loader, size: theme.iconSizes.spinner, color: theme.colors.foregroundDim),
        ),
      );
    }

    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!widget.isLive) ...[
            FButton.icon(
              variant: .ghost,
              onPress: () {
                final target = _position - widget.seekDuration;
                player.seek(target < Duration.zero ? Duration.zero : target);
                _resetHideTimer();
              },
              child: Icon(FIcons.skipBack, size: theme.iconSizes.skip, color: theme.colors.foreground),
            ),
            SizedBox(width: theme.spacing.skipButtonGap),
          ],
          FButton.icon(
            variant: .ghost,
            autofocus: true,
            focusNode: _playPauseFocusNode,
            onPress: () {
              player.playOrPause();
              _resetHideTimer();
            },
            child: Icon(
              _playing ? FIcons.pause : FIcons.play,
              size: theme.iconSizes.playPause,
              color: theme.colors.foreground,
            ),
          ),
          if (!widget.isLive) ...[
            SizedBox(width: theme.spacing.skipButtonGap),
            FButton.icon(
              variant: .ghost,
              onPress: () {
                final target = _position + widget.seekDuration;
                player.seek(target > _duration ? _duration : target);
                _resetHideTimer();
              },
              child: Icon(FIcons.skipForward, size: theme.iconSizes.skip, color: theme.colors.foreground),
            ),
          ],
        ],
      ),
    );
  }

  // ── Bottom bar (seek, volume, subtitles, fullscreen, chevron) ─────────

  Widget _buildBottomBar(BuildContext context, bool hasPanel) {
    return Positioned(
      left: theme.spacing.bottomBarInset,
      right: theme.spacing.bottomBarInset,
      bottom: theme.spacing.bottomBarInset,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!widget.isLive && _duration > Duration.zero) _buildSeekRow(context),
          SizedBox(height: theme.spacing.controlsGap),
          _buildControlsRow(context),
          if (hasPanel)
            GestureDetector(
              onTap: _openPanel,
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Icon(FIcons.chevronDown, size: 16, color: theme.colors.foregroundDim),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSeekRow(BuildContext context) {
    return Row(
      children: [
        Text(
          '${_formatDuration(_position)} / ${_formatDuration(_duration)}',
          style: TextStyle(color: theme.colors.foreground, fontSize: theme.fontSizes.time),
        ),
        SizedBox(width: theme.spacing.controlsGap),
        Expanded(
          child: _ActivatableSlider(
            controller: _seekSliderController,
            debugLabel: 'SeekSlider',
            child: FSlider(
              control: .liftedContinuous(
                value: FSliderValue(max: _seekPercent ?? _positionPercent),
                onChange: (value) => setState(() => _seekPercent = value.max),
              ),
              onEnd: (value) {
                final target = Duration(milliseconds: (value.max * _duration.inMilliseconds).round());
                player.seek(target);
                setState(() => _seekPercent = null);
                _resetHideTimer();
              },
              tooltipBuilder: (_, value) {
                final time = Duration(milliseconds: (value * _duration.inMilliseconds).round());
                return Text(_formatDuration(time));
              },
              layout: .ltr,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildControlsRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (widget.isLive)
          DecoratedBox(
            decoration: BoxDecoration(
              color: theme.colors.liveBadge,
              borderRadius: BorderRadius.all(Radius.circular(theme.sizes.liveBadgeBorderRadius)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: theme.spacing.liveBadgeHorizontal,
                vertical: theme.spacing.liveBadgeVertical,
              ),
              child: Text(
                'LIVE',
                style: TextStyle(
                  color: theme.colors.foreground,
                  fontSize: theme.fontSizes.live,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        const Spacer(),
        FButton.icon(
          variant: .ghost,
          onPress: () {
            player.setVolume(_volume > 0 ? 0 : 100);
            _resetHideTimer();
          },
          child: Icon(
            _volume > 0 ? FIcons.volume2 : FIcons.volumeX,
            size: theme.iconSizes.control,
            color: theme.colors.foreground,
          ),
        ),
        _ActivatableSlider(
          controller: _volumeSliderController,
          debugLabel: 'VolumeSlider',
          child: SizedBox(
            width: theme.sizes.volumeSliderWidth,
            child: FSlider(
              style: FSliderStyleDelta.delta(
                thumbSize: theme.sizes.volumeThumbSize,
                childPadding: EdgeInsetsGeometryDelta.value(
                  EdgeInsets.symmetric(horizontal: theme.spacing.volumeSliderHorizontal),
                ),
              ),
              control: .liftedContinuous(
                value: FSliderValue(max: _volume / 100),
                onChange: (value) {
                  player.setVolume(value.max * 100);
                  _resetHideTimer();
                },
              ),
              tooltipBuilder: (_, value) => Text('${(value * 100).round()}%'),
              layout: .ltr,
            ),
          ),
        ),
        if (widget.showSubtitles && _subtitleTracks.length > 2)
          _SubtitleButton(
            tracks: _subtitleTracks,
            active: _activeSubtitle,
            theme: theme,
            onSelected: (track) {
              player.setSubtitleTrack(track);
              _resetHideTimer();
            },
          ),
        if (widget.showFullscreen)
          FButton.icon(
            variant: .ghost,
            onPress: () {
              toggleFullscreen(context);
              _resetHideTimer();
            },
            child: Icon(
              isFullscreen(context) ? FIcons.minimize : FIcons.maximize,
              size: theme.iconSizes.control,
              color: theme.colors.foreground,
            ),
          ),
      ],
    );
  }

  // ── Bottom widget panel ───────────────────────────────────────────────

  Widget _buildBottomPanel(BuildContext context) {
    final fullHeight = MediaQuery.sizeOf(context).height;
    final topBarBottom = theme.spacing.topBarInset * 2 + theme.iconSizes.back;
    final maxHeight = fullHeight - topBarBottom;

    return AnimatedBuilder(
      animation: _panelController,
      builder: (context, child) {
        final height = maxHeight * _panelController.value;
        return Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: height,
          child: ClipRect(
            child: ExcludeFocus(
              excluding: !_panelOpen,
              child: OverflowBox(
                alignment: Alignment.topCenter,
                maxHeight: maxHeight,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: theme.colors.overlayBackground),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: _closePanel,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Icon(FIcons.chevronUp, size: 16, color: theme.colors.foregroundDim),
                        ),
                      ),
                      Expanded(child: widget.bottomWidget!),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// ─── Subtitle button ──────────────────────────────────────────────────────────

class _SubtitleButton extends StatelessWidget {
  final List<SubtitleTrack> tracks;
  final SubtitleTrack active;
  final ValueChanged<SubtitleTrack> onSelected;
  final VideoControlsTheme theme;

  const _SubtitleButton({required this.tracks, required this.active, required this.onSelected, required this.theme});

  @override
  Widget build(BuildContext context) {
    return FPopover(
      popoverBuilder: (context, controller) => ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: theme.constraints.subtitlePopoverMaxWidth,
          maxHeight: theme.constraints.subtitlePopoverMaxHeight,
        ),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(vertical: theme.spacing.subtitleListVertical),
          children: [
            for (final track in tracks)
              GestureDetector(
                onTap: () {
                  onSelected(track);
                  controller.hide();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: theme.spacing.subtitleItemVertical,
                    horizontal: theme.spacing.subtitleItemHorizontal,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          _trackLabel(track),
                          style: TextStyle(
                            color: theme.colors.foreground,
                            fontSize: theme.fontSizes.subtitle,
                            fontWeight: track == active ? FontWeight.bold : FontWeight.normal,
                          ),
                        ),
                      ),
                      if (track == active)
                        Icon(FIcons.check, size: theme.iconSizes.subtitleCheck, color: theme.colors.foreground),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
      child: Icon(
        FIcons.captions,
        size: theme.iconSizes.control,
        color: active.id != 'no' ? theme.colors.foreground : theme.colors.foregroundDim,
      ),
    );
  }

  String _trackLabel(SubtitleTrack track) {
    if (track.id == 'no') return 'Off';
    if (track.id == 'auto') return 'Auto';
    final parts = [track.title, track.language].nonNulls;
    return parts.isNotEmpty ? parts.join(' - ') : 'Track ${track.id}';
  }
}

// ─── Activatable slider ───────────────────────────────────────────────────────

class _ActivatableSliderController extends ChangeNotifier {
  FocusNode? _containerNode;
  bool _active = false;

  bool get active => _active;

  void _attach(FocusNode containerNode) {
    _containerNode = containerNode;
  }

  void activate() {
    _active = true;
    notifyListeners();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final container = _containerNode;
      if (container == null) return;
      final descendants = container.traversalDescendants;
      if (descendants.isNotEmpty) {
        descendants.first.requestFocus();
      }
    });
  }

  void deactivate() {
    _active = false;
    notifyListeners();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _containerNode?.requestFocus();
    });
  }

  @override
  void dispose() {
    _containerNode = null;
    super.dispose();
  }
}

class _ActivatableSlider extends StatefulWidget {
  final _ActivatableSliderController controller;
  final String debugLabel;
  final Widget child;

  const _ActivatableSlider({required this.controller, required this.debugLabel, required this.child});

  @override
  State<_ActivatableSlider> createState() => _ActivatableSliderState();
}

class _ActivatableSliderState extends State<_ActivatableSlider> {
  late final FocusNode _containerNode = FocusNode(debugLabel: '${widget.debugLabel}Container');
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    widget.controller._attach(_containerNode);
    widget.controller.addListener(_onControllerChanged);
  }

  void _onControllerChanged() {
    setState(() {});
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onControllerChanged);
    _containerNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final active = widget.controller._active;
    _containerNode.skipTraversal = active;
    return Focus(
      focusNode: _containerNode,
      descendantsAreFocusable: active,
      descendantsAreTraversable: active,
      onFocusChange: (focused) => setState(() => _focused = focused),
      onKeyEvent: (node, event) {
        if (active) return KeyEventResult.ignored;
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        final key = event.logicalKey;
        if (key == LogicalKeyboardKey.select || key == LogicalKeyboardKey.enter) {
          widget.controller.activate();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: FFocusedOutline(focused: _focused && !active, child: widget.child),
    );
  }
}
