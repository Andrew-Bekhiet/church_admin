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

  /// A short description of who the meeting scopes to, shown as the subtitle.
  String? get _subtitle {
    final parts = [
      meeting.studyYear?.name,
      meeting.service?.name,
      meeting.group?.name,
    ].whereType<String>().where((name) => name.isNotEmpty).toList();
    return parts.isEmpty ? null : parts.join(' • ');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final subtitle = _subtitle;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      color: selected
          ? theme.colorScheme.secondaryContainer
          : theme.colorScheme.surfaceContainerHigh,
      child: ListTile(
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        leading: MeetingAvatar(meeting: meeting),
        title: Text(
          meeting.name,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: subtitle == null ? null : Text(subtitle),
        trailing: Icon(
          selected ? Symbols.check_circle : Symbols.remove,
          color: selected
              ? theme.colorScheme.primary
              : theme.colorScheme.outline,
          fill: selected ? 1 : 0,
        ),
      ),
    );
  }
}
