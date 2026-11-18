import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart' show DateUtils;

void main() {
  final firstDay = DateTime(2026, 3, 10);
  final secondDay = DateUtils.addDaysToDate(firstDay, 1);
  final thirdDay = DateUtils.addDaysToDate(firstDay, 2);

  test('Date Range => toString', () {
    expect(
      dateRangeToString(DateTimeRange(start: firstDay, end: thirdDay)),
      '[2026-03-10,2026-03-12]',
    );
  });

  test('Date Range => fromString => [date, date]', () {
    expect(
      dateRangeFromString('[2026-03-10,2026-03-12]'),
      DateTimeRange(start: firstDay, end: thirdDay),
    );
  });

  test('Date Range => fromString => [date, date)', () {
    expect(
      dateRangeFromString('[2026-03-10,2026-03-12)'),
      DateTimeRange(start: firstDay, end: secondDay),
    );
  });

  test('Date Range => fromString => (date, date]', () {
    expect(
      dateRangeFromString('(2026-03-10,2026-03-12]'),
      DateTimeRange(start: secondDay, end: thirdDay),
    );
  });

  test('Date Range => fromString => (date, date)', () {
    expect(
      dateRangeFromString('(2026-03-10,2026-03-12)'),
      DateTimeRange(start: secondDay, end: secondDay),
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
