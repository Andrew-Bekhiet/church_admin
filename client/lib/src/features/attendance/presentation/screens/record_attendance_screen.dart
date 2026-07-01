import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/attendance/presentation/screens/body/record_attendance_loaded_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecordAttendanceScreen extends StatefulWidget {
  final Meeting meeting;

  const RecordAttendanceScreen({required this.meeting, super.key});

  @override
  State<RecordAttendanceScreen> createState() => _RecordAttendanceScreenState();
}

class _RecordAttendanceScreenState extends State<RecordAttendanceScreen> {
  late final RecordAttendanceCubit _cubit = RecordAttendanceCubit(
    meeting: widget.meeting,
  );

  @override
  void dispose() {
    unawaited(_cubit.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: AttendanceSearchBar(
          onChanged: _cubit.searchSink.add,
        ),
        body: SafeArea(
          bottom: false,
          child: BlocBuilder<RecordAttendanceCubit, RecordAttendanceState>(
            builder: (context, state) => switch (state) {
              RecordAttendanceLoading() => const Center(
                child: CircularProgressIndicator(),
              ),
              RecordAttendanceLoaded() => RecordAttendanceLoadedView(
                state: state,
              ),
            },
          ),
        ),
      ),
    );
  }
}
