import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonAttendanceAnalysisSection extends StatelessWidget {
  final String personId;
  final PersonAnalysisOptions options;
  final bool? asServant;
  final bool showTime;

  const PersonAttendanceAnalysisSection({
    required this.personId,
    required this.options,
    this.showTime = true,
    this.asServant,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PersonAttendanceAnalysisCubit(
        personId: personId,
        options: options,
        asServant: asServant,
      ),
      child:
          BlocBuilder<
            PersonAttendanceAnalysisCubit,
            PersonAttendanceAnalysisState
          >(
            builder: (context, state) {
              return switch (state) {
                PersonAttendanceAnalysisLoading() => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Center(child: CircularProgressIndicator()),
                ),
                PersonAttendanceAnalysisEmpty() => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  child: Center(
                    child: Text('لم يتم اختيار اجتماعات للتحليل'),
                  ),
                ),
                PersonAttendanceAnalysisError(:final error) =>
                  AttendanceAnalysisErrorView(
                    error: error,
                    onRetry: () =>
                        context.read<PersonAttendanceAnalysisCubit>().load(
                          options,
                        ),
                  ),
                PersonAttendanceAnalysisLoaded(:final analyses) =>
                  PersonAttendanceAnalysisView(
                    personId: personId,
                    analyses: analyses,
                    range: options.dateRange,
                    showTime: showTime,
                  ),
              };
            },
          ),
    );
  }
}
