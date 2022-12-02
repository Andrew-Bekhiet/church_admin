import 'package:church_admin/graphql/scalars/date.dart';
import 'package:church_admin/graphql/scalars/date_range.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Date Range => toString',
    () {
      final dateTimeRange = DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(const Duration(days: 2)),
      );
      expect(
        dateRangeToString(dateTimeRange),
        '[${dateToString(dateTimeRange.start)},${dateToString(dateTimeRange.end)}]',
      );
    },
  );

  test(
    'Date Range => fromString => [date, date]',
    () {
      final expectedDateTimeRange = DateTimeRange(
        start: keepOnlyDate(DateTime.now().toUtc()),
        end: keepOnlyDate(DateTime.now().toUtc().add(const Duration(days: 2))),
      );

      expect(
        dateRangeFromString(dateRangeToString(expectedDateTimeRange)),
        expectedDateTimeRange,
      );
    },
  );

  test(
    'Date Range => fromString => [date, date)',
    () {
      final expectedDateTimeRange = DateTimeRange(
        start: keepOnlyDate(
          DateTime.now().toUtc().toUtc(),
        ),
        end: keepOnlyDate(
          DateTime.now().toUtc().toUtc().add(const Duration(days: 1)),
        ),
      );

      final dateTimeRange = DateTimeRange(
        start: DateTime.now().toUtc().toUtc(),
        end: DateTime.now().toUtc().toUtc().add(const Duration(days: 2)),
      );

      expect(
        dateRangeFromString(
          dateRangeToString(dateTimeRange).replaceAll(']', ')'),
        ),
        expectedDateTimeRange,
      );
    },
  );
  test(
    'Date Range => fromString => (date, date]',
    () {
      final expectedDateTimeRange = DateTimeRange(
        start: keepOnlyDate(
          DateTime.now().toUtc().toUtc().add(const Duration(days: 1)),
        ),
        end: keepOnlyDate(
          DateTime.now().toUtc().toUtc().add(const Duration(days: 2)),
        ),
      );

      final dateTimeRange = DateTimeRange(
        start: DateTime.now().toUtc().toUtc(),
        end: DateTime.now().toUtc().toUtc().add(const Duration(days: 2)),
      );

      expect(
        dateRangeFromString(
          dateRangeToString(dateTimeRange).replaceAll('[', '('),
        ),
        expectedDateTimeRange,
      );
    },
  );
  test(
    'Date Range => fromString => (date, date)',
    () {
      final expectedDateTimeRange = DateTimeRange(
        start: keepOnlyDate(
          DateTime.now().toUtc().toUtc().add(const Duration(days: 1)),
        ),
        end: keepOnlyDate(
          DateTime.now().toUtc().toUtc().add(const Duration(days: 1)),
        ),
      );

      final dateTimeRange = DateTimeRange(
        start: DateTime.now().toUtc().toUtc(),
        end: DateTime.now().toUtc().toUtc().add(const Duration(days: 2)),
      );

      expect(
        dateRangeFromString(
          dateRangeToString(dateTimeRange)
              .replaceAll(']', ')')
              .replaceAll('[', '('),
        ),
        expectedDateTimeRange,
      );
    },
  );
}

DateTime keepOnlyDate(DateTime date) => date.isUtc
    ? DateTime.utc(date.year, date.month, date.day)
    : DateTime(date.year, date.month, date.day);
