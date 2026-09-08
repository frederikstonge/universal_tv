import 'package:forui/forui.dart';

import '../video_controls_icons_theme.dart';

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
