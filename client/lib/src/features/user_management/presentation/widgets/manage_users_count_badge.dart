import 'package:flutter/material.dart';

class ManageUsersCountBadge extends StatelessWidget {
  final int count;
  final bool highlighted;

  const ManageUsersCountBadge({
    required this.count,
    this.highlighted = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final (background, foreground) = highlighted
        ? (colors.primaryContainer, colors.onPrimaryContainer)
        : (colors.secondaryContainer, colors.onSecondaryContainer);

    return DecoratedBox(
      decoration: ShapeDecoration(
        color: background,
        shape: const StadiumBorder(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Text(
          count.toString(),
          style: theme.textTheme.labelSmall?.copyWith(color: foreground),
        ),
      ),
    );
  }
}
