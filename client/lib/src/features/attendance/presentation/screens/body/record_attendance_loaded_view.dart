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
class RecordAttendanceLoadedView extends StatefulWidget {
  final RecordAttendanceLoaded state;

  const RecordAttendanceLoadedView({required this.state, super.key});

  @override
  State<RecordAttendanceLoadedView> createState() =>
      _RecordAttendanceLoadedViewState();
}

class _RecordAttendanceLoadedViewState
    extends State<RecordAttendanceLoadedView> {
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

  _RosterScrollOffsetKey _rosterKeyFor(RecordAttendanceLoaded s) => (
    s.meeting.id,
    s.selectedDate,
    s.audienceView,
    s.presenceFilter,
    s.grouping,
  );

  final Map<_RosterScrollOffsetKey, double> _savedOffsets = {};

  ScrollController? _innerController;

  @override
  void didUpdateWidget(RecordAttendanceLoadedView oldWidget) {
    super.didUpdateWidget(oldWidget);
    final oldKey = _rosterKeyFor(oldWidget.state);
    final newKey = _rosterKeyFor(widget.state);

    if (oldKey == newKey) return;

    if (_innerController case final controller? when controller.hasClients) {
      _savedOffsets[oldKey] = controller.offset;
    }

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _maybeUpdateControllerOffset(newKey),
    );
  }

  // PageStorageKey is broken here: _NestedScrollPosition.restoreScrollOffset
  // is gated on canScrollBody (false while the floating app bar is visible),
  // and the constructor calls saveScrollOffset() right after correctPixels(0),
  // overwriting any stored value.
  // Use PageStorageKey when https://github.com/flutter/flutter/issues/159123
  // is fixed.
  //
  // jumpTo is also wrong: it goes through coordinator.jumpTo which moves
  // BOTH inner and outer via unnestOffset/nestOffset, scrolling the app bar
  // away on every restore. Use position.correctBy on the inner position only.
  //
  // Targeting 0.0 when there is no saved offset resets the list to the top,
  // since without a key on CustomScrollView the element is reused and carries
  // the previous combination's offset into the new one.
  //
  void _maybeUpdateControllerOffset(_RosterScrollOffsetKey key) {
    final controller = _innerController;
    if (!mounted || controller == null || !controller.hasClients) return;

    final position = controller.position;
    final target = (_savedOffsets[key] ?? 0.0).clamp(
      0.0,
      position.maxScrollExtent,
    );
    if (position.pixels == target) return;

    setState(() => position.correctBy(target - position.pixels));
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RecordAttendanceCubit>();
    final state = widget.state;
    final showGutter = state.grouping == AttendanceGrouping.none;

    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        AttendanceAppBar(
          meeting: state.meeting,
          selectedDate: state.selectedDate,
          audienceView: state.audienceView,
          sorting: state.sort,
          grouping: state.grouping,
          canToggleAudience: state.canToggleAudience,
        ),
      ],
      body: Builder(
        builder: (context) {
          final controller = PrimaryScrollController.of(context);
          _innerController = controller;

          return Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    AttendanceSummaryBar(
                      presentCount: state.presentCount ?? 0,
                      absentCount: state.absentCount ?? 0,
                      totalCount: state.eligibleCount ?? 0,
                      filter: state.presenceFilter,
                      onFilterChanged: cubit.changePresenceFilter,
                    ),
                    switch (state.rosterStatus) {
                      RosterStatus.loading => const SliverFillRemaining(
                        child: Center(child: CircularProgressIndicator()),
                      ),

                      RosterStatus.error => SliverFillRemaining(
                        child: AttendanceErrorView(
                          message: 'تعذر تحميل قائمة الحضور',
                          onRetry: cubit.retry,
                        ),
                      ),

                      RosterStatus.ready when state.entries.isEmpty =>
                        const SliverFillRemaining(
                          hasScrollBody: false,
                          child: Center(child: Text('لا يوجد مخدومين')),
                        ),

                      RosterStatus.ready => switch (state.grouping) {
                        AttendanceGrouping.none => AttendanceFlatRoster(
                          entries: state.entries,
                          onToggle: cubit.toggleAttendance,
                        ),
                        AttendanceGrouping.studyYear => AttendanceGroupedRoster(
                          entries: state.entries,
                          onToggle: cubit.toggleAttendance,
                        ),
                      },
                    },

                    if (state.rosterStatus == RosterStatus.ready &&
                        state.entries.isNotEmpty)
                      const SliverToBoxAdapter(child: SizedBox(height: 88)),
                  ],
                ),
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

typedef _RosterScrollOffsetKey = (
  String meetingId,
  DateTime selectedDate,
  AttendanceRosterAudienceView view,
  AttendancePresenceFilter filter,
  AttendanceGrouping grouping,
);
