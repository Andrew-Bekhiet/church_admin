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
  final RecordKodasCubit _kodasCubit = RecordKodasCubit();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _cubit),
        BlocProvider.value(value: _kodasCubit),
      ],
      child: BlocListener<RecordAttendanceCubit, RecordAttendanceState>(
        listener: (context, state) {
          if (state is! RecordAttendanceLoaded) return;

          _kodasCubit.follow(meeting: state.meeting, day: state.selectedDate);
        },
        child: Scaffold(
          extendBody: true,
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
          bottomNavigationBar: AttendanceSearchBar(
            bottomViewInset: MediaQuery.viewInsetsOf(context).bottom,
            onChanged: _cubit.onSearch,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    unawaited(_cubit.close());
    unawaited(_kodasCubit.close());
    super.dispose();
  }
}
