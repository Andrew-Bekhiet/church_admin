import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final studyYear = StudyYear(order: 3, name: 'ثالثة');

  group('a service permission describes', () {
    for (final (studyYear, gender, description) in [
      (null, Gender.any, '(جميع البيانات داخل الخدمة)'),
      (null, Gender.male, '(جميع البنين في الخدمة)'),
      (null, Gender.female, '(جميع البنات داخل الخدمة)'),
      (studyYear, Gender.any, '(جميع بيانات ثالثة)'),
      (studyYear, Gender.female, '(ثالثة بنات)'),
    ]) {
      test('${studyYear?.name ?? 'every study year'} and ${gender.name} '
          'as $description', () {
        final permission = AdminOnData(
          permissionId: 'permission-id',
          serviceStudyYearData: studyYear,
          serviceGender: gender,
        );

        expect(permission.describeServicePermission(), description);
      });
    }
  });
}
