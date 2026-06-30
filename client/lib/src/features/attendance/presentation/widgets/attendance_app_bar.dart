import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The snapping, floating app-bar fragment: meeting selector, date chip,
/// audience toggle and the overflow menu.
class AttendanceAppBar extends StatelessWidget {
  static const double _kAttendanceToolbarHeight = 96;

  final Meeting meeting;
  final DateTime selectedDate;
  final AttendanceRosterAudienceView audienceView;
  final AttendanceSorting sorting;
  final AttendanceGrouping grouping;
  final bool canToggleAudience;

  const AttendanceAppBar({
    required this.meeting,
    required this.selectedDate,
    required this.audienceView,
    required this.sorting,
    required this.grouping,
    required this.canToggleAudience,
    super.key,
  });

  Future<void> _switchMeeting(
    BuildContext context,
    RecordAttendanceCubit cubit,
  ) async {
    final selected = await SelectMeetingBottomSheet.show(
      context,
      currentMeeting: meeting,
    );
    if (selected != null) cubit.switchMeeting(selected);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RecordAttendanceCubit>();

    return SliverAppBar(
      floating: true,
      snap: true,
      toolbarHeight: _kAttendanceToolbarHeight,
      titleSpacing: 8,
      leadingWidth: 28,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 6,
        children: [
          MeetingSelectorButton(
            meeting: meeting,
            onTap: () => _switchMeeting(context, cubit),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              AttendanceDateChip(
                date: selectedDate,
                onDateSelected: cubit.selectDate,
              ),
              if (canToggleAudience)
                AttendanceAudienceToggle(
                  view: audienceView,
                  onToggle: cubit.toggleAudience,
                ),
            ],
          ),
        ],
      ),
      actions: [
        AttendanceOverflowMenu(
          sorting: sorting,
          grouping: grouping,
          onSortChanged: cubit.changeSorting,
          onGroupingChanged: cubit.changeGrouping,
        ),
      ],
    );
  }
}
