import 'package:flutter/material.dart';

class AttendanceGroupHeader extends StatelessWidget {
  final String groupName;
  final int presentCount;
  final int absentCount;
  final int totalCount;

  const AttendanceGroupHeader({
    required this.groupName,
    this.presentCount = 0,
    this.absentCount = 0,
    this.totalCount = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            groupName,
            style: theme.textTheme.titleSmall,
          ),
          Text(
            '$presentCount حاضر | $absentCount غائب | $totalCount الكل',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
