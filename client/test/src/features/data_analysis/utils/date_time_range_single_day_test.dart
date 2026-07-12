import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DateTimeRangeSingleDay', () {
    test('same-day range is a single day', () {
      final range = DateTimeRange(
        start: DateTime(2026, 7, 10),
        end: DateTime(2026, 7, 10),
      );

      expect(range.isSingleDay, isTrue);
    });

    test('two consecutive days are not a single day', () {
      final range = DateTimeRange(
        start: DateTime(2026, 7, 10),
        end: DateTime(2026, 7, 11),
      );

      expect(range.isSingleDay, isFalse);
    });

    test('Today preset range is a single day', () {
      final range = TodayDateTimeRangePreset().range;

      expect(DateUtils.isSameDay(range.start, range.end), isTrue);
      expect(range.isSingleDay, isTrue);
    });
  });
}
