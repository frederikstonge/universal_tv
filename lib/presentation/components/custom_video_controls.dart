import 'package:flutter/widgets.dart';

import 'package:media_kit_video/media_kit_video.dart';

class CustomVideoControls extends StatefulWidget {
  final bool isLive;
  final VideoState state;

  const CustomVideoControls({super.key, required this.state, required this.isLive});

  @override
  State<CustomVideoControls> createState() => _CustomVideoControlsState();
}

class _CustomVideoControlsState extends State<CustomVideoControls> {
  late final VideoController controller;

  @override
  void initState() {
    controller = widget.state.widget.controller;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack();
  }
}
