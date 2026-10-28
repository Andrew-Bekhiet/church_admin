import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final firstDay = DateTime(2026, 3, 10);
  final secondDay = addCalendarDays(firstDay, 1);
  final thirdDay = addCalendarDays(firstDay, 2);

  test('Date Range => toString', () {
    final dateTimeRange = DateTimeRange(start: firstDay, end: thirdDay);
    expect(
      dateRangeToString(dateTimeRange),
      '[${dateToString(dateTimeRange.start)},${dateToString(dateTimeRange.end)}]',
    );
  });

  test('Date Range => fromString => [date, date]', () {
    final expectedDateTimeRange = DateTimeRange(start: firstDay, end: thirdDay);

    expect(
      dateRangeFromString(dateRangeToString(expectedDateTimeRange)),
      expectedDateTimeRange,
    );
  });

  test('Date Range => fromString => [date, date)', () {
    final expectedDateTimeRange = DateTimeRange(
      start: firstDay,
      end: secondDay,
    );

    final dateTimeRange = DateTimeRange(start: firstDay, end: thirdDay);

    expect(
      dateRangeFromString(
        dateRangeToString(dateTimeRange)?.replaceAll(']', ')'),
      ),
      expectedDateTimeRange,
    );
  });
  test('Date Range => fromString => (date, date]', () {
    final expectedDateTimeRange = DateTimeRange(
      start: secondDay,
      end: thirdDay,
    );

    final dateTimeRange = DateTimeRange(start: firstDay, end: thirdDay);

    expect(
      dateRangeFromString(
        dateRangeToString(dateTimeRange)?.replaceAll('[', '('),
      ),
      expectedDateTimeRange,
    );
  });
  test('Date Range => fromString => (date, date)', () {
    final expectedDateTimeRange = DateTimeRange(
      start: secondDay,
      end: secondDay,
    );

    final dateTimeRange = DateTimeRange(start: firstDay, end: thirdDay);

    expect(
      dateRangeFromString(
        dateRangeToString(dateTimeRange)
            ?.replaceAll(']', ')')
            .replaceAll('[', '('),
      ),
      expectedDateTimeRange,
    );
  });

  group('across the Africa/Cairo DST fall-back on 2026-10-29', () {
    test('an exclusive end on the day after a DST change is the previous calendar midnight', () {
      final range = dateRangeFromString('[2026-10-28,2026-10-30)');

      expect(range?.start, DateTime(2026, 10, 28));
      expect(range?.end, DateTime(2026, 10, 29));
    });

    test(
      'an exclusive start before a DST change is the next calendar midnight',
      () {
        final range = dateRangeFromString('(2026-10-29,2026-10-31]');

        expect(range?.start, DateTime(2026, 10, 30));
        expect(range?.end, DateTime(2026, 10, 31));
      },
    );
  });
}

DateTime addCalendarDays(DateTime date, int days) =>
    DateTime(date.year, date.month, date.day + days);
