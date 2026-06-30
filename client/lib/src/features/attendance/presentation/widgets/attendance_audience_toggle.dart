import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AttendanceAudienceToggle extends StatelessWidget {
  final AttendanceRosterAudienceView view;
  final VoidCallback onToggle;

  const AttendanceAudienceToggle({
    required this.view,
    required this.onToggle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SegmentedButton<AttendanceRosterAudienceView>(
      segments: const [
        ButtonSegment(
          value: AttendanceRosterAudienceView.persons,
          label: Text('المخدومين'),
        ),
        ButtonSegment(
          value: AttendanceRosterAudienceView.servants,
          label: Text('الخدام'),
        ),
      ],
      selected: {view},
      onSelectionChanged: (_) => onToggle(),
      showSelectedIcon: false,
      style: SegmentedButton.styleFrom(
        selectedBackgroundColor: colorScheme.primary,
        selectedForegroundColor: colorScheme.onPrimary,
        backgroundColor: colorScheme.surfaceContainerHighest,
        foregroundColor: colorScheme.onSurface,
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
