import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'tstzToString returns ISO date in UTC',
    () {
      final value = DateTime.now();
      final valueUtc = value.toUtc();

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
      final value = DateTime.now();
      final valueUtc = value.toUtc();

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
      final value = DateTime.now();
      final valueUtc = value.toUtc();

      expect(tstzFromString(tstzToString(value)), value);
      expect(tstzFromString(tstzToString(valueUtc)), value);
    },
  );
}
