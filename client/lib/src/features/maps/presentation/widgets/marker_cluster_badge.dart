import 'package:flutter/material.dart';

class MarkerClusterBadge extends StatelessWidget {
  final int count;

  const MarkerClusterBadge({required this.count, super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);

    return DecoratedBox(
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(color: colorScheme.onPrimary, width: 2),
        ),
        color: colorScheme.primary,
        shadows: kElevationToShadow[2],
      ),
      child: Center(
        child: FittedBox(
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Text(
              count.toString(),
              style: TextTheme.of(
                context,
              ).labelLarge?.copyWith(color: colorScheme.onPrimary),
            ),
          ),
        ),
      ),
    );
  }
}
