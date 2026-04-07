// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'video_controls_theme.dart';

class VideoControlsColorThemeMapper
    extends ClassMapperBase<VideoControlsColorTheme> {
  VideoControlsColorThemeMapper._();

  static VideoControlsColorThemeMapper? _instance;
  static VideoControlsColorThemeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = VideoControlsColorThemeMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'VideoControlsColorTheme';

  static Color _$overlayBackground(VideoControlsColorTheme v) =>
      v.overlayBackground;
  static const Field<VideoControlsColorTheme, Color> _f$overlayBackground =
      Field(
        'overlayBackground',
        _$overlayBackground,
        opt: true,
        def: const Color(0xBB000000),
        hook: ColorHook(),
      );
  static Color _$transparentColor(VideoControlsColorTheme v) =>
      v.transparentColor;
  static const Field<VideoControlsColorTheme, Color> _f$transparentColor =
      Field(
        'transparentColor',
        _$transparentColor,
        opt: true,
        def: const Color(0x00000000),
        hook: ColorHook(),
      );
  static Color _$foreground(VideoControlsColorTheme v) => v.foreground;
  static const Field<VideoControlsColorTheme, Color> _f$foreground = Field(
    'foreground',
    _$foreground,
    opt: true,
    def: const Color(0xFFFFFFFF),
    hook: ColorHook(),
  );
  static Color _$foregroundDim(VideoControlsColorTheme v) => v.foregroundDim;
  static const Field<VideoControlsColorTheme, Color> _f$foregroundDim = Field(
    'foregroundDim',
    _$foregroundDim,
    opt: true,
    def: const Color(0x99FFFFFF),
    hook: ColorHook(),
  );
  static Color _$liveBadge(VideoControlsColorTheme v) => v.liveBadge;
  static const Field<VideoControlsColorTheme, Color> _f$liveBadge = Field(
    'liveBadge',
    _$liveBadge,
    opt: true,
    def: const Color(0xFFEF4444),
    hook: ColorHook(),
  );
  static Color _$panelBackground(VideoControlsColorTheme v) =>
      v.panelBackground;
  static const Field<VideoControlsColorTheme, Color> _f$panelBackground = Field(
    'panelBackground',
    _$panelBackground,
    opt: true,
    def: const Color(0xDD000000),
    hook: ColorHook(),
  );
  static Color _$panelHandle(VideoControlsColorTheme v) => v.panelHandle;
  static const Field<VideoControlsColorTheme, Color> _f$panelHandle = Field(
    'panelHandle',
    _$panelHandle,
    opt: true,
    def: const Color(0x66FFFFFF),
    hook: ColorHook(),
  );

  @override
  final MappableFields<VideoControlsColorTheme> fields = const {
    #overlayBackground: _f$overlayBackground,
    #transparentColor: _f$transparentColor,
    #foreground: _f$foreground,
    #foregroundDim: _f$foregroundDim,
    #liveBadge: _f$liveBadge,
    #panelBackground: _f$panelBackground,
    #panelHandle: _f$panelHandle,
  };

  static VideoControlsColorTheme _instantiate(DecodingData data) {
    return VideoControlsColorTheme(
      overlayBackground: data.dec(_f$overlayBackground),
      transparentColor: data.dec(_f$transparentColor),
      foreground: data.dec(_f$foreground),
      foregroundDim: data.dec(_f$foregroundDim),
      liveBadge: data.dec(_f$liveBadge),
      panelBackground: data.dec(_f$panelBackground),
      panelHandle: data.dec(_f$panelHandle),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VideoControlsColorTheme fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoControlsColorTheme>(map);
  }

  static VideoControlsColorTheme fromJson(String json) {
    return ensureInitialized().decodeJson<VideoControlsColorTheme>(json);
  }
}

mixin VideoControlsColorThemeMappable {
  String toJson() {
    return VideoControlsColorThemeMapper.ensureInitialized()
        .encodeJson<VideoControlsColorTheme>(this as VideoControlsColorTheme);
  }

  Map<String, dynamic> toMap() {
    return VideoControlsColorThemeMapper.ensureInitialized()
        .encodeMap<VideoControlsColorTheme>(this as VideoControlsColorTheme);
  }

  VideoControlsColorThemeCopyWith<
    VideoControlsColorTheme,
    VideoControlsColorTheme,
    VideoControlsColorTheme
  >
  get copyWith =>
      _VideoControlsColorThemeCopyWithImpl<
        VideoControlsColorTheme,
        VideoControlsColorTheme
      >(this as VideoControlsColorTheme, $identity, $identity);
  @override
  String toString() {
    return VideoControlsColorThemeMapper.ensureInitialized().stringifyValue(
      this as VideoControlsColorTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    return VideoControlsColorThemeMapper.ensureInitialized().equalsValue(
      this as VideoControlsColorTheme,
      other,
    );
  }

  @override
  int get hashCode {
    return VideoControlsColorThemeMapper.ensureInitialized().hashValue(
      this as VideoControlsColorTheme,
    );
  }
}

extension VideoControlsColorThemeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoControlsColorTheme, $Out> {
  VideoControlsColorThemeCopyWith<$R, VideoControlsColorTheme, $Out>
  get $asVideoControlsColorTheme => $base.as(
    (v, t, t2) => _VideoControlsColorThemeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class VideoControlsColorThemeCopyWith<
  $R,
  $In extends VideoControlsColorTheme,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    Color? overlayBackground,
    Color? transparentColor,
    Color? foreground,
    Color? foregroundDim,
    Color? liveBadge,
    Color? panelBackground,
    Color? panelHandle,
  });
  VideoControlsColorThemeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VideoControlsColorThemeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoControlsColorTheme, $Out>
    implements
        VideoControlsColorThemeCopyWith<$R, VideoControlsColorTheme, $Out> {
  _VideoControlsColorThemeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoControlsColorTheme> $mapper =
      VideoControlsColorThemeMapper.ensureInitialized();
  @override
  $R call({
    Color? overlayBackground,
    Color? transparentColor,
    Color? foreground,
    Color? foregroundDim,
    Color? liveBadge,
    Color? panelBackground,
    Color? panelHandle,
  }) => $apply(
    FieldCopyWithData({
      if (overlayBackground != null) #overlayBackground: overlayBackground,
      if (transparentColor != null) #transparentColor: transparentColor,
      if (foreground != null) #foreground: foreground,
      if (foregroundDim != null) #foregroundDim: foregroundDim,
      if (liveBadge != null) #liveBadge: liveBadge,
      if (panelBackground != null) #panelBackground: panelBackground,
      if (panelHandle != null) #panelHandle: panelHandle,
    }),
  );
  @override
  VideoControlsColorTheme $make(CopyWithData data) => VideoControlsColorTheme(
    overlayBackground: data.get(
      #overlayBackground,
      or: $value.overlayBackground,
    ),
    transparentColor: data.get(#transparentColor, or: $value.transparentColor),
    foreground: data.get(#foreground, or: $value.foreground),
    foregroundDim: data.get(#foregroundDim, or: $value.foregroundDim),
    liveBadge: data.get(#liveBadge, or: $value.liveBadge),
    panelBackground: data.get(#panelBackground, or: $value.panelBackground),
    panelHandle: data.get(#panelHandle, or: $value.panelHandle),
  );

  @override
  VideoControlsColorThemeCopyWith<$R2, VideoControlsColorTheme, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VideoControlsColorThemeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VideoControlsIconSizeThemeMapper
    extends ClassMapperBase<VideoControlsIconSizeTheme> {
  VideoControlsIconSizeThemeMapper._();

  static VideoControlsIconSizeThemeMapper? _instance;
  static VideoControlsIconSizeThemeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = VideoControlsIconSizeThemeMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'VideoControlsIconSizeTheme';

  static double _$back(VideoControlsIconSizeTheme v) => v.back;
  static const Field<VideoControlsIconSizeTheme, double> _f$back = Field(
    'back',
    _$back,
    opt: true,
    def: 24,
  );
  static double _$playPause(VideoControlsIconSizeTheme v) => v.playPause;
  static const Field<VideoControlsIconSizeTheme, double> _f$playPause = Field(
    'playPause',
    _$playPause,
    opt: true,
    def: 48,
  );
  static double _$skip(VideoControlsIconSizeTheme v) => v.skip;
  static const Field<VideoControlsIconSizeTheme, double> _f$skip = Field(
    'skip',
    _$skip,
    opt: true,
    def: 32,
  );
  static double _$control(VideoControlsIconSizeTheme v) => v.control;
  static const Field<VideoControlsIconSizeTheme, double> _f$control = Field(
    'control',
    _$control,
    opt: true,
    def: 20,
  );
  static double _$subtitleCheck(VideoControlsIconSizeTheme v) =>
      v.subtitleCheck;
  static const Field<VideoControlsIconSizeTheme, double> _f$subtitleCheck =
      Field('subtitleCheck', _$subtitleCheck, opt: true, def: 16);
  static double _$spinner(VideoControlsIconSizeTheme v) => v.spinner;
  static const Field<VideoControlsIconSizeTheme, double> _f$spinner = Field(
    'spinner',
    _$spinner,
    opt: true,
    def: 48,
  );

  @override
  final MappableFields<VideoControlsIconSizeTheme> fields = const {
    #back: _f$back,
    #playPause: _f$playPause,
    #skip: _f$skip,
    #control: _f$control,
    #subtitleCheck: _f$subtitleCheck,
    #spinner: _f$spinner,
  };

  static VideoControlsIconSizeTheme _instantiate(DecodingData data) {
    return VideoControlsIconSizeTheme(
      back: data.dec(_f$back),
      playPause: data.dec(_f$playPause),
      skip: data.dec(_f$skip),
      control: data.dec(_f$control),
      subtitleCheck: data.dec(_f$subtitleCheck),
      spinner: data.dec(_f$spinner),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VideoControlsIconSizeTheme fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoControlsIconSizeTheme>(map);
  }

  static VideoControlsIconSizeTheme fromJson(String json) {
    return ensureInitialized().decodeJson<VideoControlsIconSizeTheme>(json);
  }
}

mixin VideoControlsIconSizeThemeMappable {
  String toJson() {
    return VideoControlsIconSizeThemeMapper.ensureInitialized()
        .encodeJson<VideoControlsIconSizeTheme>(
          this as VideoControlsIconSizeTheme,
        );
  }

  Map<String, dynamic> toMap() {
    return VideoControlsIconSizeThemeMapper.ensureInitialized()
        .encodeMap<VideoControlsIconSizeTheme>(
          this as VideoControlsIconSizeTheme,
        );
  }

  VideoControlsIconSizeThemeCopyWith<
    VideoControlsIconSizeTheme,
    VideoControlsIconSizeTheme,
    VideoControlsIconSizeTheme
  >
  get copyWith =>
      _VideoControlsIconSizeThemeCopyWithImpl<
        VideoControlsIconSizeTheme,
        VideoControlsIconSizeTheme
      >(this as VideoControlsIconSizeTheme, $identity, $identity);
  @override
  String toString() {
    return VideoControlsIconSizeThemeMapper.ensureInitialized().stringifyValue(
      this as VideoControlsIconSizeTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    return VideoControlsIconSizeThemeMapper.ensureInitialized().equalsValue(
      this as VideoControlsIconSizeTheme,
      other,
    );
  }

  @override
  int get hashCode {
    return VideoControlsIconSizeThemeMapper.ensureInitialized().hashValue(
      this as VideoControlsIconSizeTheme,
    );
  }
}

extension VideoControlsIconSizeThemeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoControlsIconSizeTheme, $Out> {
  VideoControlsIconSizeThemeCopyWith<$R, VideoControlsIconSizeTheme, $Out>
  get $asVideoControlsIconSizeTheme => $base.as(
    (v, t, t2) => _VideoControlsIconSizeThemeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class VideoControlsIconSizeThemeCopyWith<
  $R,
  $In extends VideoControlsIconSizeTheme,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    double? back,
    double? playPause,
    double? skip,
    double? control,
    double? subtitleCheck,
    double? spinner,
  });
  VideoControlsIconSizeThemeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VideoControlsIconSizeThemeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoControlsIconSizeTheme, $Out>
    implements
        VideoControlsIconSizeThemeCopyWith<
          $R,
          VideoControlsIconSizeTheme,
          $Out
        > {
  _VideoControlsIconSizeThemeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoControlsIconSizeTheme> $mapper =
      VideoControlsIconSizeThemeMapper.ensureInitialized();
  @override
  $R call({
    double? back,
    double? playPause,
    double? skip,
    double? control,
    double? subtitleCheck,
    double? spinner,
  }) => $apply(
    FieldCopyWithData({
      if (back != null) #back: back,
      if (playPause != null) #playPause: playPause,
      if (skip != null) #skip: skip,
      if (control != null) #control: control,
      if (subtitleCheck != null) #subtitleCheck: subtitleCheck,
      if (spinner != null) #spinner: spinner,
    }),
  );
  @override
  VideoControlsIconSizeTheme $make(CopyWithData data) =>
      VideoControlsIconSizeTheme(
        back: data.get(#back, or: $value.back),
        playPause: data.get(#playPause, or: $value.playPause),
        skip: data.get(#skip, or: $value.skip),
        control: data.get(#control, or: $value.control),
        subtitleCheck: data.get(#subtitleCheck, or: $value.subtitleCheck),
        spinner: data.get(#spinner, or: $value.spinner),
      );

  @override
  VideoControlsIconSizeThemeCopyWith<$R2, VideoControlsIconSizeTheme, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VideoControlsIconSizeThemeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VideoControlsSizeThemeMapper
    extends ClassMapperBase<VideoControlsSizeTheme> {
  VideoControlsSizeThemeMapper._();

  static VideoControlsSizeThemeMapper? _instance;
  static VideoControlsSizeThemeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VideoControlsSizeThemeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VideoControlsSizeTheme';

  static double _$logo(VideoControlsSizeTheme v) => v.logo;
  static const Field<VideoControlsSizeTheme, double> _f$logo = Field(
    'logo',
    _$logo,
    opt: true,
    def: 32,
  );
  static double _$logoBorderRadius(VideoControlsSizeTheme v) =>
      v.logoBorderRadius;
  static const Field<VideoControlsSizeTheme, double> _f$logoBorderRadius =
      Field('logoBorderRadius', _$logoBorderRadius, opt: true, def: 4);
  static double _$volumeSliderWidth(VideoControlsSizeTheme v) =>
      v.volumeSliderWidth;
  static const Field<VideoControlsSizeTheme, double> _f$volumeSliderWidth =
      Field('volumeSliderWidth', _$volumeSliderWidth, opt: true, def: 100);
  static double _$volumeThumbSize(VideoControlsSizeTheme v) =>
      v.volumeThumbSize;
  static const Field<VideoControlsSizeTheme, double> _f$volumeThumbSize = Field(
    'volumeThumbSize',
    _$volumeThumbSize,
    opt: true,
    def: 12,
  );
  static double _$panelHandleWidth(VideoControlsSizeTheme v) =>
      v.panelHandleWidth;
  static const Field<VideoControlsSizeTheme, double> _f$panelHandleWidth =
      Field('panelHandleWidth', _$panelHandleWidth, opt: true, def: 40);
  static double _$panelHandleHeight(VideoControlsSizeTheme v) =>
      v.panelHandleHeight;
  static const Field<VideoControlsSizeTheme, double> _f$panelHandleHeight =
      Field('panelHandleHeight', _$panelHandleHeight, opt: true, def: 4);
  static double _$panelHandleBorderRadius(VideoControlsSizeTheme v) =>
      v.panelHandleBorderRadius;
  static const Field<VideoControlsSizeTheme, double>
  _f$panelHandleBorderRadius = Field(
    'panelHandleBorderRadius',
    _$panelHandleBorderRadius,
    opt: true,
    def: 2,
  );
  static double _$panelBorderRadius(VideoControlsSizeTheme v) =>
      v.panelBorderRadius;
  static const Field<VideoControlsSizeTheme, double> _f$panelBorderRadius =
      Field('panelBorderRadius', _$panelBorderRadius, opt: true, def: 12);
  static double _$liveBadgeBorderRadius(VideoControlsSizeTheme v) =>
      v.liveBadgeBorderRadius;
  static const Field<VideoControlsSizeTheme, double> _f$liveBadgeBorderRadius =
      Field(
        'liveBadgeBorderRadius',
        _$liveBadgeBorderRadius,
        opt: true,
        def: 4,
      );
  static double _$panelHeightRatio(VideoControlsSizeTheme v) =>
      v.panelHeightRatio;
  static const Field<VideoControlsSizeTheme, double> _f$panelHeightRatio =
      Field('panelHeightRatio', _$panelHeightRatio, opt: true, def: 0.5);

  @override
  final MappableFields<VideoControlsSizeTheme> fields = const {
    #logo: _f$logo,
    #logoBorderRadius: _f$logoBorderRadius,
    #volumeSliderWidth: _f$volumeSliderWidth,
    #volumeThumbSize: _f$volumeThumbSize,
    #panelHandleWidth: _f$panelHandleWidth,
    #panelHandleHeight: _f$panelHandleHeight,
    #panelHandleBorderRadius: _f$panelHandleBorderRadius,
    #panelBorderRadius: _f$panelBorderRadius,
    #liveBadgeBorderRadius: _f$liveBadgeBorderRadius,
    #panelHeightRatio: _f$panelHeightRatio,
  };

  static VideoControlsSizeTheme _instantiate(DecodingData data) {
    return VideoControlsSizeTheme(
      logo: data.dec(_f$logo),
      logoBorderRadius: data.dec(_f$logoBorderRadius),
      volumeSliderWidth: data.dec(_f$volumeSliderWidth),
      volumeThumbSize: data.dec(_f$volumeThumbSize),
      panelHandleWidth: data.dec(_f$panelHandleWidth),
      panelHandleHeight: data.dec(_f$panelHandleHeight),
      panelHandleBorderRadius: data.dec(_f$panelHandleBorderRadius),
      panelBorderRadius: data.dec(_f$panelBorderRadius),
      liveBadgeBorderRadius: data.dec(_f$liveBadgeBorderRadius),
      panelHeightRatio: data.dec(_f$panelHeightRatio),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VideoControlsSizeTheme fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoControlsSizeTheme>(map);
  }

  static VideoControlsSizeTheme fromJson(String json) {
    return ensureInitialized().decodeJson<VideoControlsSizeTheme>(json);
  }
}

mixin VideoControlsSizeThemeMappable {
  String toJson() {
    return VideoControlsSizeThemeMapper.ensureInitialized()
        .encodeJson<VideoControlsSizeTheme>(this as VideoControlsSizeTheme);
  }

  Map<String, dynamic> toMap() {
    return VideoControlsSizeThemeMapper.ensureInitialized()
        .encodeMap<VideoControlsSizeTheme>(this as VideoControlsSizeTheme);
  }

  VideoControlsSizeThemeCopyWith<
    VideoControlsSizeTheme,
    VideoControlsSizeTheme,
    VideoControlsSizeTheme
  >
  get copyWith =>
      _VideoControlsSizeThemeCopyWithImpl<
        VideoControlsSizeTheme,
        VideoControlsSizeTheme
      >(this as VideoControlsSizeTheme, $identity, $identity);
  @override
  String toString() {
    return VideoControlsSizeThemeMapper.ensureInitialized().stringifyValue(
      this as VideoControlsSizeTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    return VideoControlsSizeThemeMapper.ensureInitialized().equalsValue(
      this as VideoControlsSizeTheme,
      other,
    );
  }

  @override
  int get hashCode {
    return VideoControlsSizeThemeMapper.ensureInitialized().hashValue(
      this as VideoControlsSizeTheme,
    );
  }
}

extension VideoControlsSizeThemeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoControlsSizeTheme, $Out> {
  VideoControlsSizeThemeCopyWith<$R, VideoControlsSizeTheme, $Out>
  get $asVideoControlsSizeTheme => $base.as(
    (v, t, t2) => _VideoControlsSizeThemeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class VideoControlsSizeThemeCopyWith<
  $R,
  $In extends VideoControlsSizeTheme,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    double? logo,
    double? logoBorderRadius,
    double? volumeSliderWidth,
    double? volumeThumbSize,
    double? panelHandleWidth,
    double? panelHandleHeight,
    double? panelHandleBorderRadius,
    double? panelBorderRadius,
    double? liveBadgeBorderRadius,
    double? panelHeightRatio,
  });
  VideoControlsSizeThemeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VideoControlsSizeThemeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoControlsSizeTheme, $Out>
    implements
        VideoControlsSizeThemeCopyWith<$R, VideoControlsSizeTheme, $Out> {
  _VideoControlsSizeThemeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoControlsSizeTheme> $mapper =
      VideoControlsSizeThemeMapper.ensureInitialized();
  @override
  $R call({
    double? logo,
    double? logoBorderRadius,
    double? volumeSliderWidth,
    double? volumeThumbSize,
    double? panelHandleWidth,
    double? panelHandleHeight,
    double? panelHandleBorderRadius,
    double? panelBorderRadius,
    double? liveBadgeBorderRadius,
    double? panelHeightRatio,
  }) => $apply(
    FieldCopyWithData({
      if (logo != null) #logo: logo,
      if (logoBorderRadius != null) #logoBorderRadius: logoBorderRadius,
      if (volumeSliderWidth != null) #volumeSliderWidth: volumeSliderWidth,
      if (volumeThumbSize != null) #volumeThumbSize: volumeThumbSize,
      if (panelHandleWidth != null) #panelHandleWidth: panelHandleWidth,
      if (panelHandleHeight != null) #panelHandleHeight: panelHandleHeight,
      if (panelHandleBorderRadius != null)
        #panelHandleBorderRadius: panelHandleBorderRadius,
      if (panelBorderRadius != null) #panelBorderRadius: panelBorderRadius,
      if (liveBadgeBorderRadius != null)
        #liveBadgeBorderRadius: liveBadgeBorderRadius,
      if (panelHeightRatio != null) #panelHeightRatio: panelHeightRatio,
    }),
  );
  @override
  VideoControlsSizeTheme $make(CopyWithData data) => VideoControlsSizeTheme(
    logo: data.get(#logo, or: $value.logo),
    logoBorderRadius: data.get(#logoBorderRadius, or: $value.logoBorderRadius),
    volumeSliderWidth: data.get(
      #volumeSliderWidth,
      or: $value.volumeSliderWidth,
    ),
    volumeThumbSize: data.get(#volumeThumbSize, or: $value.volumeThumbSize),
    panelHandleWidth: data.get(#panelHandleWidth, or: $value.panelHandleWidth),
    panelHandleHeight: data.get(
      #panelHandleHeight,
      or: $value.panelHandleHeight,
    ),
    panelHandleBorderRadius: data.get(
      #panelHandleBorderRadius,
      or: $value.panelHandleBorderRadius,
    ),
    panelBorderRadius: data.get(
      #panelBorderRadius,
      or: $value.panelBorderRadius,
    ),
    liveBadgeBorderRadius: data.get(
      #liveBadgeBorderRadius,
      or: $value.liveBadgeBorderRadius,
    ),
    panelHeightRatio: data.get(#panelHeightRatio, or: $value.panelHeightRatio),
  );

  @override
  VideoControlsSizeThemeCopyWith<$R2, VideoControlsSizeTheme, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VideoControlsSizeThemeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VideoControlsFontSizeThemeMapper
    extends ClassMapperBase<VideoControlsFontSizeTheme> {
  VideoControlsFontSizeThemeMapper._();

  static VideoControlsFontSizeThemeMapper? _instance;
  static VideoControlsFontSizeThemeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = VideoControlsFontSizeThemeMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'VideoControlsFontSizeTheme';

  static double _$title(VideoControlsFontSizeTheme v) => v.title;
  static const Field<VideoControlsFontSizeTheme, double> _f$title = Field(
    'title',
    _$title,
    opt: true,
    def: 16,
  );
  static double _$time(VideoControlsFontSizeTheme v) => v.time;
  static const Field<VideoControlsFontSizeTheme, double> _f$time = Field(
    'time',
    _$time,
    opt: true,
    def: 12,
  );
  static double _$live(VideoControlsFontSizeTheme v) => v.live;
  static const Field<VideoControlsFontSizeTheme, double> _f$live = Field(
    'live',
    _$live,
    opt: true,
    def: 12,
  );
  static double _$subtitle(VideoControlsFontSizeTheme v) => v.subtitle;
  static const Field<VideoControlsFontSizeTheme, double> _f$subtitle = Field(
    'subtitle',
    _$subtitle,
    opt: true,
    def: 13,
  );

  @override
  final MappableFields<VideoControlsFontSizeTheme> fields = const {
    #title: _f$title,
    #time: _f$time,
    #live: _f$live,
    #subtitle: _f$subtitle,
  };

  static VideoControlsFontSizeTheme _instantiate(DecodingData data) {
    return VideoControlsFontSizeTheme(
      title: data.dec(_f$title),
      time: data.dec(_f$time),
      live: data.dec(_f$live),
      subtitle: data.dec(_f$subtitle),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VideoControlsFontSizeTheme fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoControlsFontSizeTheme>(map);
  }

  static VideoControlsFontSizeTheme fromJson(String json) {
    return ensureInitialized().decodeJson<VideoControlsFontSizeTheme>(json);
  }
}

mixin VideoControlsFontSizeThemeMappable {
  String toJson() {
    return VideoControlsFontSizeThemeMapper.ensureInitialized()
        .encodeJson<VideoControlsFontSizeTheme>(
          this as VideoControlsFontSizeTheme,
        );
  }

  Map<String, dynamic> toMap() {
    return VideoControlsFontSizeThemeMapper.ensureInitialized()
        .encodeMap<VideoControlsFontSizeTheme>(
          this as VideoControlsFontSizeTheme,
        );
  }

  VideoControlsFontSizeThemeCopyWith<
    VideoControlsFontSizeTheme,
    VideoControlsFontSizeTheme,
    VideoControlsFontSizeTheme
  >
  get copyWith =>
      _VideoControlsFontSizeThemeCopyWithImpl<
        VideoControlsFontSizeTheme,
        VideoControlsFontSizeTheme
      >(this as VideoControlsFontSizeTheme, $identity, $identity);
  @override
  String toString() {
    return VideoControlsFontSizeThemeMapper.ensureInitialized().stringifyValue(
      this as VideoControlsFontSizeTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    return VideoControlsFontSizeThemeMapper.ensureInitialized().equalsValue(
      this as VideoControlsFontSizeTheme,
      other,
    );
  }

  @override
  int get hashCode {
    return VideoControlsFontSizeThemeMapper.ensureInitialized().hashValue(
      this as VideoControlsFontSizeTheme,
    );
  }
}

extension VideoControlsFontSizeThemeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoControlsFontSizeTheme, $Out> {
  VideoControlsFontSizeThemeCopyWith<$R, VideoControlsFontSizeTheme, $Out>
  get $asVideoControlsFontSizeTheme => $base.as(
    (v, t, t2) => _VideoControlsFontSizeThemeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class VideoControlsFontSizeThemeCopyWith<
  $R,
  $In extends VideoControlsFontSizeTheme,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? title, double? time, double? live, double? subtitle});
  VideoControlsFontSizeThemeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VideoControlsFontSizeThemeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoControlsFontSizeTheme, $Out>
    implements
        VideoControlsFontSizeThemeCopyWith<
          $R,
          VideoControlsFontSizeTheme,
          $Out
        > {
  _VideoControlsFontSizeThemeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoControlsFontSizeTheme> $mapper =
      VideoControlsFontSizeThemeMapper.ensureInitialized();
  @override
  $R call({double? title, double? time, double? live, double? subtitle}) =>
      $apply(
        FieldCopyWithData({
          if (title != null) #title: title,
          if (time != null) #time: time,
          if (live != null) #live: live,
          if (subtitle != null) #subtitle: subtitle,
        }),
      );
  @override
  VideoControlsFontSizeTheme $make(CopyWithData data) =>
      VideoControlsFontSizeTheme(
        title: data.get(#title, or: $value.title),
        time: data.get(#time, or: $value.time),
        live: data.get(#live, or: $value.live),
        subtitle: data.get(#subtitle, or: $value.subtitle),
      );

  @override
  VideoControlsFontSizeThemeCopyWith<$R2, VideoControlsFontSizeTheme, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VideoControlsFontSizeThemeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VideoControlsSpacingThemeMapper
    extends ClassMapperBase<VideoControlsSpacingTheme> {
  VideoControlsSpacingThemeMapper._();

  static VideoControlsSpacingThemeMapper? _instance;
  static VideoControlsSpacingThemeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = VideoControlsSpacingThemeMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'VideoControlsSpacingTheme';

  static double _$topBarInset(VideoControlsSpacingTheme v) => v.topBarInset;
  static const Field<VideoControlsSpacingTheme, double> _f$topBarInset = Field(
    'topBarInset',
    _$topBarInset,
    opt: true,
    def: 8,
  );
  static double _$bottomBarInset(VideoControlsSpacingTheme v) =>
      v.bottomBarInset;
  static const Field<VideoControlsSpacingTheme, double> _f$bottomBarInset =
      Field('bottomBarInset', _$bottomBarInset, opt: true, def: 16);
  static double _$controlsGap(VideoControlsSpacingTheme v) => v.controlsGap;
  static const Field<VideoControlsSpacingTheme, double> _f$controlsGap = Field(
    'controlsGap',
    _$controlsGap,
    opt: true,
    def: 8,
  );
  static double _$skipButtonGap(VideoControlsSpacingTheme v) => v.skipButtonGap;
  static const Field<VideoControlsSpacingTheme, double> _f$skipButtonGap =
      Field('skipButtonGap', _$skipButtonGap, opt: true, def: 24);
  static double _$panelHandleVertical(VideoControlsSpacingTheme v) =>
      v.panelHandleVertical;
  static const Field<VideoControlsSpacingTheme, double> _f$panelHandleVertical =
      Field('panelHandleVertical', _$panelHandleVertical, opt: true, def: 8);
  static double _$subtitleItemVertical(VideoControlsSpacingTheme v) =>
      v.subtitleItemVertical;
  static const Field<VideoControlsSpacingTheme, double>
  _f$subtitleItemVertical = Field(
    'subtitleItemVertical',
    _$subtitleItemVertical,
    opt: true,
    def: 6,
  );
  static double _$subtitleItemHorizontal(VideoControlsSpacingTheme v) =>
      v.subtitleItemHorizontal;
  static const Field<VideoControlsSpacingTheme, double>
  _f$subtitleItemHorizontal = Field(
    'subtitleItemHorizontal',
    _$subtitleItemHorizontal,
    opt: true,
    def: 12,
  );
  static double _$liveBadgeHorizontal(VideoControlsSpacingTheme v) =>
      v.liveBadgeHorizontal;
  static const Field<VideoControlsSpacingTheme, double> _f$liveBadgeHorizontal =
      Field('liveBadgeHorizontal', _$liveBadgeHorizontal, opt: true, def: 8);
  static double _$liveBadgeVertical(VideoControlsSpacingTheme v) =>
      v.liveBadgeVertical;
  static const Field<VideoControlsSpacingTheme, double> _f$liveBadgeVertical =
      Field('liveBadgeVertical', _$liveBadgeVertical, opt: true, def: 2);
  static double _$subtitleListVertical(VideoControlsSpacingTheme v) =>
      v.subtitleListVertical;
  static const Field<VideoControlsSpacingTheme, double>
  _f$subtitleListVertical = Field(
    'subtitleListVertical',
    _$subtitleListVertical,
    opt: true,
    def: 4,
  );
  static double _$volumeSliderHorizontal(VideoControlsSpacingTheme v) =>
      v.volumeSliderHorizontal;
  static const Field<VideoControlsSpacingTheme, double>
  _f$volumeSliderHorizontal = Field(
    'volumeSliderHorizontal',
    _$volumeSliderHorizontal,
    opt: true,
    def: 6,
  );

  @override
  final MappableFields<VideoControlsSpacingTheme> fields = const {
    #topBarInset: _f$topBarInset,
    #bottomBarInset: _f$bottomBarInset,
    #controlsGap: _f$controlsGap,
    #skipButtonGap: _f$skipButtonGap,
    #panelHandleVertical: _f$panelHandleVertical,
    #subtitleItemVertical: _f$subtitleItemVertical,
    #subtitleItemHorizontal: _f$subtitleItemHorizontal,
    #liveBadgeHorizontal: _f$liveBadgeHorizontal,
    #liveBadgeVertical: _f$liveBadgeVertical,
    #subtitleListVertical: _f$subtitleListVertical,
    #volumeSliderHorizontal: _f$volumeSliderHorizontal,
  };

  static VideoControlsSpacingTheme _instantiate(DecodingData data) {
    return VideoControlsSpacingTheme(
      topBarInset: data.dec(_f$topBarInset),
      bottomBarInset: data.dec(_f$bottomBarInset),
      controlsGap: data.dec(_f$controlsGap),
      skipButtonGap: data.dec(_f$skipButtonGap),
      panelHandleVertical: data.dec(_f$panelHandleVertical),
      subtitleItemVertical: data.dec(_f$subtitleItemVertical),
      subtitleItemHorizontal: data.dec(_f$subtitleItemHorizontal),
      liveBadgeHorizontal: data.dec(_f$liveBadgeHorizontal),
      liveBadgeVertical: data.dec(_f$liveBadgeVertical),
      subtitleListVertical: data.dec(_f$subtitleListVertical),
      volumeSliderHorizontal: data.dec(_f$volumeSliderHorizontal),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VideoControlsSpacingTheme fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoControlsSpacingTheme>(map);
  }

  static VideoControlsSpacingTheme fromJson(String json) {
    return ensureInitialized().decodeJson<VideoControlsSpacingTheme>(json);
  }
}

mixin VideoControlsSpacingThemeMappable {
  String toJson() {
    return VideoControlsSpacingThemeMapper.ensureInitialized()
        .encodeJson<VideoControlsSpacingTheme>(
          this as VideoControlsSpacingTheme,
        );
  }

  Map<String, dynamic> toMap() {
    return VideoControlsSpacingThemeMapper.ensureInitialized()
        .encodeMap<VideoControlsSpacingTheme>(
          this as VideoControlsSpacingTheme,
        );
  }

  VideoControlsSpacingThemeCopyWith<
    VideoControlsSpacingTheme,
    VideoControlsSpacingTheme,
    VideoControlsSpacingTheme
  >
  get copyWith =>
      _VideoControlsSpacingThemeCopyWithImpl<
        VideoControlsSpacingTheme,
        VideoControlsSpacingTheme
      >(this as VideoControlsSpacingTheme, $identity, $identity);
  @override
  String toString() {
    return VideoControlsSpacingThemeMapper.ensureInitialized().stringifyValue(
      this as VideoControlsSpacingTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    return VideoControlsSpacingThemeMapper.ensureInitialized().equalsValue(
      this as VideoControlsSpacingTheme,
      other,
    );
  }

  @override
  int get hashCode {
    return VideoControlsSpacingThemeMapper.ensureInitialized().hashValue(
      this as VideoControlsSpacingTheme,
    );
  }
}

extension VideoControlsSpacingThemeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoControlsSpacingTheme, $Out> {
  VideoControlsSpacingThemeCopyWith<$R, VideoControlsSpacingTheme, $Out>
  get $asVideoControlsSpacingTheme => $base.as(
    (v, t, t2) => _VideoControlsSpacingThemeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class VideoControlsSpacingThemeCopyWith<
  $R,
  $In extends VideoControlsSpacingTheme,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    double? topBarInset,
    double? bottomBarInset,
    double? controlsGap,
    double? skipButtonGap,
    double? panelHandleVertical,
    double? subtitleItemVertical,
    double? subtitleItemHorizontal,
    double? liveBadgeHorizontal,
    double? liveBadgeVertical,
    double? subtitleListVertical,
    double? volumeSliderHorizontal,
  });
  VideoControlsSpacingThemeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VideoControlsSpacingThemeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoControlsSpacingTheme, $Out>
    implements
        VideoControlsSpacingThemeCopyWith<$R, VideoControlsSpacingTheme, $Out> {
  _VideoControlsSpacingThemeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoControlsSpacingTheme> $mapper =
      VideoControlsSpacingThemeMapper.ensureInitialized();
  @override
  $R call({
    double? topBarInset,
    double? bottomBarInset,
    double? controlsGap,
    double? skipButtonGap,
    double? panelHandleVertical,
    double? subtitleItemVertical,
    double? subtitleItemHorizontal,
    double? liveBadgeHorizontal,
    double? liveBadgeVertical,
    double? subtitleListVertical,
    double? volumeSliderHorizontal,
  }) => $apply(
    FieldCopyWithData({
      if (topBarInset != null) #topBarInset: topBarInset,
      if (bottomBarInset != null) #bottomBarInset: bottomBarInset,
      if (controlsGap != null) #controlsGap: controlsGap,
      if (skipButtonGap != null) #skipButtonGap: skipButtonGap,
      if (panelHandleVertical != null)
        #panelHandleVertical: panelHandleVertical,
      if (subtitleItemVertical != null)
        #subtitleItemVertical: subtitleItemVertical,
      if (subtitleItemHorizontal != null)
        #subtitleItemHorizontal: subtitleItemHorizontal,
      if (liveBadgeHorizontal != null)
        #liveBadgeHorizontal: liveBadgeHorizontal,
      if (liveBadgeVertical != null) #liveBadgeVertical: liveBadgeVertical,
      if (subtitleListVertical != null)
        #subtitleListVertical: subtitleListVertical,
      if (volumeSliderHorizontal != null)
        #volumeSliderHorizontal: volumeSliderHorizontal,
    }),
  );
  @override
  VideoControlsSpacingTheme $make(CopyWithData data) =>
      VideoControlsSpacingTheme(
        topBarInset: data.get(#topBarInset, or: $value.topBarInset),
        bottomBarInset: data.get(#bottomBarInset, or: $value.bottomBarInset),
        controlsGap: data.get(#controlsGap, or: $value.controlsGap),
        skipButtonGap: data.get(#skipButtonGap, or: $value.skipButtonGap),
        panelHandleVertical: data.get(
          #panelHandleVertical,
          or: $value.panelHandleVertical,
        ),
        subtitleItemVertical: data.get(
          #subtitleItemVertical,
          or: $value.subtitleItemVertical,
        ),
        subtitleItemHorizontal: data.get(
          #subtitleItemHorizontal,
          or: $value.subtitleItemHorizontal,
        ),
        liveBadgeHorizontal: data.get(
          #liveBadgeHorizontal,
          or: $value.liveBadgeHorizontal,
        ),
        liveBadgeVertical: data.get(
          #liveBadgeVertical,
          or: $value.liveBadgeVertical,
        ),
        subtitleListVertical: data.get(
          #subtitleListVertical,
          or: $value.subtitleListVertical,
        ),
        volumeSliderHorizontal: data.get(
          #volumeSliderHorizontal,
          or: $value.volumeSliderHorizontal,
        ),
      );

  @override
  VideoControlsSpacingThemeCopyWith<$R2, VideoControlsSpacingTheme, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VideoControlsSpacingThemeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VideoControlsConstraintsThemeMapper
    extends ClassMapperBase<VideoControlsConstraintsTheme> {
  VideoControlsConstraintsThemeMapper._();

  static VideoControlsConstraintsThemeMapper? _instance;
  static VideoControlsConstraintsThemeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = VideoControlsConstraintsThemeMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'VideoControlsConstraintsTheme';

  static double _$subtitlePopoverMaxWidth(VideoControlsConstraintsTheme v) =>
      v.subtitlePopoverMaxWidth;
  static const Field<VideoControlsConstraintsTheme, double>
  _f$subtitlePopoverMaxWidth = Field(
    'subtitlePopoverMaxWidth',
    _$subtitlePopoverMaxWidth,
    opt: true,
    def: 200,
  );
  static double _$subtitlePopoverMaxHeight(VideoControlsConstraintsTheme v) =>
      v.subtitlePopoverMaxHeight;
  static const Field<VideoControlsConstraintsTheme, double>
  _f$subtitlePopoverMaxHeight = Field(
    'subtitlePopoverMaxHeight',
    _$subtitlePopoverMaxHeight,
    opt: true,
    def: 300,
  );
  static double _$swipeVelocityThreshold(VideoControlsConstraintsTheme v) =>
      v.swipeVelocityThreshold;
  static const Field<VideoControlsConstraintsTheme, double>
  _f$swipeVelocityThreshold = Field(
    'swipeVelocityThreshold',
    _$swipeVelocityThreshold,
    opt: true,
    def: 100,
  );

  @override
  final MappableFields<VideoControlsConstraintsTheme> fields = const {
    #subtitlePopoverMaxWidth: _f$subtitlePopoverMaxWidth,
    #subtitlePopoverMaxHeight: _f$subtitlePopoverMaxHeight,
    #swipeVelocityThreshold: _f$swipeVelocityThreshold,
  };

  static VideoControlsConstraintsTheme _instantiate(DecodingData data) {
    return VideoControlsConstraintsTheme(
      subtitlePopoverMaxWidth: data.dec(_f$subtitlePopoverMaxWidth),
      subtitlePopoverMaxHeight: data.dec(_f$subtitlePopoverMaxHeight),
      swipeVelocityThreshold: data.dec(_f$swipeVelocityThreshold),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VideoControlsConstraintsTheme fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoControlsConstraintsTheme>(map);
  }

  static VideoControlsConstraintsTheme fromJson(String json) {
    return ensureInitialized().decodeJson<VideoControlsConstraintsTheme>(json);
  }
}

mixin VideoControlsConstraintsThemeMappable {
  String toJson() {
    return VideoControlsConstraintsThemeMapper.ensureInitialized()
        .encodeJson<VideoControlsConstraintsTheme>(
          this as VideoControlsConstraintsTheme,
        );
  }

  Map<String, dynamic> toMap() {
    return VideoControlsConstraintsThemeMapper.ensureInitialized()
        .encodeMap<VideoControlsConstraintsTheme>(
          this as VideoControlsConstraintsTheme,
        );
  }

  VideoControlsConstraintsThemeCopyWith<
    VideoControlsConstraintsTheme,
    VideoControlsConstraintsTheme,
    VideoControlsConstraintsTheme
  >
  get copyWith =>
      _VideoControlsConstraintsThemeCopyWithImpl<
        VideoControlsConstraintsTheme,
        VideoControlsConstraintsTheme
      >(this as VideoControlsConstraintsTheme, $identity, $identity);
  @override
  String toString() {
    return VideoControlsConstraintsThemeMapper.ensureInitialized()
        .stringifyValue(this as VideoControlsConstraintsTheme);
  }

  @override
  bool operator ==(Object other) {
    return VideoControlsConstraintsThemeMapper.ensureInitialized().equalsValue(
      this as VideoControlsConstraintsTheme,
      other,
    );
  }

  @override
  int get hashCode {
    return VideoControlsConstraintsThemeMapper.ensureInitialized().hashValue(
      this as VideoControlsConstraintsTheme,
    );
  }
}

extension VideoControlsConstraintsThemeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoControlsConstraintsTheme, $Out> {
  VideoControlsConstraintsThemeCopyWith<$R, VideoControlsConstraintsTheme, $Out>
  get $asVideoControlsConstraintsTheme => $base.as(
    (v, t, t2) =>
        _VideoControlsConstraintsThemeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class VideoControlsConstraintsThemeCopyWith<
  $R,
  $In extends VideoControlsConstraintsTheme,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    double? subtitlePopoverMaxWidth,
    double? subtitlePopoverMaxHeight,
    double? swipeVelocityThreshold,
  });
  VideoControlsConstraintsThemeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VideoControlsConstraintsThemeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoControlsConstraintsTheme, $Out>
    implements
        VideoControlsConstraintsThemeCopyWith<
          $R,
          VideoControlsConstraintsTheme,
          $Out
        > {
  _VideoControlsConstraintsThemeCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<VideoControlsConstraintsTheme> $mapper =
      VideoControlsConstraintsThemeMapper.ensureInitialized();
  @override
  $R call({
    double? subtitlePopoverMaxWidth,
    double? subtitlePopoverMaxHeight,
    double? swipeVelocityThreshold,
  }) => $apply(
    FieldCopyWithData({
      if (subtitlePopoverMaxWidth != null)
        #subtitlePopoverMaxWidth: subtitlePopoverMaxWidth,
      if (subtitlePopoverMaxHeight != null)
        #subtitlePopoverMaxHeight: subtitlePopoverMaxHeight,
      if (swipeVelocityThreshold != null)
        #swipeVelocityThreshold: swipeVelocityThreshold,
    }),
  );
  @override
  VideoControlsConstraintsTheme $make(CopyWithData data) =>
      VideoControlsConstraintsTheme(
        subtitlePopoverMaxWidth: data.get(
          #subtitlePopoverMaxWidth,
          or: $value.subtitlePopoverMaxWidth,
        ),
        subtitlePopoverMaxHeight: data.get(
          #subtitlePopoverMaxHeight,
          or: $value.subtitlePopoverMaxHeight,
        ),
        swipeVelocityThreshold: data.get(
          #swipeVelocityThreshold,
          or: $value.swipeVelocityThreshold,
        ),
      );

  @override
  VideoControlsConstraintsThemeCopyWith<
    $R2,
    VideoControlsConstraintsTheme,
    $Out2
  >
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VideoControlsConstraintsThemeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VideoControlsTimingThemeMapper
    extends ClassMapperBase<VideoControlsTimingTheme> {
  VideoControlsTimingThemeMapper._();

  static VideoControlsTimingThemeMapper? _instance;
  static VideoControlsTimingThemeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = VideoControlsTimingThemeMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'VideoControlsTimingTheme';

  static int _$hideDelay(VideoControlsTimingTheme v) => v.hideDelay;
  static const Field<VideoControlsTimingTheme, int> _f$hideDelay = Field(
    'hideDelay',
    _$hideDelay,
    opt: true,
    def: 3000,
  );
  static int _$animationDuration(VideoControlsTimingTheme v) =>
      v.animationDuration;
  static const Field<VideoControlsTimingTheme, int> _f$animationDuration =
      Field('animationDuration', _$animationDuration, opt: true, def: 300);
  static int _$panelAnimationDuration(VideoControlsTimingTheme v) =>
      v.panelAnimationDuration;
  static const Field<VideoControlsTimingTheme, int> _f$panelAnimationDuration =
      Field(
        'panelAnimationDuration',
        _$panelAnimationDuration,
        opt: true,
        def: 300,
      );

  @override
  final MappableFields<VideoControlsTimingTheme> fields = const {
    #hideDelay: _f$hideDelay,
    #animationDuration: _f$animationDuration,
    #panelAnimationDuration: _f$panelAnimationDuration,
  };

  static VideoControlsTimingTheme _instantiate(DecodingData data) {
    return VideoControlsTimingTheme(
      hideDelay: data.dec(_f$hideDelay),
      animationDuration: data.dec(_f$animationDuration),
      panelAnimationDuration: data.dec(_f$panelAnimationDuration),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VideoControlsTimingTheme fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoControlsTimingTheme>(map);
  }

  static VideoControlsTimingTheme fromJson(String json) {
    return ensureInitialized().decodeJson<VideoControlsTimingTheme>(json);
  }
}

mixin VideoControlsTimingThemeMappable {
  String toJson() {
    return VideoControlsTimingThemeMapper.ensureInitialized()
        .encodeJson<VideoControlsTimingTheme>(this as VideoControlsTimingTheme);
  }

  Map<String, dynamic> toMap() {
    return VideoControlsTimingThemeMapper.ensureInitialized()
        .encodeMap<VideoControlsTimingTheme>(this as VideoControlsTimingTheme);
  }

  VideoControlsTimingThemeCopyWith<
    VideoControlsTimingTheme,
    VideoControlsTimingTheme,
    VideoControlsTimingTheme
  >
  get copyWith =>
      _VideoControlsTimingThemeCopyWithImpl<
        VideoControlsTimingTheme,
        VideoControlsTimingTheme
      >(this as VideoControlsTimingTheme, $identity, $identity);
  @override
  String toString() {
    return VideoControlsTimingThemeMapper.ensureInitialized().stringifyValue(
      this as VideoControlsTimingTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    return VideoControlsTimingThemeMapper.ensureInitialized().equalsValue(
      this as VideoControlsTimingTheme,
      other,
    );
  }

  @override
  int get hashCode {
    return VideoControlsTimingThemeMapper.ensureInitialized().hashValue(
      this as VideoControlsTimingTheme,
    );
  }
}

extension VideoControlsTimingThemeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoControlsTimingTheme, $Out> {
  VideoControlsTimingThemeCopyWith<$R, VideoControlsTimingTheme, $Out>
  get $asVideoControlsTimingTheme => $base.as(
    (v, t, t2) => _VideoControlsTimingThemeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class VideoControlsTimingThemeCopyWith<
  $R,
  $In extends VideoControlsTimingTheme,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? hideDelay,
    int? animationDuration,
    int? panelAnimationDuration,
  });
  VideoControlsTimingThemeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VideoControlsTimingThemeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoControlsTimingTheme, $Out>
    implements
        VideoControlsTimingThemeCopyWith<$R, VideoControlsTimingTheme, $Out> {
  _VideoControlsTimingThemeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoControlsTimingTheme> $mapper =
      VideoControlsTimingThemeMapper.ensureInitialized();
  @override
  $R call({
    int? hideDelay,
    int? animationDuration,
    int? panelAnimationDuration,
  }) => $apply(
    FieldCopyWithData({
      if (hideDelay != null) #hideDelay: hideDelay,
      if (animationDuration != null) #animationDuration: animationDuration,
      if (panelAnimationDuration != null)
        #panelAnimationDuration: panelAnimationDuration,
    }),
  );
  @override
  VideoControlsTimingTheme $make(CopyWithData data) => VideoControlsTimingTheme(
    hideDelay: data.get(#hideDelay, or: $value.hideDelay),
    animationDuration: data.get(
      #animationDuration,
      or: $value.animationDuration,
    ),
    panelAnimationDuration: data.get(
      #panelAnimationDuration,
      or: $value.panelAnimationDuration,
    ),
  );

  @override
  VideoControlsTimingThemeCopyWith<$R2, VideoControlsTimingTheme, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VideoControlsTimingThemeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VideoControlsThemeMapper extends ClassMapperBase<VideoControlsTheme> {
  VideoControlsThemeMapper._();

  static VideoControlsThemeMapper? _instance;
  static VideoControlsThemeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VideoControlsThemeMapper._());
      VideoControlsColorThemeMapper.ensureInitialized();
      VideoControlsIconSizeThemeMapper.ensureInitialized();
      VideoControlsSizeThemeMapper.ensureInitialized();
      VideoControlsFontSizeThemeMapper.ensureInitialized();
      VideoControlsSpacingThemeMapper.ensureInitialized();
      VideoControlsConstraintsThemeMapper.ensureInitialized();
      VideoControlsTimingThemeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VideoControlsTheme';

  static VideoControlsColorTheme _$colors(VideoControlsTheme v) => v.colors;
  static const Field<VideoControlsTheme, VideoControlsColorTheme> _f$colors =
      Field(
        'colors',
        _$colors,
        opt: true,
        def: const VideoControlsColorTheme(),
      );
  static VideoControlsIconSizeTheme _$iconSizes(VideoControlsTheme v) =>
      v.iconSizes;
  static const Field<VideoControlsTheme, VideoControlsIconSizeTheme>
  _f$iconSizes = Field(
    'iconSizes',
    _$iconSizes,
    opt: true,
    def: const VideoControlsIconSizeTheme(),
  );
  static VideoControlsSizeTheme _$sizes(VideoControlsTheme v) => v.sizes;
  static const Field<VideoControlsTheme, VideoControlsSizeTheme> _f$sizes =
      Field('sizes', _$sizes, opt: true, def: const VideoControlsSizeTheme());
  static VideoControlsFontSizeTheme _$fontSizes(VideoControlsTheme v) =>
      v.fontSizes;
  static const Field<VideoControlsTheme, VideoControlsFontSizeTheme>
  _f$fontSizes = Field(
    'fontSizes',
    _$fontSizes,
    opt: true,
    def: const VideoControlsFontSizeTheme(),
  );
  static VideoControlsSpacingTheme _$spacing(VideoControlsTheme v) => v.spacing;
  static const Field<VideoControlsTheme, VideoControlsSpacingTheme> _f$spacing =
      Field(
        'spacing',
        _$spacing,
        opt: true,
        def: const VideoControlsSpacingTheme(),
      );
  static VideoControlsConstraintsTheme _$constraints(VideoControlsTheme v) =>
      v.constraints;
  static const Field<VideoControlsTheme, VideoControlsConstraintsTheme>
  _f$constraints = Field(
    'constraints',
    _$constraints,
    opt: true,
    def: const VideoControlsConstraintsTheme(),
  );
  static VideoControlsTimingTheme _$timing(VideoControlsTheme v) => v.timing;
  static const Field<VideoControlsTheme, VideoControlsTimingTheme> _f$timing =
      Field(
        'timing',
        _$timing,
        opt: true,
        def: const VideoControlsTimingTheme(),
      );

  @override
  final MappableFields<VideoControlsTheme> fields = const {
    #colors: _f$colors,
    #iconSizes: _f$iconSizes,
    #sizes: _f$sizes,
    #fontSizes: _f$fontSizes,
    #spacing: _f$spacing,
    #constraints: _f$constraints,
    #timing: _f$timing,
  };

  static VideoControlsTheme _instantiate(DecodingData data) {
    return VideoControlsTheme(
      colors: data.dec(_f$colors),
      iconSizes: data.dec(_f$iconSizes),
      sizes: data.dec(_f$sizes),
      fontSizes: data.dec(_f$fontSizes),
      spacing: data.dec(_f$spacing),
      constraints: data.dec(_f$constraints),
      timing: data.dec(_f$timing),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VideoControlsTheme fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoControlsTheme>(map);
  }

  static VideoControlsTheme fromJson(String json) {
    return ensureInitialized().decodeJson<VideoControlsTheme>(json);
  }
}

mixin VideoControlsThemeMappable {
  String toJson() {
    return VideoControlsThemeMapper.ensureInitialized()
        .encodeJson<VideoControlsTheme>(this as VideoControlsTheme);
  }

  Map<String, dynamic> toMap() {
    return VideoControlsThemeMapper.ensureInitialized()
        .encodeMap<VideoControlsTheme>(this as VideoControlsTheme);
  }

  VideoControlsThemeCopyWith<
    VideoControlsTheme,
    VideoControlsTheme,
    VideoControlsTheme
  >
  get copyWith =>
      _VideoControlsThemeCopyWithImpl<VideoControlsTheme, VideoControlsTheme>(
        this as VideoControlsTheme,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return VideoControlsThemeMapper.ensureInitialized().stringifyValue(
      this as VideoControlsTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    return VideoControlsThemeMapper.ensureInitialized().equalsValue(
      this as VideoControlsTheme,
      other,
    );
  }

  @override
  int get hashCode {
    return VideoControlsThemeMapper.ensureInitialized().hashValue(
      this as VideoControlsTheme,
    );
  }
}

extension VideoControlsThemeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoControlsTheme, $Out> {
  VideoControlsThemeCopyWith<$R, VideoControlsTheme, $Out>
  get $asVideoControlsTheme => $base.as(
    (v, t, t2) => _VideoControlsThemeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class VideoControlsThemeCopyWith<
  $R,
  $In extends VideoControlsTheme,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  VideoControlsColorThemeCopyWith<
    $R,
    VideoControlsColorTheme,
    VideoControlsColorTheme
  >
  get colors;
  VideoControlsIconSizeThemeCopyWith<
    $R,
    VideoControlsIconSizeTheme,
    VideoControlsIconSizeTheme
  >
  get iconSizes;
  VideoControlsSizeThemeCopyWith<
    $R,
    VideoControlsSizeTheme,
    VideoControlsSizeTheme
  >
  get sizes;
  VideoControlsFontSizeThemeCopyWith<
    $R,
    VideoControlsFontSizeTheme,
    VideoControlsFontSizeTheme
  >
  get fontSizes;
  VideoControlsSpacingThemeCopyWith<
    $R,
    VideoControlsSpacingTheme,
    VideoControlsSpacingTheme
  >
  get spacing;
  VideoControlsConstraintsThemeCopyWith<
    $R,
    VideoControlsConstraintsTheme,
    VideoControlsConstraintsTheme
  >
  get constraints;
  VideoControlsTimingThemeCopyWith<
    $R,
    VideoControlsTimingTheme,
    VideoControlsTimingTheme
  >
  get timing;
  $R call({
    VideoControlsColorTheme? colors,
    VideoControlsIconSizeTheme? iconSizes,
    VideoControlsSizeTheme? sizes,
    VideoControlsFontSizeTheme? fontSizes,
    VideoControlsSpacingTheme? spacing,
    VideoControlsConstraintsTheme? constraints,
    VideoControlsTimingTheme? timing,
  });
  VideoControlsThemeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VideoControlsThemeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoControlsTheme, $Out>
    implements VideoControlsThemeCopyWith<$R, VideoControlsTheme, $Out> {
  _VideoControlsThemeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoControlsTheme> $mapper =
      VideoControlsThemeMapper.ensureInitialized();
  @override
  VideoControlsColorThemeCopyWith<
    $R,
    VideoControlsColorTheme,
    VideoControlsColorTheme
  >
  get colors => $value.colors.copyWith.$chain((v) => call(colors: v));
  @override
  VideoControlsIconSizeThemeCopyWith<
    $R,
    VideoControlsIconSizeTheme,
    VideoControlsIconSizeTheme
  >
  get iconSizes => $value.iconSizes.copyWith.$chain((v) => call(iconSizes: v));
  @override
  VideoControlsSizeThemeCopyWith<
    $R,
    VideoControlsSizeTheme,
    VideoControlsSizeTheme
  >
  get sizes => $value.sizes.copyWith.$chain((v) => call(sizes: v));
  @override
  VideoControlsFontSizeThemeCopyWith<
    $R,
    VideoControlsFontSizeTheme,
    VideoControlsFontSizeTheme
  >
  get fontSizes => $value.fontSizes.copyWith.$chain((v) => call(fontSizes: v));
  @override
  VideoControlsSpacingThemeCopyWith<
    $R,
    VideoControlsSpacingTheme,
    VideoControlsSpacingTheme
  >
  get spacing => $value.spacing.copyWith.$chain((v) => call(spacing: v));
  @override
  VideoControlsConstraintsThemeCopyWith<
    $R,
    VideoControlsConstraintsTheme,
    VideoControlsConstraintsTheme
  >
  get constraints =>
      $value.constraints.copyWith.$chain((v) => call(constraints: v));
  @override
  VideoControlsTimingThemeCopyWith<
    $R,
    VideoControlsTimingTheme,
    VideoControlsTimingTheme
  >
  get timing => $value.timing.copyWith.$chain((v) => call(timing: v));
  @override
  $R call({
    VideoControlsColorTheme? colors,
    VideoControlsIconSizeTheme? iconSizes,
    VideoControlsSizeTheme? sizes,
    VideoControlsFontSizeTheme? fontSizes,
    VideoControlsSpacingTheme? spacing,
    VideoControlsConstraintsTheme? constraints,
    VideoControlsTimingTheme? timing,
  }) => $apply(
    FieldCopyWithData({
      if (colors != null) #colors: colors,
      if (iconSizes != null) #iconSizes: iconSizes,
      if (sizes != null) #sizes: sizes,
      if (fontSizes != null) #fontSizes: fontSizes,
      if (spacing != null) #spacing: spacing,
      if (constraints != null) #constraints: constraints,
      if (timing != null) #timing: timing,
    }),
  );
  @override
  VideoControlsTheme $make(CopyWithData data) => VideoControlsTheme(
    colors: data.get(#colors, or: $value.colors),
    iconSizes: data.get(#iconSizes, or: $value.iconSizes),
    sizes: data.get(#sizes, or: $value.sizes),
    fontSizes: data.get(#fontSizes, or: $value.fontSizes),
    spacing: data.get(#spacing, or: $value.spacing),
    constraints: data.get(#constraints, or: $value.constraints),
    timing: data.get(#timing, or: $value.timing),
  );

  @override
  VideoControlsThemeCopyWith<$R2, VideoControlsTheme, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _VideoControlsThemeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

