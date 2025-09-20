import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

import '../../models/tv_show_item.dart';

class TvShowCard extends StatefulWidget {
  final TvShowItem series;
  final Function() onTap;

  const TvShowCard({super.key, required this.series, required this.onTap});

  @override
  State<TvShowCard> createState() => _TvShowCardState();
}

class _TvShowCardState extends State<TvShowCard> {
  bool isFocused = false;
  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (value) => setState(() => isFocused = value),
      child: FTappable(
        onPress: widget.onTap,
        child: AspectRatio(
          aspectRatio: 3 / 4,
          child: FCard(
            style: (style) => style.copyWith(
              decoration: isFocused
                  ? style.decoration.copyWith(border: Border.all(width: 3, color: FTheme.of(context).colors.primary))
                  : style.decoration,
            ),
            image: widget.series.posterUrl != null
                ? Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CachedNetworkImage(
                        height: 40,
                        width: 40,
                        cacheKey: widget.series.posterUrl!,
                        imageUrl: widget.series.posterUrl!,
                        alignment: Alignment.center,
                        progressIndicatorBuilder: (context, url, downloadProgress) =>
                            FProgress(value: downloadProgress.progress),
                        errorWidget: (context, error, stackTrace) => SizedBox.shrink(),
                      ),
                    ],
                  )
                : null,
            title: Text(
              widget.series.name,
              maxLines: widget.series.posterUrl != null ? 2 : 4,
              overflow: TextOverflow.ellipsis,
            ),
            child: Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [const Icon(FIcons.play)],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
