import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

const double kAttendanceSummaryHeight = 48;

class AttendanceSummaryBar extends StatelessWidget {
  final int presentCount;
  final int absentCount;
  final int totalCount;
  final AttendancePresenceFilter filter;
  final ValueChanged<AttendancePresenceFilter> onFilterChanged;

  const AttendanceSummaryBar({
    required this.presentCount,
    required this.absentCount,
    required this.totalCount,
    required this.filter,
    required this.onFilterChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dividerColor = Theme.of(context).colorScheme.outlineVariant;

    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      toolbarHeight: kAttendanceSummaryHeight,
      titleSpacing: 0,
      title: RepaintBoundary(
        child: SizedBox(
          height: kAttendanceSummaryHeight,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: AttendanceSummarySegment(
                  label: AttendancePresenceFilter.present.label,
                  count: presentCount,
                  selected: filter == AttendancePresenceFilter.present,
                  onTap: () => _onSegmentTap(AttendancePresenceFilter.present),
                ),
              ),
              VerticalDivider(
                width: 1,
                indent: 8,
                endIndent: 8,
                color: dividerColor,
              ),
              Expanded(
                child: AttendanceSummarySegment(
                  label: AttendancePresenceFilter.absent.label,
                  count: absentCount,
                  selected: filter == AttendancePresenceFilter.absent,
                  onTap: () => _onSegmentTap(AttendancePresenceFilter.absent),
                ),
              ),
              VerticalDivider(
                width: 1,
                indent: 8,
                endIndent: 8,
                color: dividerColor,
              ),
              Expanded(
                child: AttendanceSummarySegment(
                  label: AttendancePresenceFilter.all.label,
                  count: totalCount,
                  selected: filter == AttendancePresenceFilter.all,
                  onTap: () => _onSegmentTap(AttendancePresenceFilter.all),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSegmentTap(AttendancePresenceFilter tapped) =>
      onFilterChanged(filter == tapped ? AttendancePresenceFilter.all : tapped);
}
