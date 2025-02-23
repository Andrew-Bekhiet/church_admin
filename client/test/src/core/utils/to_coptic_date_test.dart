import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'CopticCalendarConverter',
    () {
      expect(
        DateTime(2025, 2, 11).toCopticDate(),
        (year: 1741, month: 6, day: 4),
      );

      expect(
        DateTime(2024, 11, 30).toCopticDate(),
        (year: 1741, month: 3, day: 21),
      );

      expect(
        DateTime(2024, 7, 27).toCopticDate(),
        (year: 1740, month: 11, day: 20),
      );

      expect(
        DateTime(2020, 11, 4).toCopticDate(),
        (year: 1737, month: 2, day: 25),
      );

      expect(
        DateTime(2020, 8, 6).toCopticDate(),
        (year: 1736, month: 11, day: 30),
      );

      expect(
        DateTime(2024, 7, 27).toCopticDate(),
        (year: 1740, month: 11, day: 20),
      );

      expect(
        DateTime(2024, 9, 4).toCopticDate(),
        (year: 1740, month: 12, day: 29),
      );

      expect(
        DateTime(2024, 9, 11).toCopticDate(),
        (year: 1741, month: 1, day: 1),
      );

      expect(
        DateTime(2024, 10, 22).toCopticDate(),
        (year: 1741, month: 2, day: 12),
      );

      expect(
        DateTime(2024, 10, 28).toCopticDate(),
        (year: 1741, month: 2, day: 18),
      );

      expect(
        DateTime(2024, 10, 29).toCopticDate(),
        (year: 1741, month: 2, day: 19),
      );

      expect(
        DateTime(2024, 10, 30).toCopticDate(),
        (year: 1741, month: 2, day: 20),
      );

      expect(
        DateTime(2024, 10, 31).toCopticDate(),
        (year: 1741, month: 2, day: 21),
      );

      expect(
        DateTime(2024, 11).toCopticDate(),
        (year: 1741, month: 2, day: 22),
      );

      expect(
        DateTime(2024, 11, 4).toCopticDate(),
        (year: 1741, month: 2, day: 25),
      );

      expect(
        DateTime(2024, 11, 16).toCopticDate(),
        (year: 1741, month: 3, day: 7),
      );

      expect(
        DateTime(2024, 11, 25).toCopticDate(),
        (year: 1741, month: 3, day: 16),
      );
    },
  );
}
