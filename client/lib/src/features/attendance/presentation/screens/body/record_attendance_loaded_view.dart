import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/attendance/presentation/screens/body/attendance_error_view.dart';
import 'package:church_admin/src/features/attendance/presentation/screens/body/attendance_flat_roster.dart';
import 'package:church_admin/src/features/attendance/presentation/screens/body/attendance_grouped_roster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Layout for an active recording session. The app bar spans the full width
/// (in the [NestedScrollView] header) while the alphabet gutter only borders the
/// roster body, so it never steals width from the app bar.
class RecordAttendanceLoadedView extends StatelessWidget {
  final RecordAttendanceLoaded state;

  const RecordAttendanceLoadedView({required this.state, super.key});

  static void _jumpToLetter(ScrollController controller, int index) {
    if (index < 0 || !controller.hasClients) return;

    final target = (index * AttendancePersonCard.kCardExtent).clamp(
      0.0,
      controller.position.maxScrollExtent,
    );

    unawaited(
      controller.animateTo(
        target,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RecordAttendanceCubit>();
    final showGutter = state.grouping == AttendanceGrouping.none;

    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        AttendanceAppBar(
          meeting: state.meeting,
          selectedDate: state.selectedDate,
          audienceView: state.view,
          sorting: state.sort,
          grouping: state.grouping,
        ),
        AttendanceSummaryBar(
          presentCount: state.presentCount ?? 0,
          absentCount: state.absentCount ?? 0,
          totalCount: state.eligibleCount ?? 0,
          filter: state.filter,
          onFilterChanged: cubit.changePresenceFilter,
        ),
      ],
      body: Builder(
        builder: (context) {
          final controller = PrimaryScrollController.of(context);

          return Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: switch (state.rosterStatus) {
                  RosterStatus.loading => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  RosterStatus.error => AttendanceErrorView(
                    message: 'تعذر تحميل قائمة الحضور',
                    onRetry: cubit.retry,
                  ),
                  RosterStatus.ready => CustomScrollView(
                    slivers: [
                      switch (state.grouping) {
                        _ when state.entries.isEmpty =>
                          const SliverFillRemaining(
                            hasScrollBody: false,
                            child: Center(child: Text('لا يوجد مخدومين')),
                          ),
                        AttendanceGrouping.none => AttendanceFlatRoster(
                          entries: state.entries,
                          pendingPersonIds: state.pendingPersonIds,
                          onToggle: cubit.toggleAttendance,
                        ),
                        AttendanceGrouping.studyYear => AttendanceGroupedRoster(
                          entries: state.entries,
                          pendingPersonIds: state.pendingPersonIds,
                          onToggle: cubit.toggleAttendance,
                        ),
                      },
                      const SliverToBoxAdapter(child: SizedBox(height: 88)),
                    ],
                  ),
                },
              ),
              if (showGutter && state.rosterStatus == RosterStatus.ready)
                SafeArea(
                  child: AttendanceLetterGutter(
                    letters: state.gutterLetters,
                    onLetterSelected: (letter) => _jumpToLetter(
                      controller,
                      cubit.indexForLetter(letter),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
