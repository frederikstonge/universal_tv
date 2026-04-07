import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class CustomVideoControls extends StatefulWidget {
  final bool isLive;
  final VideoState state;
  final String? title;
  final String? logoUrl;
  final bool showSubtitles;
  final bool showFullscreen;
  final Widget? bottomWidget;

  const CustomVideoControls({
    super.key,
    required this.state,
    required this.isLive,
    this.title,
    this.logoUrl,
    this.showSubtitles = true,
    this.showFullscreen = true,
    this.bottomWidget,
  });

  @override
  State<CustomVideoControls> createState() => _CustomVideoControlsState();
}

class _CustomVideoControlsState extends State<CustomVideoControls> with TickerProviderStateMixin {
  late final VideoController controller;
  late final AnimationController _spinController;
  late final AnimationController _panelController;
  Player get player => controller.player;

  bool _visible = true;
  bool _hovering = false;
  Timer? _hideTimer;

  bool _playing = false;
  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;
  double _volume = 100.0;
  bool _buffering = false;
  double? _seekPercent;
  List<SubtitleTrack> _subtitleTracks = [];
  SubtitleTrack _activeSubtitle = SubtitleTrack.no();
  bool _panelOpen = false;

  late final List<StreamSubscription> _subscriptions;

  @override
  void initState() {
    super.initState();
    controller = widget.state.widget.controller;
    _spinController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _panelController = AnimationController(vsync: this, duration: const Duration(milliseconds: 300));

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
          _startHideTimer();
        }
      }),
      player.stream.tracks.listen((v) => setState(() => _subtitleTracks = v.subtitle)),
      player.stream.track.listen((v) => setState(() => _activeSubtitle = v.subtitle)),
    ];

    _startHideTimer();
  }

  @override
  void dispose() {
    _hideTimer?.cancel();
    _spinController.dispose();
    _panelController.dispose();
    for (final sub in _subscriptions) {
      sub.cancel();
    }
    super.dispose();
  }

  void _startHideTimer() {
    _hideTimer?.cancel();
    if (_buffering) return;
    _hideTimer = Timer(const Duration(seconds: 3), () {
      if (mounted && _playing && !_hovering) {
        setState(() => _visible = false);
      }
    });
  }

  void _showControls() {
    if (!_visible) setState(() => _visible = true);
    _startHideTimer();
  }

  void _openPanel() {
    if (!_panelOpen && widget.bottomWidget != null && isFullscreen(context)) {
      setState(() => _panelOpen = true);
      _hideTimer?.cancel();
      _panelController.forward();
    }
  }

  void _closePanel() {
    if (_panelOpen) {
      _panelController.reverse().then((_) {
        if (mounted) setState(() => _panelOpen = false);
      });
      _startHideTimer();
    }
  }

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

  @override
  Widget build(BuildContext context) {
    final bool inFullscreen = isFullscreen(context);
    final bool hasPanel = widget.bottomWidget != null && inFullscreen;

    return Stack(
      children: [
        MouseRegion(
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
            _startHideTimer();
          },
          child: GestureDetector(
            onTap: () {
              if (_panelOpen) {
                _closePanel();
              } else {
                _showControls();
              }
            },
            onVerticalDragEnd: hasPanel
                ? (details) {
                    if (details.primaryVelocity == null) return;
                    if (details.primaryVelocity! > 100) {
                      _openPanel();
                    } else if (details.primaryVelocity! < -100) {
                      _closePanel();
                    }
                  }
                : null,
            behavior: HitTestBehavior.opaque,
            child: AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: IgnorePointer(
                ignoring: !_visible,
                child: Stack(
                  children: [
                    const Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xBB000000), Color(0x00000000), Color(0x00000000), Color(0xBB000000)],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      top: 8,
                      right: 8,
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
                              child: const Icon(FIcons.arrowLeft, size: 24, color: Color(0xFFFFFFFF)),
                            ),
                          if (widget.logoUrl != null) ...[
                            const SizedBox(width: 8),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.network(
                                widget.logoUrl!,
                                width: 32,
                                height: 32,
                                fit: BoxFit.contain,
                                errorBuilder: (_, _, _) => const SizedBox.shrink(),
                              ),
                            ),
                          ],
                          if (widget.title != null) ...[
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                widget.title!,
                                style: const TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    Center(
                      child: _buffering
                          ? AnimatedBuilder(
                              animation: _spinController,
                              builder: (_, child) =>
                                  Transform.rotate(angle: _spinController.value * 2 * 3.14159265, child: child),
                              child: const Icon(FIcons.loader, size: 48, color: Color(0x99FFFFFF)),
                            )
                          : Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (!widget.isLive) ...[
                                  FButton.icon(
                                    variant: .ghost,
                                    onPress: () {
                                      final target = _position - const Duration(seconds: 10);
                                      player.seek(target < Duration.zero ? Duration.zero : target);
                                      _startHideTimer();
                                    },
                                    child: const Icon(FIcons.skipBack, size: 32, color: Color(0xFFFFFFFF)),
                                  ),
                                  const SizedBox(width: 24),
                                ],
                                FButton.icon(
                                  variant: .ghost,
                                  onPress: () {
                                    player.playOrPause();
                                    _startHideTimer();
                                  },
                                  child: Icon(
                                    _playing ? FIcons.pause : FIcons.play,
                                    size: 48,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                ),
                                if (!widget.isLive) ...[
                                  const SizedBox(width: 24),
                                  FButton.icon(
                                    variant: .ghost,
                                    onPress: () {
                                      final target = _position + const Duration(seconds: 10);
                                      player.seek(target > _duration ? _duration : target);
                                      _startHideTimer();
                                    },
                                    child: const Icon(FIcons.skipForward, size: 32, color: Color(0xFFFFFFFF)),
                                  ),
                                ],
                              ],
                            ),
                    ),
                    if (!_panelOpen)
                      Positioned(
                        left: 16,
                        right: 16,
                        bottom: 16,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (!widget.isLive && _duration > Duration.zero)
                              FSlider(
                                control: .liftedContinuous(
                                  value: FSliderValue(max: _seekPercent ?? _positionPercent),
                                  onChange: (value) => setState(() => _seekPercent = value.max),
                                ),
                                onEnd: (value) {
                                  final target = Duration(milliseconds: (value.max * _duration.inMilliseconds).round());
                                  player.seek(target);
                                  setState(() => _seekPercent = null);
                                  _startHideTimer();
                                },
                                tooltipBuilder: (_, value) {
                                  final time = Duration(milliseconds: (value * _duration.inMilliseconds).round());
                                  return Text(_formatDuration(time));
                                },
                                layout: .ltr,
                              ),
                            const SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (!widget.isLive)
                                  Text(
                                    '${_formatDuration(_position)} / ${_formatDuration(_duration)}',
                                    style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 12),
                                  )
                                else
                                  const DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEF4444),
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                      child: Text(
                                        'LIVE',
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 12,
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
                                    _startHideTimer();
                                  },
                                  child: Icon(
                                    _volume > 0 ? FIcons.volume2 : FIcons.volumeX,
                                    size: 20,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: FSlider(
                                    style: const .delta(thumbSize: 12, childPadding: .value(.symmetric(horizontal: 6))),
                                    control: .liftedContinuous(
                                      value: FSliderValue(max: _volume / 100),
                                      onChange: (value) {
                                        player.setVolume(value.max * 100);
                                        _startHideTimer();
                                      },
                                    ),
                                    tooltipBuilder: (_, value) => Text('${(value * 100).round()}%'),
                                    layout: .ltr,
                                  ),
                                ),
                                if (widget.showSubtitles && _subtitleTracks.length > 2)
                                  _SubtitleButton(
                                    tracks: _subtitleTracks,
                                    active: _activeSubtitle,
                                    onSelected: (track) {
                                      player.setSubtitleTrack(track);
                                      _startHideTimer();
                                    },
                                  ),
                                if (widget.showFullscreen)
                                  FButton.icon(
                                    variant: .ghost,
                                    onPress: () {
                                      toggleFullscreen(context);
                                      _startHideTimer();
                                    },
                                    child: Icon(
                                      isFullscreen(context) ? FIcons.minimize : FIcons.maximize,
                                      size: 20,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (hasPanel)
          AnimatedBuilder(
            animation: _panelController,
            builder: (context, child) {
              final maxHeight = MediaQuery.of(context).size.height * 0.5;
              final offset = (1.0 - _panelController.value) * maxHeight;
              return Positioned(
                left: 0,
                right: 0,
                bottom: -offset,
                height: maxHeight,
                child: GestureDetector(
                  onVerticalDragEnd: (details) {
                    if (details.primaryVelocity != null && details.primaryVelocity! < -100) {
                      _closePanel();
                    }
                  },
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Color(0xDD000000),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: SizedBox(
                            width: 40,
                            height: 4,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Color(0x66FFFFFF),
                                borderRadius: BorderRadius.all(Radius.circular(2)),
                              ),
                            ),
                          ),
                        ),
                        Expanded(child: widget.bottomWidget!),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
      ],
    );
  }
}

class _SubtitleButton extends StatelessWidget {
  final List<SubtitleTrack> tracks;
  final SubtitleTrack active;
  final ValueChanged<SubtitleTrack> onSelected;

  const _SubtitleButton({required this.tracks, required this.active, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return FPopover(
      popoverBuilder: (context, controller) => ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 200, maxHeight: 300),
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 4),
          children: [
            for (final track in tracks)
              GestureDetector(
                onTap: () {
                  onSelected(track);
                  controller.hide();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          _trackLabel(track),
                          style: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 13,
                            fontWeight: track == active ? FontWeight.bold : FontWeight.normal,
                          ),
                        ),
                      ),
                      if (track == active) const Icon(FIcons.check, size: 16, color: Color(0xFFFFFFFF)),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
      child: Icon(
        FIcons.captions,
        size: 20,
        color: active.id != 'no' ? const Color(0xFFFFFFFF) : const Color(0x99FFFFFF),
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
