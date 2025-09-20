import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

import '../../models/movie_item.dart';

class MovieCard extends StatefulWidget {
  final MovieItem movie;
  final Function() onTap;

  const MovieCard({super.key, required this.movie, required this.onTap});

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
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
            image: widget.movie.posterUrl != null
                ? Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CachedNetworkImage(
                        height: 40,
                        width: 40,
                        cacheKey: widget.movie.posterUrl!,
                        imageUrl: widget.movie.posterUrl!,
                        alignment: Alignment.center,
                        progressIndicatorBuilder: (context, url, downloadProgress) =>
                            FProgress(value: downloadProgress.progress),
                        errorWidget: (context, error, stackTrace) => SizedBox.shrink(),
                      ),
                    ],
                  )
                : null,
            title: Text(
              widget.movie.name,
              maxLines: widget.movie.posterUrl != null ? 2 : 4,
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
