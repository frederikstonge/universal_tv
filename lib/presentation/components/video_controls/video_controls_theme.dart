import 'video_controls_colors_theme.dart';
import 'video_controls_constraints_theme.dart';
import 'video_controls_font_sizing_theme.dart';
import 'video_controls_icon_sizing_theme.dart';
import 'video_controls_icons_theme.dart';
import 'video_controls_sizing_theme.dart';
import 'video_controls_spacing_theme.dart';
import 'video_controls_timing_theme.dart';
import 'video_controls_widgets_theme.dart';

class VideoControlsTheme {
  final VideoControlsWidgetsTheme widgets;
  final VideoControlsIconsTheme icons;
  final VideoControlsColorsTheme colors;
  final VideoControlsIconSizingTheme iconSizing;
  final VideoControlsSizingTheme sizing;
  final VideoControlsFontSizingTheme fontSizes;
  final VideoControlsSpacingTheme spacing;
  final VideoControlsConstraintsTheme constraints;
  final VideoControlsTimingTheme timing;

  const VideoControlsTheme({
    required this.icons,
    required this.widgets,
    this.colors = const VideoControlsColorsTheme(),
    this.iconSizing = const VideoControlsIconSizingTheme(),
    this.sizing = const VideoControlsSizingTheme(),
    this.fontSizes = const VideoControlsFontSizingTheme(),
    this.spacing = const VideoControlsSpacingTheme(),
    this.constraints = const VideoControlsConstraintsTheme(),
    this.timing = const VideoControlsTimingTheme(),
  });
}
