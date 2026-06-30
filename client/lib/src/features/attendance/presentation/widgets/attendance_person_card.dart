import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// A single roster row: photo, name, recorded attendance time and a one-tap
/// present/absent toggle. Tapping toggles attendance; long-pressing opens the
/// person's details.
class AttendancePersonCard extends StatelessWidget {
  /// Fixed height of a person card, used both for layout and the gutter's
  /// jump-to-index math.
  static const double kCardExtent = 72;

  final MeetingRosterEntry entry;
  final ValueChanged<MeetingRosterEntry> onToggle;
  final bool removeEndPadding;

  const AttendancePersonCard({
    required this.entry,
    required this.onToggle,
    this.removeEndPadding = false,
    super.key,
  });

  void _openDetails(BuildContext context) =>
      ViewPersonRoute(id: entry.person.id, $extra: entry.person).push(context);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final present = entry.attended;
    final attendanceTime = present ? entry.attendance?.datetime : null;

    return Card(
      margin: const EdgeInsetsDirectional.symmetric(
        horizontal: 8,
        vertical: 4,
      ).copyWith(end: removeEndPadding ? 0 : null),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => onToggle(entry),
        onLongPress: () => _openDetails(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Row(
            spacing: 12,
            children: [
              ImageObjectWidget(entry.person, size: 44),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      entry.person.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall,
                    ),
                    if (attendanceTime != null)
                      Text(
                        DateFormat.jm('ar').format(attendanceTime),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ),
              AttendancePersonToggle(
                isPresent: present,
                onTap: () => onToggle(entry),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
