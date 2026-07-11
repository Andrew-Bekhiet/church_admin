import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AttendanceFlatRoster extends StatelessWidget {
  final bool removeEndPadding;
  final List<MeetingRosterEntry> entries;
  final Map<String, PersonMeetingAttendanceAnalysis> trackRecords;
  final ValueChanged<MeetingRosterEntry> onToggle;
  final void Function(MeetingRosterEntry, TimeOfDay) onChangeAttendanceTime;

  const AttendanceFlatRoster({
    required this.entries,
    required this.onToggle,
    required this.onChangeAttendanceTime,
    this.removeEndPadding = false,
    this.trackRecords = const {},
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
          onToggle: onToggle,
          onChangeAttendanceTime: (time) => onChangeAttendanceTime(entry, time),
          removeEndPadding: removeEndPadding,
        );
      },
    );
  }
}
