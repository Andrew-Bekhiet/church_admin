import 'package:flutter/material.dart';

class AttendanceGroupHeader extends StatelessWidget {
  final String groupName;
  final int presentCount;
  final int absentCount;
  final int totalCount;
  final bool collapsed;
  final VoidCallback? onTap;

  const AttendanceGroupHeader({
    required this.groupName,
    this.presentCount = 0,
    this.absentCount = 0,
    this.totalCount = 0,
    this.collapsed = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: theme.colorScheme.surface,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            spacing: 8,
            children: [
              AnimatedRotation(
                turns: collapsed ? 0.25 : 0,
                duration: const Duration(milliseconds: 200),
                child: const Icon(Icons.expand_more, size: 20),
              ),
              Expanded(
                child: Text(groupName, style: theme.textTheme.titleSmall),
              ),
              Text(
                '$presentCount حاضر | $absentCount غائب | $totalCount الكل',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
