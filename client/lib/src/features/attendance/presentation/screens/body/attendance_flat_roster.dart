import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

/// A flat, name-sorted roster sliver (used alongside the alphabet gutter).
class AttendanceFlatRoster extends StatelessWidget {
  final List<MeetingRosterEntry> entries;
  final Set<String> pendingPersonIds;
  final ValueChanged<MeetingRosterEntry> onToggle;

  const AttendanceFlatRoster({
    required this.entries,
    required this.pendingPersonIds,
    required this.onToggle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFixedExtentList.builder(
      itemExtent: AttendancePersonCard.kCardExtent,
      itemCount: entries.length,
      itemBuilder: (context, index) {
        final entry = entries[index];

        return AttendancePersonCard(
          entry: entry,
          pending: pendingPersonIds.contains(entry.person.id),
          onToggle: onToggle,
        );
      },
    );
  }
}
