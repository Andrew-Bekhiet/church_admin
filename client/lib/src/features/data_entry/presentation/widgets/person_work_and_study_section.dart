import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonWorkAndStudySection extends StatelessWidget {
  final Person person;

  const PersonWorkAndStudySection({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('حالة العمل'),
          subtitle: Text(person.workStatus?.label ?? ''),
        ),
        if (person.isStudent) ...[
          ListTile(
            title: const Text('السنة الدراسية'),
            subtitle: Text(person.studyYear?.name ?? ''),
          ),
          if ((person.studyYearId ?? person.studyYear?.order) != null &&
              (person.studyYearId ?? person.studyYear?.order)! > 12)
            ListTile(
              title: const Text('الكلية'),
              subtitle: Text(person.college?.name ?? ''),
            )
          else
            ListTile(
              title: const Text('المدرسة'),
              subtitle: Text(person.school?.name ?? ''),
            ),
        ] else
          ListTile(
            title: const Text('المؤهل'),
            subtitle: Text(person.qualification?.name ?? ''),
          ),
        if (person.workStatus == WorkStatus.employed ||
            person.workStatus == WorkStatus.retired) ...[
          ListTile(
            title: const Text('الوظيفة'),
            subtitle: Text(person.job?.name ?? ''),
          ),
          ListTile(
            title: const Text('تفاصيل الوظيفة'),
            subtitle: Text(person.jobDescription ?? ''),
          ),
        ],
      ],
    );
  }
}
