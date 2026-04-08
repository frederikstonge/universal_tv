import 'dart:ui';

import 'package:dart_mappable/dart_mappable.dart';

part 'video_controls_theme.mapper.dart';

class ColorHook extends MappingHook {
  const ColorHook();

  @override
  Object? beforeDecode(Object? value) {
    if (value is int) return Color(value);
    if (value is String) return Color(int.parse(value, radix: 16));
    return value;
  }

  @override
  Object? beforeEncode(Object? value) {
    if (value is Color) return value.toARGB32();
    return value;
  }
}

@MappableClass()
class VideoControlsColorTheme with VideoControlsColorThemeMappable {
  @MappableField(hook: ColorHook())
  final Color overlayBackground;
  @MappableField(hook: ColorHook())
  final Color transparentColor;
  @MappableField(hook: ColorHook())
  final Color foreground;
  @MappableField(hook: ColorHook())
  final Color foregroundDim;
  @MappableField(hook: ColorHook())
  final Color liveBadge;

  const VideoControlsColorTheme({
    this.overlayBackground = const Color(0xBB000000),
    this.transparentColor = const Color(0x00000000),
    this.foreground = const Color(0xFFFFFFFF),
    this.foregroundDim = const Color(0x99FFFFFF),
    this.liveBadge = const Color(0xFFEF4444),
  });
}

@MappableClass()
class VideoControlsIconSizeTheme with VideoControlsIconSizeThemeMappable {
  final double back;
  final double playPause;
  final double skip;
  final double control;
  final double subtitleCheck;
  final double spinner;

  const VideoControlsIconSizeTheme({
    this.back = 24,
    this.playPause = 48,
    this.skip = 32,
    this.control = 20,
    this.subtitleCheck = 16,
    this.spinner = 48,
  });
}

@MappableClass()
class VideoControlsSizeTheme with VideoControlsSizeThemeMappable {
  final double logo;
  final double logoBorderRadius;
  final double volumeSliderWidth;
  final double volumeThumbSize;
  final double liveBadgeBorderRadius;

  const VideoControlsSizeTheme({
    this.logo = 32,
    this.logoBorderRadius = 4,
    this.volumeSliderWidth = 100,
    this.volumeThumbSize = 12,
    this.liveBadgeBorderRadius = 4,
  });
}

@MappableClass()
class VideoControlsFontSizeTheme with VideoControlsFontSizeThemeMappable {
  final double title;
  final double time;
  final double live;
  final double subtitle;

  const VideoControlsFontSizeTheme({this.title = 16, this.time = 12, this.live = 12, this.subtitle = 13});
}

@MappableClass()
class VideoControlsSpacingTheme with VideoControlsSpacingThemeMappable {
  final double topBarInset;
  final double bottomBarInset;
  final double controlsGap;
  final double skipButtonGap;
  final double subtitleItemVertical;
  final double subtitleItemHorizontal;
  final double liveBadgeHorizontal;
  final double liveBadgeVertical;
  final double subtitleListVertical;
  final double volumeSliderHorizontal;

  const VideoControlsSpacingTheme({
    this.topBarInset = 8,
    this.bottomBarInset = 16,
    this.controlsGap = 8,
    this.skipButtonGap = 24,
    this.subtitleItemVertical = 6,
    this.subtitleItemHorizontal = 12,
    this.liveBadgeHorizontal = 8,
    this.liveBadgeVertical = 2,
    this.subtitleListVertical = 4,
    this.volumeSliderHorizontal = 6,
  });
}

@MappableClass()
class VideoControlsConstraintsTheme with VideoControlsConstraintsThemeMappable {
  final double subtitlePopoverMaxWidth;
  final double subtitlePopoverMaxHeight;
  final double swipeVelocityThreshold;

  const VideoControlsConstraintsTheme({
    this.subtitlePopoverMaxWidth = 200,
    this.subtitlePopoverMaxHeight = 300,
    this.swipeVelocityThreshold = 100,
  });
}

@MappableClass()
class VideoControlsTimingTheme with VideoControlsTimingThemeMappable {
  final int hideDelay;
  final int animationDuration;
  final int panelAnimationDuration;

  const VideoControlsTimingTheme({
    this.hideDelay = 3000,
    this.animationDuration = 300,
    this.panelAnimationDuration = 300,
  });
}

@MappableClass()
class VideoControlsTheme with VideoControlsThemeMappable {
  final VideoControlsColorTheme colors;
  final VideoControlsIconSizeTheme iconSizes;
  final VideoControlsSizeTheme sizes;
  final VideoControlsFontSizeTheme fontSizes;
  final VideoControlsSpacingTheme spacing;
  final VideoControlsConstraintsTheme constraints;
  final VideoControlsTimingTheme timing;

  const VideoControlsTheme({
    this.colors = const VideoControlsColorTheme(),
    this.iconSizes = const VideoControlsIconSizeTheme(),
    this.sizes = const VideoControlsSizeTheme(),
    this.fontSizes = const VideoControlsFontSizeTheme(),
    this.spacing = const VideoControlsSpacingTheme(),
    this.constraints = const VideoControlsConstraintsTheme(),
    this.timing = const VideoControlsTimingTheme(),
  });
}
