import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

class ModalSheetPage<T> extends Page<T> {
  final WidgetBuilder builder;
  final double mainAxisMaxRatio;
  final CapturedThemes? capturedThemes;
  final String? barrierOnTapHint;
  final String? barrierLabel;
  final BoxConstraints constraints;
  final AnimationController? transitionAnimationController;
  final VoidCallback? onClosing;
  final bool draggable;
  final bool barrierDismissible;
  final bool useSafeArea;
  final bool resizeToAvoidBottomInset;
  final FLayout side;
  final FModalSheetStyle? style;
  final Offset? anchorPoint;

  const ModalSheetPage({
    required this.builder,
    this.style,
    this.side = FLayout.btt,
    this.mainAxisMaxRatio = 9 / 16,
    this.capturedThemes,
    this.barrierOnTapHint,
    this.barrierLabel,
    this.barrierDismissible = true,
    this.constraints = const BoxConstraints(),
    this.draggable = true,
    this.transitionAnimationController,
    this.anchorPoint,
    this.useSafeArea = false,
    this.resizeToAvoidBottomInset = true,
    this.onClosing,
    super.key,
  });

  @override
  Route<T> createRoute(BuildContext context) => FModalSheetRoute<T>(
    settings: this,
    draggable: draggable,
    style: style ?? FModalSheetStyle(),
    side: side,
    barrierDismissible: barrierDismissible,
    anchorPoint: anchorPoint,
    useSafeArea: useSafeArea,
    resizeToAvoidBottomInset: resizeToAvoidBottomInset,
    mainAxisMaxRatio: mainAxisMaxRatio,
    capturedThemes: capturedThemes,
    barrierOnTapHint: barrierOnTapHint,
    barrierLabel: barrierLabel,
    constraints: constraints,
    transitionAnimationController: transitionAnimationController,
    onClosing: onClosing,
    builder: builder,
  );
}
