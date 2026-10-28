import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SpiritDataSave', () {
    final savedAt = DateTime(2026, 10, 23);

    Person personLastRecordedDaysBeforeSaving({
      int? kodasDays,
      int? confessionDays,
    }) => Person(
      id: 'p1',
      name: 'مينا',
      lastKodas: kodasDays == null
          ? null
          : LastRecordedByInfo(
              time: savedAt.subtract(Duration(days: kodasDays)),
            ),
      lastConfession: confessionDays == null
          ? null
          : LastRecordedByInfo(
              time: savedAt.subtract(Duration(days: confessionDays)),
            ),
    );

    SpiritDataSave saveOf(Person person) =>
        SpiritDataSave(person, savedAt: savedAt, isSuccess: true);

    test(
      'reports how recent communion and confession were in coarse buckets only',
      () {
        final event = saveOf(
          personLastRecordedDaysBeforeSaving(kodasDays: 3, confessionDays: 45),
        );

        expect(event.communionRecency, SpiritDataRecency.withinWeek);
        expect(event.confessionRecency, SpiritDataRecency.withinTwoMonths);
      },
    );

    test('a communion three weeks before saving is within the month', () {
      final event = saveOf(personLastRecordedDaysBeforeSaving(kodasDays: 21));

      expect(event.communionRecency, SpiritDataRecency.withinMonth);
    });

    test('a confession over two months before saving is older', () {
      final event = saveOf(
        personLastRecordedDaysBeforeSaving(confessionDays: 61),
      );

      expect(event.confessionRecency, SpiritDataRecency.older);
    });
  });
}
