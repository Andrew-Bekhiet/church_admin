import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

/// A roster sliver grouped into study-year sections (used when grouping is on).
class AttendanceGroupedRoster extends StatelessWidget {
  final List<MeetingRosterEntry> entries;
  final Set<String> pendingPersonIds;
  final ValueChanged<MeetingRosterEntry> onToggle;

  const AttendanceGroupedRoster({
    required this.entries,
    required this.pendingPersonIds,
    required this.onToggle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final groupedEntries = entries
        .sortedByCompare((p) => p.person.studyYear?.order, (a, b) {
          if (a == null && b == null) return 0;
          if (a == null) return 1;
          if (b == null) return -1;

          return a.compareTo(b);
        })
        .groupListsBy((e) => e.person.studyYear)
        .entries
        .map(
          (e) => (
            studyYear: e.key,
            entries: e.value,
            presentCount: e.value.where((e) => e.attended).length,
          ),
        );

    return SliverMainAxisGroup(
      slivers: [
        for (final (:studyYear, :entries, :presentCount) in groupedEntries) ...[
          SliverMainAxisGroup(
            slivers: [
              PinnedHeaderSliver(
                child: AttendanceGroupHeader(
                  groupName: studyYear?.name ?? 'بدون سنة دراسية',
                  presentCount: presentCount,
                  absentCount: entries.length - presentCount,
                  totalCount: entries.length,
                ),
              ),
              SliverFixedExtentList.builder(
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
              ),
            ],
          ),
        ],
      ],
    );
  }
}
