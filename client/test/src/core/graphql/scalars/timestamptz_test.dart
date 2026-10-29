import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final value = DateTime(2026, 3, 10, 14, 30, 15, 123);
  final valueUtc = value.toUtc();

  test(
    'tstzToString returns ISO date in UTC',
    () {
      expect(tstzToString(value), valueUtc.toIso8601String());
      expect(tstzToString(valueUtc), valueUtc.toIso8601String());
      expect(
        tstzToString(DateTime.utc(2026, 7, 3, 12)),
        '2026-07-03T12:00:00.000Z',
      );
    },
  );

  test(
    'tstzFromString parses ISO date in local timezone',
    () {
      expect(tstzFromString(value.toIso8601String()), value);
      expect(tstzFromString(valueUtc.toIso8601String()), value);

      expect(
        tstzFromString('2026-07-03T12:00:00.000Z'),
        DateTime.utc(2026, 7, 3, 12).toLocal(),
      );
    },
  );

  test(
    'tstzFromString <=> tstzToString',
    () {
      expect(tstzFromString(tstzToString(value)), value);
      expect(tstzFromString(tstzToString(valueUtc)), value);
    },
  );
}
