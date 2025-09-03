import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

import '../../models/iptv_entry.dart';

class EntryCard extends StatefulWidget {
  final IptvEntry entry;
  final Function() onTap;

  const EntryCard({super.key, required this.entry, required this.onTap});

  @override
  State<EntryCard> createState() => _EntryCardState();
}

class _EntryCardState extends State<EntryCard> {
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
            image: widget.entry.logoUrl != null
                ? Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CachedNetworkImage(
                        height: 40,
                        width: 40,
                        cacheKey: widget.entry.logoUrl,
                        imageUrl: widget.entry.logoUrl!,
                        alignment: Alignment.center,
                        progressIndicatorBuilder: (context, url, downloadProgress) =>
                            FProgress(value: downloadProgress.progress),
                        errorWidget: (context, error, stackTrace) => SizedBox.shrink(),
                      ),
                    ],
                  )
                : null,
            title: Text(
              widget.entry.name,
              maxLines: widget.entry.logoUrl != null ? 2 : 4,
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
