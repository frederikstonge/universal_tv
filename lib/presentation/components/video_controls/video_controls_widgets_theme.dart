import 'package:flutter/widgets.dart';

class VideoControlsWidgetsTheme {
  final Widget Function({
    required BuildContext context,
    required void Function() onTap,
    required Widget child,
    bool? autoFocus,
    FocusNode? focusNode,
  })
  buttonBuilder;

  final Widget Function({
    required double value,
    required void Function(double value) onMove,
    void Function(double value)? onMoveEnd,
    Widget Function(double value)? tooltipBuilder,
    double? thumbSize,
    EdgeInsets? childPadding,
  })
  sliderBuilder;

  final Widget Function({
    required BuildContext context,
    required Widget Function(void Function() open) buttonBuilder,
    required Widget Function(void Function() close) builder,
    required double maxHeight,
    required double maxWidth,
  })
  popoverBuilder;

  final Widget Function({required BuildContext context, required bool focused, required Widget child}) focusedBuilder;

  const VideoControlsWidgetsTheme({
    required this.buttonBuilder,
    required this.sliderBuilder,
    required this.popoverBuilder,
    required this.focusedBuilder,
  });
}
