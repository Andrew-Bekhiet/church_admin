import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

/// A selectable meeting row used inside the Switch-Meeting bottom sheet.
class MeetingListTile extends StatelessWidget {
  final Meeting meeting;
  final bool selected;
  final VoidCallback onTap;

  const MeetingListTile({
    required this.meeting,
    required this.selected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final subtitle = [
      meeting.service?.name,
      meeting.studyYear?.name,
      meeting.group?.name,
    ].nonNulls.where((s) => s.isNotEmpty).join(' • ');

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      color: selected
          ? theme.colorScheme.secondaryContainer
          : theme.colorScheme.surfaceContainerHigh,
      child: ListTile(
        onTap: onTap,
        selected: selected,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        title: Text(
          meeting.name,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: selected
            ? Icon(
                Symbols.check_circle,
                color: theme.colorScheme.primary,
                size: 30,
                fill: 1,
                opticalSize: 40,
              )
            : null,
      ),
    );
  }
}
