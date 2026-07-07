import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MeetingDay day(DateTime d, int total) => MeetingDay(
    day: d,
    personsCount: total,
    servantsCount: 0,
    totalCount: total,
  );

  group('rollupBy', () {
    test('day granularity returns the input sorted, unmerged', () {
      final d1 = DateTime(2026, 6, 2);
      final d2 = DateTime(2026, 6);

      final result = [
        day(d1, 3),
        day(d2, 5),
      ].rollupBy(AttendanceGranularity.day);

      expect(result.map((d) => d.day), [d2, d1]);
      expect(result.map((d) => d.totalCount), [5, 3]);
    });

    test('week granularity buckets by the Sunday at or before each day', () {
      // Monday 2026-06-01 and Wednesday 2026-06-03 share the week starting
      // Sunday 2026-05-31; Monday 2026-06-08 falls in the next week.
      final monday = DateTime(2026, 6);
      final wednesday = DateTime(2026, 6, 3);
      final nextMonday = DateTime(2026, 6, 8);

      final result = [
        day(monday, 2),
        day(wednesday, 3),
        day(nextMonday, 4),
      ].rollupBy(AttendanceGranularity.week);

      expect(result.map((d) => d.day), [
        DateTime(2026, 5, 31),
        DateTime(2026, 6, 7),
      ]);
      expect(result.map((d) => d.totalCount), [5, 4]);
    });

    test('a Sunday buckets to itself', () {
      final sunday = DateTime(2026, 6, 7);

      final result = [day(sunday, 2)].rollupBy(AttendanceGranularity.week);

      expect(result.single.day, sunday);
    });

    test('month granularity buckets to the 1st of the month', () {
      final result = [
        day(DateTime(2026, 6), 2),
        day(DateTime(2026, 6, 15), 3),
        day(DateTime(2026, 7), 4),
      ].rollupBy(AttendanceGranularity.month);

      expect(result.map((d) => d.day), [DateTime(2026, 6), DateTime(2026, 7)]);
      expect(result.map((d) => d.totalCount), [5, 4]);
    });

    test('empty input yields an empty result', () {
      expect(
        const <MeetingDay>[].rollupBy(AttendanceGranularity.week),
        isEmpty,
      );
    });

    test('sums persons and servants counts within a bucket', () {
      final d1 = MeetingDay(
        day: DateTime(2026, 6),
        personsCount: 3,
        servantsCount: 1,
        totalCount: 4,
      );
      final d2 = MeetingDay(
        day: DateTime(2026, 6, 2),
        personsCount: 2,
        servantsCount: 2,
        totalCount: 4,
      );

      final result = [d1, d2].rollupBy(AttendanceGranularity.week);

      expect(result.single.personsCount, 5);
      expect(result.single.servantsCount, 3);
      expect(result.single.totalCount, 8);
    });
  });
}
