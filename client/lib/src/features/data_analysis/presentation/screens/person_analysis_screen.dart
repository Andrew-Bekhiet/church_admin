import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonAnalysisScreen extends StatelessWidget {
  final Person person;

  const PersonAnalysisScreen({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    return AttendanceAnalysisScaffold(
      title: 'تحليل الحضور ل${person.name}',
      personId: person.id,
      initialRangePreset: PastQuarterDateTimeRangePreset(),
      sections: PersonAnalysisSection.values,
      bodyBuilder: (context, options, refreshTick) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PersonAttendanceAnalysisSection(
            key: ValueKey(('attendance', person.id, options, refreshTick)),
            personId: person.id,
            options: options,
          ),
          PersonHistoryChartsView(
            key: ValueKey(('history', person.id, options, refreshTick)),
            person: person,
            options: options,
          ),
        ],
      ),
    );
  }
}
