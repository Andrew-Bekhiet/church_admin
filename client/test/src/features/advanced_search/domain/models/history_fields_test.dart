import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'attendance history is searched by the fields attendance records have',
    () {
      expect(
        PersonFields().attendanceHistory.fieldQueryableType,
        AdvancedQueriesMetadata().attendanceRecord,
      );
    },
  );

  test(
    'history entries offer no father-visit flag, which only visits store',
    () {
      expect(
        AdvancedQueriesMetadata().lastRecordedByInfo.filterableFields,
        isNot(contains(LastRecordedByInfoFields().isFatherVisit)),
      );
    },
  );
}
