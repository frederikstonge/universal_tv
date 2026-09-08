import 'package:flutter/widgets.dart';

class VideoControlsColorsTheme {
  final Color overlayBackground;
  final Color transparentColor;
  final Color foreground;
  final Color foregroundDim;
  final Color liveBadge;

  const VideoControlsColorsTheme({
    this.overlayBackground = const Color(0xBB000000),
    this.transparentColor = const Color(0x00000000),
    this.foreground = const Color(0xFFFFFFFF),
    this.foregroundDim = const Color(0x99FFFFFF),
    this.liveBadge = const Color(0xFFEF4444),
  });
}
