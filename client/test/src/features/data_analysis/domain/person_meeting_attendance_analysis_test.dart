import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PersonMeetingAttendanceAnalysis', () {
    PersonMeetingAttendanceAnalysis analysis({
      required List<DateTime> held,
      required List<DateTime> attended,
    }) => PersonMeetingAttendanceAnalysis(
      personId: 'p1',
      meeting: const Meeting(
        id: 'm1',
        name: 'اجتماع',
        audience: MeetingAudience.onlyPersons,
        isArchived: false,
      ),
      asServant: false,
      heldDays: held,
      attendedDays: attended.toSet(),
    );

    final d1 = DateTime(2026, 6);
    final d2 = DateTime(2026, 6, 8);
    final d3 = DateTime(2026, 6, 15);
    final d4 = DateTime(2026, 6, 22);
    final d5 = DateTime(2026, 6, 29);

    test('no held days yields zeroed metrics', () {
      final a = analysis(held: const [], attended: const []);

      expect(a.heldCount, 0);
      expect(a.attendedCount, 0);
      expect(a.absentCount, 0);
      expect(a.percent, 0);
      expect(a.lastAttended, isNull);
      expect(a.weeksSinceLastAttended, isNull);
      expect(a.currentStreak, 0);
      expect(a.longestStreak, 0);
      expect(a.absenceStreak, 0);
      expect(a.currentStreakRange, isNull);
      expect(a.longestStreakRange, isNull);
    });

    test('all held days attended is 100% and a full streak', () {
      final a = analysis(held: [d1, d2, d3], attended: [d1, d2, d3]);

      expect(a.heldCount, 3);
      expect(a.attendedCount, 3);
      expect(a.absentCount, 0);
      expect(a.percent, 1);
      expect(a.lastAttended, d3);
      expect(a.currentStreak, 3);
      expect(a.longestStreak, 3);
      expect(a.absenceStreak, 0);
      expect(a.currentStreakRange, DateTimeRange(start: d1, end: d3));
      expect(a.longestStreakRange, DateTimeRange(start: d1, end: d3));
    });

    test('missing the latest held day zeroes the current streak', () {
      final a = analysis(held: [d1, d2, d3], attended: [d1, d2]);

      expect(a.attendedCount, 2);
      expect(a.absentCount, 1);
      expect(a.percent, closeTo(2 / 3, 1e-9));
      expect(a.lastAttended, d2);
      expect(a.currentStreak, 0);
      expect(a.longestStreak, 2);
      expect(a.absenceStreak, 1);
      expect(a.currentStreakRange, isNull);
      expect(a.longestStreakRange, DateTimeRange(start: d1, end: d2));
    });

    test('gaps produce the right current and longest streaks', () {
      final a = analysis(
        held: [d1, d2, d3, d4, d5],
        attended: [d1, d2, d4, d5],
      );

      expect(a.attendedCount, 4);
      expect(a.absentCount, 1);
      expect(a.currentStreak, 2);
      expect(a.longestStreak, 2);
      expect(a.lastAttended, d5);
      expect(a.absenceStreak, 0);
      expect(a.currentStreakRange, DateTimeRange(start: d4, end: d5));
      // Both runs (d1-d2 and d4-d5) are length 2; the first one found wins.
      expect(a.longestStreakRange, DateTimeRange(start: d1, end: d2));
    });

    test(
      'missing every held day yields an absence streak, no current streak',
      () {
        final a = analysis(held: [d1, d2, d3], attended: const []);

        expect(a.currentStreak, 0);
        expect(a.absenceStreak, 3);
        expect(a.currentStreakRange, isNull);
        expect(a.longestStreakRange, isNull);
      },
    );

    test('attended days outside held days do not inflate counts', () {
      final a = analysis(held: [d1, d2], attended: [d1, d2, d3]);

      // d3 was not a held day, so it cannot count towards attendance.
      expect(a.attendedCount, 2);
      expect(a.percent, 1);
    });

    test(
      'weeksSinceLastAttended counts whole weeks from the last attendance',
      () {
        final now = DateTime.now();
        final today = DateTime(now.year, now.month, now.day);
        final threeWeeksAgo = today.subtract(const Duration(days: 21));

        final a = analysis(
          held: [threeWeeksAgo, today],
          attended: [threeWeeksAgo],
        );

        expect(a.weeksSinceLastAttended, 3);
      },
    );

    test('single held day attended', () {
      final a = analysis(held: [d1], attended: [d1]);

      expect(a.heldCount, 1);
      expect(a.currentStreak, 1);
      expect(a.longestStreak, 1);
      expect(a.percent, 1);
    });
  });
}
