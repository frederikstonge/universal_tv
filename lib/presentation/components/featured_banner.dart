import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

class FeaturedBanner extends StatefulWidget {
  final String title;
  final String? posterUrl;
  final String providerName;
  final VoidCallback onTap;

  const FeaturedBanner({
    super.key,
    required this.title,
    this.posterUrl,
    required this.providerName,
    required this.onTap,
  });

  @override
  State<FeaturedBanner> createState() => _FeaturedBannerState();
}

class _FeaturedBannerState extends State<FeaturedBanner> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.colors;

    return FTappable(
      onFocusChange: (value) => setState(() => isFocused = value),
      onHoverChange: (value) => setState(() => isFocused = value),
      onPress: widget.onTap,
      child: FFocusedOutline(
        focused: isFocused,
        child: Container(
          height: 360,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: widget.posterUrl != null
                ? DecorationImage(
                    image: CachedNetworkImageProvider(widget.posterUrl!),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  )
                : null,
            color: colors.secondary,
          ),
          child: Stack(
            children: [
              // Gradient overlay
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        colors.background.withAlpha(0),
                        colors.background.withAlpha(60),
                        colors.background.withAlpha(220),
                        colors.background,
                      ],
                      stops: const [0.0, 0.4, 0.75, 1.0],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              // Side gradient for text readability
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [colors.background.withAlpha(180), colors.background.withAlpha(0)],
                      stops: const [0.0, 0.5],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
              ),
              // Content
              Positioned(
                left: 28,
                bottom: 28,
                right: 28,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FBadge(
                      variant: FBadgeVariant.secondary,
                      child: Text(widget.providerName, style: const TextStyle(fontSize: 11)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.title,
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: colors.foreground),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 16),
                    FButton(prefix: const Icon(FIcons.play), onPress: widget.onTap, child: const Text('View Details')),
                  ],
                ),
              ),
              // Featured label
              Positioned(
                top: 16,
                left: 28,
                child: Row(
                  children: [
                    Icon(FIcons.sparkles, size: 14, color: colors.foreground),
                    const SizedBox(width: 6),
                    Text(
                      'Featured',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: colors.foreground),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
