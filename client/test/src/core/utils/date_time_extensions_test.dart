import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:timeago/timeago.dart';

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

  group('toArabicElapsedTimeOrNowIfUnderAMinute', () {
    setUpAll(() => setLocaleMessages('ar', ArMessages()));

    test('reads as now while less than a minute has passed', () {
      final time = DateTime.utc(2026, 11, 20, 7, 5);

      expect(
        time.toArabicElapsedTimeOrNowIfUnderAMinute(
          now: time.add(const Duration(seconds: 59)),
        ),
        'الآن',
      );
    });

    test('reads as the minutes that passed once a minute has passed', () {
      final time = DateTime.utc(2026, 11, 20, 7, 5);

      expect(
        time.toArabicElapsedTimeOrNowIfUnderAMinute(
          now: time.add(const Duration(minutes: 3)),
        ),
        'منذ 3 دقائق',
      );
    });
  });
}
