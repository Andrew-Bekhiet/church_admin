import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';
import 'package:sliver_tools/sliver_tools.dart';

class AttendanceGroupedRoster extends StatefulWidget {
  final List<MeetingRosterEntry> entries;
  final ValueChanged<MeetingRosterEntry> onToggle;
  final void Function(MeetingRosterEntry, TimeOfDay) onChangeAttendanceTime;

  const AttendanceGroupedRoster({
    required this.entries,
    required this.onToggle,
    required this.onChangeAttendanceTime,
    super.key,
  });

  @override
  State<AttendanceGroupedRoster> createState() =>
      _AttendanceGroupedRosterState();
}

class _AttendanceGroupedRosterState extends State<AttendanceGroupedRoster> {
  final Set<int> _collapsedKeys = {};

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
                onTap: () => _toggleSection(key, entries.length),
              ),
            ),
            SliverFixedExtentList.builder(
              itemExtent: AttendancePersonCard.kCardExtent,
              itemCount: collapsed ? 0 : entries.length,
              itemBuilder: (context, index) {
                final entry = entries[index];

                return AttendancePersonCard(
                  key: AttendancePersonCardKeys.entry(
                    entry.person.id,
                    asServant: entry.asServant,
                  ),
                  entry: entry,
                  onToggle: widget.onToggle,
                  onChangeAttendanceTime: (time) =>
                      widget.onChangeAttendanceTime(entry, time),
                );
              },
            ),
          ],
        );
      }).toList(),
    );
  }

  void _toggleSection(int? key, int sectionPersonCount) {
    if (key == null) return;

    final isCollapsed = !_collapsedKeys.contains(key);
    context.read<RecordAttendanceCubit>().trackForCurrentMeeting(
      (meeting) => AttendanceSectionToggle(
        meeting,
        isCollapsed: isCollapsed,
        sectionPersonCount: sectionPersonCount,
      ),
    );
    setState(() {
      if (_collapsedKeys.remove(key)) return;

      _collapsedKeys.add(key);
    });
  }
}
