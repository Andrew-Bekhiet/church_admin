import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AttendanceAppBar extends StatelessWidget {
  static const double _kAttendanceToolbarHeight = 96;

  final Meeting meeting;
  final DateTime selectedDate;
  final AttendanceRosterAudienceView audienceView;
  final AttendanceSorting sorting;
  final AttendanceGrouping grouping;
  final int streakWindowDays;
  final bool canToggleAudience;

  const AttendanceAppBar({
    required this.meeting,
    required this.selectedDate,
    required this.audienceView,
    required this.sorting,
    required this.grouping,
    required this.streakWindowDays,
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
        spacing: 10,
        children: [
          MeetingSelectorButton(
            meeting: meeting,
            onTap: () => _switchMeeting(context, cubit),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
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
          openAnalysis: () => _openAnalysis(context),
          sorting: sorting,
          grouping: grouping,
          streakWindowDays: streakWindowDays,
          onSortChanged: cubit.changeSorting,
          onGroupingChanged: cubit.changeGrouping,
          onStreakWindowChanged: cubit.changeStreakWindow,
        ),
      ],
    );
  }

  void _openAnalysis(BuildContext context) {
    final selectedDay = DateUtils.dateOnly(selectedDate);

    unawaited(
      MeetingsAnalysisRoute(
        $extra: MeetingsAnalysisExtra(
          title: 'احصائيات ${meeting.name}',
          initialRangePreset: selectedDay == DateUtils.dateOnly(DateTime.now())
              ? TodayDateTimeRangePreset()
              : CustomDateTimeRangePreset(
                  range: DateTimeRange(start: selectedDay, end: selectedDay),
                ),
          load: (range) =>
              DatabaseService.I.meetings.getPersonMeetingAttendanceAnalysis(
                meeting: meeting,
                range: range,
              ),
        ),
      ).push(context),
    );
  }
}
