import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class AttendanceAppBar extends StatelessWidget {
  static const double _kAttendanceToolbarHeight = 96;

  final Meeting meeting;
  final DateTime selectedDate;
  final AttendanceRosterAudienceView audienceView;
  final AttendanceSorting sorting;
  final AttendanceGrouping grouping;
  final int streakWindowDays;
  final bool canToggleAudience;
  final Set<DateTime> recordedDays;

  const AttendanceAppBar({
    required this.meeting,
    required this.selectedDate,
    required this.audienceView,
    required this.sorting,
    required this.grouping,
    required this.streakWindowDays,
    required this.canToggleAudience,
    this.recordedDays = const {},
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RecordAttendanceCubit>();

    return SliverAppBar(
      floating: true,
      snap: true,
      toolbarHeight: _kAttendanceToolbarHeight,
      titleSpacing: 8,
      leadingWidth: 28,
      centerTitle: true,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          MeetingSelectorButton(
            key: AttendanceAppBarKeys.meetingSelector,
            meeting: meeting,
            onTap: () => _switchMeeting(context, cubit),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
            children: [
              AttendanceDateChip(
                key: AttendanceAppBarKeys.dateChip,
                date: selectedDate,
                recordedDays: recordedDays,
                indicatorColor: meeting.color,
                onDateSelected: cubit.selectDate,
              ),
              if (canToggleAudience)
                AttendanceAudienceToggle(
                  key: AttendanceAppBarKeys.audienceToggle,
                  view: audienceView,
                  onToggle: cubit.toggleAudience,
                ),
            ],
          ),
        ],
      ),
      actions: [
        AttendanceOverflowMenu(
          openAnalysis: () => _openAnalysis(context, cubit),
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

  Future<void> _switchMeeting(
    BuildContext context,
    RecordAttendanceCubit cubit,
  ) async {
    final selected = await SelectMeetingBottomSheet.show(
      context,
      currentMeeting: meeting,
    );
    if (selected == null) {
      cubit.trackForCurrentMeeting(AttendanceMeetingSelectorDismiss.new);

      return;
    }

    cubit.switchMeeting(selected);
  }

  void _openAnalysis(BuildContext context, RecordAttendanceCubit cubit) {
    final selectedDay = DateUtils.dateOnly(selectedDate);
    final isTodaySelected = selectedDay == DateUtils.dateOnly(DateTime.now());

    cubit.trackForCurrentMeeting(
      (meeting) => AttendanceAnalysisOpen(
        meeting,
        isTodaySelected
            ? AttendanceAnalysisPreset.today
            : AttendanceAnalysisPreset.custom,
      ),
    );
    unawaited(
      MeetingsAnalysisRoute(
        title: 'احصائيات ${meeting.name}',
        initialRangePreset: isTodaySelected
            ? TodayDateTimeRangePreset()
            : CustomDateTimeRangePreset(
                range: DateTimeRange(start: selectedDay, end: selectedDay),
              ),
        subject: MeetingAnalysisSubject(meeting),
      ).push(context),
    );
  }
}

abstract final class AttendanceAppBarKeys {
  static const Key meetingSelector = ValueKey(
    'Attendance App Bar Meeting Selector Key',
  );
  static const Key dateChip = ValueKey('Attendance App Bar Date Chip Key');
  static const Key audienceToggle = ValueKey(
    'Attendance App Bar Audience Toggle Key',
  );
}
