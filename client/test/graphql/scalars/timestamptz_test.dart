import 'package:church_admin/graphql/scalars/timestamptz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'tstzToString',
    () {
      final value = DateTime.now();
      final valueUtc = DateTime.now().toUtc();

      expect(tstzToString(value), value.toIso8601String());
      expect(tstzToString(valueUtc), valueUtc.toIso8601String());
    },
  );

  test(
    'tstzFromString',
    () {
      final value = DateTime.now();
      final valueUtc = DateTime.now().toUtc();

      expect(tstzFromString(value.toIso8601String()), value);
      expect(tstzFromString(valueUtc.toIso8601String()), valueUtc);
    },
  );

  test(
    'tstzFromString <=> tstzToString',
    () {
      final value = DateTime.now();
      final valueUtc = DateTime.now().toUtc();

      expect(
        tstzToString(tstzFromString(value.toIso8601String())),
        value.toIso8601String(),
      );
      expect(tstzFromString(tstzToString(valueUtc)), valueUtc);

      expect(
        tstzToString(tstzFromString(value.toIso8601String())),
        value.toIso8601String(),
      );
      expect(tstzFromString(tstzToString(valueUtc)), valueUtc);
    },
  );
}
