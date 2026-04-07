import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

class CoverCard extends StatefulWidget {
  final String title;
  final String providerName;
  final Function() onTap;
  final String? posterUrl;
  final String? iconUrl;

  const CoverCard({
    super.key,
    required this.title,
    required this.providerName,
    this.posterUrl,
    this.iconUrl,
    required this.onTap,
  });

  @override
  State<CoverCard> createState() => _CoverCardState();
}

class _CoverCardState extends State<CoverCard> {
  bool isFocused = false;
  @override
  Widget build(BuildContext context) {
    return FTappable(
      onFocusChange: (value) => setState(() => isFocused = value),
      onHoverChange: (value) => setState(() => isFocused = value),
      onPress: widget.onTap,
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: FFocusedOutline(
          focused: isFocused,
          child: FCard(
            style: FCardStyleDelta.delta(
              decoration: DecorationDelta.boxDelta(
                image: widget.posterUrl != null
                    ? DecorationImage(image: CachedNetworkImageProvider(widget.posterUrl!), fit: BoxFit.cover)
                    : null,
                backgroundBlendMode: widget.posterUrl != null ? () => BlendMode.darken : null,
              ),
            ),
            image: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: AlignmentGeometry.centerEnd,
                  child: FBadge(child: Text(widget.providerName, style: const TextStyle(fontSize: 10))),
                ),
                if (widget.iconUrl != null) ...[
                  Center(
                    child: CachedNetworkImage(
                      height: 40,
                      width: 40,
                      cacheKey: widget.iconUrl!,
                      imageUrl: widget.iconUrl!,
                      alignment: Alignment.center,
                      progressIndicatorBuilder: (context, url, downloadProgress) => downloadProgress.progress != null
                          ? FDeterminateProgress(value: downloadProgress.progress!)
                          : FProgress(),
                      errorWidget: (context, error, stackTrace) => SizedBox.shrink(),
                    ),
                  ),
                ],
              ],
            ),
            title: isFocused || widget.iconUrl != null
                ? Text(widget.title, maxLines: 1, overflow: TextOverflow.ellipsis)
                : null,
            subtitle: isFocused || widget.iconUrl != null ? const Icon(FIcons.play) : null,
          ),
        ),
      ),
    );
  }
}
