import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonAttendanceAnalysisView extends StatelessWidget {
  final String personId;
  final List<PersonMeetingAttendanceAnalysis> analyses;
  final DateTimeRange range;
  final bool showTime;

  const PersonAttendanceAnalysisView({
    required this.personId,
    required this.analyses,
    required this.range,
    this.showTime = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (analyses.isEmpty) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Center(child: Text('لا يوجد اجتماعات لعرض حضورها')),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final analysis in analyses) ...[
          const Divider(),
          PersonMeetingAttendanceCard(
            personId: personId,
            analysis: analysis,
            range: range,
            showTime: showTime,
          ),
        ],
      ],
    );
  }
}
