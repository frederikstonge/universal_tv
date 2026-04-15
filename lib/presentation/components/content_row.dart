import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

class ContentRow extends StatelessWidget {
  final String title;
  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final double height;

  const ContentRow({
    super.key,
    required this.title,
    required this.itemCount,
    required this.itemBuilder,
    this.height = 230,
  });

  @override
  Widget build(BuildContext context) {
    if (itemCount == 0) return const SizedBox.shrink();

    final colors = context.theme.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: colors.foreground),
              ),
              const SizedBox(width: 8),
              Text('($itemCount)', style: TextStyle(fontSize: 13, color: colors.mutedForeground)),
            ],
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          height: height,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            scrollDirection: Axis.horizontal,
            itemCount: itemCount,
            itemBuilder: itemBuilder,
          ),
        ),
      ],
    );
  }
}
