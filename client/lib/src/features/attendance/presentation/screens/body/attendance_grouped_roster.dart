import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class AttendanceGroupedRoster extends StatefulWidget {
  final List<MeetingRosterEntry> entries;
  final ValueChanged<MeetingRosterEntry> onToggle;

  const AttendanceGroupedRoster({
    required this.entries,
    required this.onToggle,
    super.key,
  });

  @override
  State<AttendanceGroupedRoster> createState() =>
      _AttendanceGroupedRosterState();
}

class _AttendanceGroupedRosterState extends State<AttendanceGroupedRoster> {
  final Set<int> _collapsedKeys = {};

  void _toggleSection(int? key) {
    if (key == null) return;

    setState(() {
      if (!_collapsedKeys.remove(key)) _collapsedKeys.add(key);
    });
  }

  @override
  Widget build(BuildContext context) {
    final sections = widget.entries.groupListsBy((e) => e.person.studyYear);

    return SliverMainAxisGroup(
      slivers: sections.entries.map((e) {
        final MapEntry(key: studyYear, value: entries) = e;

        final key = studyYear?.order;
        final collapsed = _collapsedKeys.contains(key);
        final presentCount = entries.where((e) => e.attended).length;

        return MultiSliver(
          pushPinnedChildren: true,
          children: [
            SliverPinnedHeader(
              child: AttendanceGroupHeader(
                groupName: studyYear?.name ?? 'بدون سنة دراسية',
                presentCount: presentCount,
                absentCount: entries.length - presentCount,
                totalCount: entries.length,
                collapsed: collapsed,
                onTap: () => _toggleSection(key),
              ),
            ),
            SliverFixedExtentList.builder(
              itemExtent: AttendancePersonCard.kCardExtent,
              itemCount: collapsed ? 0 : entries.length,
              itemBuilder: (context, index) {
                final entry = entries[index];

                return AttendancePersonCard(
                  entry: entry,
                  onToggle: widget.onToggle,
                );
              },
            ),
          ],
        );
      }).toList(),
    );
  }
}
