import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('inclusiveCalendarDays', () {
    test('a single-day range covers one day', () {
      final day = DateTime(2026, 10, 28);

      expect(DateTimeRange(start: day, end: day).inclusiveCalendarDays, 1);
    });

    test('a 30-day preset covers its start and end dates', () {
      final preset = PastMonthDateTimeRangePreset();

      expect(
        preset.range.inclusiveCalendarDays,
        preset.duration.inDays + 1,
      );
    });

    test('a range spanning a DST change counts calendar dates', () {
      final range = DateTimeRange(
        start: DateTime(2026, 3),
        end: DateTime(2026, 11),
      );

      expect(range.inclusiveCalendarDays, 246);
    });

    test('time of day does not change the count', () {
      final range = DateTimeRange(
        start: DateTime(2026, 10, 1, 23, 59),
        end: DateTime(2026, 10, 3, 0, 1),
      );

      expect(range.inclusiveCalendarDays, 3);
    });
  });

  group('calendarDaysUntil', () {
    test('ignores time of day', () {
      final createdAt = DateTime(2026, 10, 1, 23, 30);
      final expiresAt = DateTime(2026, 10, 4, 1);

      expect(createdAt.calendarDaysUntil(expiresAt), 3);
    });

    test('counts across a DST change', () {
      expect(
        DateTime(2026, 3).calendarDaysUntil(DateTime(2026, 11)),
        245,
      );
    });

    test('is zero within the same date', () {
      expect(
        DateTime(2026, 10, 1, 8).calendarDaysUntil(DateTime(2026, 10, 1, 20)),
        0,
      );
    });
  });
}
