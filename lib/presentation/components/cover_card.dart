import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

class CoverCard extends StatefulWidget {
  final String title;
  final String? posterUrl;
  final String? iconUrl;
  final Function() onTap;

  const CoverCard({super.key, required this.title, this.posterUrl, this.iconUrl, required this.onTap});

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
        child: FCard(
          style: (style) => style.copyWith(
            decoration: style.decoration.copyWith(
              border: isFocused ? Border.all(width: 3, color: FTheme.of(context).colors.primary) : null,
              image: widget.posterUrl != null
                  ? DecorationImage(image: CachedNetworkImageProvider(widget.posterUrl!), fit: BoxFit.cover)
                  : null,
              backgroundBlendMode: widget.posterUrl != null ? BlendMode.darken : null,
            ),
          ),
          image: widget.iconUrl != null
              ? Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CachedNetworkImage(
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
                  ],
                )
              : null,
          title: isFocused || widget.iconUrl != null
              ? Text(widget.title, maxLines: 1, overflow: TextOverflow.ellipsis)
              : null,
          subtitle: isFocused || widget.iconUrl != null ? const Icon(FIcons.play) : null,
        ),
      ),
    );
  }
}
