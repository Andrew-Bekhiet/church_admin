import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Person =>', () {
    test(
      'spiritDataUpToDate_whenRecordedDatesExceedConfiguredAge_returnsFalse',
      () {
        final now = DateTime(2026, 9, 9);
        final person = Person(
          id: 'person-id',
          name: 'الخادم',
          lastConfession: LastRecordedByInfo(
            time: now.subtract(const Duration(days: 31)),
          ),
          lastKodas: LastRecordedByInfo(
            time: now.subtract(const Duration(days: 30)),
          ),
        );

        expect(
          person.spiritDataUpToDate(
            maxAge: const Duration(days: 30),
            now: now,
          ),
          isFalse,
        );
      },
    );
  });
}
