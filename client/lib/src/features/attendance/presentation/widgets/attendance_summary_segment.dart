import 'package:flutter/material.dart';

/// One tappable count segment (e.g. "5 حاضر") in the summary bar.
class AttendanceSummarySegment extends StatelessWidget {
  final String label;
  final int count;
  final bool selected;
  final VoidCallback onTap;

  const AttendanceSummarySegment({
    required this.label,
    required this.count,
    required this.selected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            '$count $label',
            style: theme.textTheme.titleMedium?.copyWith(
              color: selected
                  ? theme.colorScheme.primary
                  : theme.colorScheme.onSurface,
              fontWeight: selected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
