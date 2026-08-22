import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class UserAnalysisScreen extends StatelessWidget {
  final User user;

  const UserAnalysisScreen({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    final personId = user.person?.id;

    return AttendanceAnalysisScaffold(
      title: 'تحليل الحضور ل${user.name}',
      personId: personId,
      asServant: true,
      initialRangePreset: PastQuarterDateTimeRangePreset(),
      sections: const [],
      bodyBuilder: (context, options, refreshTick) {
        if (personId == null) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: Center(child: Text('لا يوجد مخدوم مرتبط بهذا المستخدم')),
          );
        }

        return PersonAttendanceAnalysisSection(
          key: ValueKey((personId, options, refreshTick)),
          personId: personId,
          options: options,
          asServant: true,
        );
      },
    );
  }
}
