import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

import 'video_controls_theme.dart';

class ForuiIconsTheme extends VideoControlsIconsTheme {
  const ForuiIconsTheme()
    : super(
        back: FLucideIcons.arrowLeft,
        loading: FLucideIcons.loader,
        skipBack: FLucideIcons.skipBack,
        skipForward: FLucideIcons.skipForward,
        play: FLucideIcons.play,
        pause: FLucideIcons.pause,
        volume: FLucideIcons.volume2,
        volumeMuted: FLucideIcons.volumeX,
        captions: FLucideIcons.captions,
        selected: FLucideIcons.check,
        chevronUp: FLucideIcons.chevronUp,
        chevronDown: FLucideIcons.chevronDown,
        minimize: FLucideIcons.minimize,
        maximize: FLucideIcons.maximize,
      );
}

class ForuiWidgetsTheme extends VideoControlsWidgetsTheme {
  ForuiWidgetsTheme()
    : super(
        buttonBuilder:
            ({
              required BuildContext context,
              required void Function() onTap,
              required Widget child,
              bool? autoFocus,
              FocusNode? focusNode,
            }) => FButton.icon(
              variant: .ghost,
              autofocus: autoFocus ?? false,
              focusNode: focusNode,
              onPress: onTap,
              child: child,
            ),
        sliderBuilder:
            ({
              required double value,
              required void Function(double value) onMove,
              void Function(double value)? onMoveEnd,
              Widget Function(double value)? tooltipBuilder,
              double? thumbSize,
              EdgeInsets? childPadding,
            }) => FSlider(
              style: FSliderStyleDelta.delta(
                thumbSize: thumbSize,
                childPadding: childPadding != null ? EdgeInsetsGeometryDelta.value(childPadding) : null,
              ),
              control: .liftedContinuous(
                value: FSliderValue(max: value / 100),
                onChange: (value) => onMove(value.max * 100),
              ),
              onEnd: onMoveEnd != null ? (value) => onMoveEnd(value.max) : null,
              tooltipBuilder: tooltipBuilder != null
                  ? (_, value) => tooltipBuilder(value)
                  : FSlider.defaultTooltipBuilder,
              layout: .ltr,
            ),
        popoverBuilder:
            ({
              required BuildContext context,
              required Widget Function(void Function() close) builder,
              required double maxHeight,
              required double maxWidth,
            }) => FPopover(
              popoverBuilder: (context, controller) => ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight),
                child: builder(() => controller.hide()),
              ),
            ),
        focusedBuilder: ({required child, required context, required focused}) =>
            FFocusedOutline(focused: focused, child: child),
      );
}
