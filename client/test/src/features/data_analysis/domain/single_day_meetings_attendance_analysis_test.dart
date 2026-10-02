import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Meeting meeting(String id, String name) => Meeting(
    id: id,
    name: name,
    audience: MeetingAudience.onlyPersons,
    isArchived: false,
  );

  SingleDayRosterMember member(
    String personId, {
    int? studyYearId,
    bool? gender,
    String? studyYearName,
    bool attended = false,
  }) => SingleDayRosterMember(
    personId: personId,
    studyYearId: studyYearId,
    gender: gender,
    studyYearName: studyYearName,
    attended: attended,
  );

  Class class$({
    required String name,
    Color? color,
    int? studyYearOrder,
    int? studyYearToOrder,
    bool? serviceGender,
  }) => Class(
    id: name,
    name: name,
    color: color,
    serviceStudyYear: studyYearOrder,
    serviceStudyYearTo: studyYearToOrder,
    serviceGender: serviceGender,
    studyYear: studyYearOrder == null
        ? null
        : StudyYear(order: studyYearOrder, name: 'سنة $studyYearOrder'),
  );

  SingleDayMeetingsAttendanceAnalysis analysis({
    required List<SingleDayRosterMember> rosterMembers,
    List<Class> classes = const [],
  }) => SingleDayMeetingsAttendanceAnalysis(
    title: 'خدمة',
    rosterMembers: rosterMembers,
    classes: classes,
    meetings: [
      MeetingAttendanceSummary(
        meeting: meeting('m1', 'اجتماع'),
        demographics: const [],
      ),
    ],
  );

  group('SingleDayMeetingsAttendanceAnalysis distinct-person counting', () {
    test('a person attending two meetings counts once', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 1, attended: true),
          member('p1', studyYearId: 1, attended: true),
          member('p2', studyYearId: 1),
        ],
      );

      expect(subject.rosterSize, 2);
      expect(subject.attendedPersonsCount, 1);
      expect(subject.overallAttendanceRate, closeTo(1 / 2, 1e-9));
    });

    test('servant and member rows of one person count once', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 1, attended: true),
          member('p1', studyYearId: 1),
        ],
      );

      expect(subject.rosterSize, 1);
      expect(subject.attendedPersonsCount, 1);
      final rate = subject.classAttendanceRates.single;
      expect(rate.attendedCount, 1);
      expect(rate.rosterCount, 1);
      expect(rate.rate, 1.0);
    });

    test('a person is counted attended when any of their rows attended', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 1),
          member('p1', studyYearId: 1, attended: true),
        ],
      );

      expect(subject.attendedPersonsCount, 1);
    });

    test('overallAttendanceRate is null when the roster is empty', () {
      final subject = analysis(rosterMembers: []);

      expect(subject.rosterSize, 0);
      expect(subject.overallAttendanceRate, isNull);
    });
  });

  group('SingleDayMeetingsAttendanceAnalysis per-class rates', () {
    test('per-class rate divides distinct attendees by distinct roster', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 1, gender: true, attended: true),
          member('p2', studyYearId: 1, gender: true, attended: true),
          member('p3', studyYearId: 1, gender: true, attended: true),
          member('p4', studyYearId: 1, gender: true),
        ],
      );

      final rate = subject.classAttendanceRates.single;
      expect(rate.attendedCount, 3);
      expect(rate.rosterCount, 4);
      expect(rate.rate, closeTo(3 / 4, 1e-9));
    });

    test('a class with roster but no attendance has rate 0', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 1, gender: true, attended: true),
          member('p2', studyYearId: 1, gender: true, attended: true),
          member('p3', studyYearId: 2, gender: false),
          member('p4', studyYearId: 2, gender: false),
        ],
      );

      final absent = subject.classAttendanceRates.firstWhere(
        (c) => c.studyYearId == 2,
      );
      expect(absent.attendedCount, 0);
      expect(absent.rosterCount, 2);
      expect(absent.rate, 0);
    });
  });

  group('SingleDayMeetingsAttendanceAnalysis top/lowest class', () {
    test('topClass picks the highest rate via maxBy', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 1, gender: true, attended: true),
          member('p2', studyYearId: 1, gender: true),
          member('p3', studyYearId: 2, gender: true, attended: true),
          member('p4', studyYearId: 2, gender: true, attended: true),
          member('p5', studyYearId: 2, gender: true, attended: true),
          member('p6', studyYearId: 2, gender: true),
        ],
      );

      expect(subject.topClass?.studyYearId, 2);
      expect(subject.topClass?.rate, closeTo(3 / 4, 1e-9));
    });

    test('lowestClass picks the lowest rate via minBy', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 1, gender: true, attended: true),
          member('p2', studyYearId: 1, gender: true),
          member('p3', studyYearId: 2, gender: true, attended: true),
          member('p4', studyYearId: 2, gender: true, attended: true),
        ],
      );

      expect(subject.lowestClass?.studyYearId, 1);
      expect(subject.lowestClass?.rate, closeTo(1 / 2, 1e-9));
    });

    test('topClass keeps the first class on a rate tie', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 1, gender: true, attended: true),
          member('p2', studyYearId: 1, gender: true),
          member('p3', studyYearId: 2, gender: true, attended: true),
          member('p4', studyYearId: 2, gender: true),
        ],
      );

      expect(subject.topClass?.studyYearId, 1);
    });

    test('lowestClass is null with fewer than two rated classes', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 1, gender: true, attended: true),
          member('p2', studyYearId: 1, gender: true),
        ],
      );

      expect(subject.classAttendanceRates, hasLength(1));
      expect(subject.topClass?.studyYearId, 1);
      expect(subject.lowestClass, isNull);
    });
  });

  group('SingleDayMeetingsAttendanceAnalysis class name and colour', () {
    test('matches a class by study year order and gender', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 3, gender: true, attended: true),
          member('p2', studyYearId: 3, gender: true),
        ],
        classes: [
          class$(
            name: 'أولى إعدادي بنين',
            color: const Color(0xFF112233),
            studyYearOrder: 3,
            serviceGender: true,
          ),
        ],
      );

      final rate = subject.classAttendanceRates.single;
      expect(rate.className, 'أولى إعدادي بنين');
      expect(rate.classColor, const Color(0xFF112233));
      expect(rate.displayName, 'أولى إعدادي بنين');
    });

    test('roster studyYearId matches StudyYear.order, not a separate id', () {
      // The roster's studyYearId equals StudyYear.order (StudyYear.id is
      // `order.toString()`), so matching keys off `studyYear.order`.
      final matching = class$(
        name: 'صف مطابق',
        studyYearOrder: 2,
        serviceGender: false,
      );
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 2, gender: false, attended: true),
        ],
        classes: [matching],
      );

      expect(subject.classAttendanceRates.single.className, 'صف مطابق');
    });

    test('an exact-match class beats a wildcard class for its slice', () {
      final wildcard = class$(name: 'فصل عام');
      final exact = class$(
        name: 'أولى بنين',
        studyYearOrder: 1,
        serviceGender: true,
      );
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 1, gender: true, attended: true),
          member('p2', studyYearId: 2, gender: false, attended: true),
        ],
        // Wildcard first: list order must not let it steal the graded slice.
        classes: [wildcard, exact],
      );

      final gradedSlice = subject.classAttendanceRates.firstWhere(
        (c) => c.studyYearId == 1,
      );
      final otherSlice = subject.classAttendanceRates.firstWhere(
        (c) => c.studyYearId == 2,
      );
      expect(gradedSlice.className, 'أولى بنين');
      expect(otherSlice.className, 'فصل عام');
    });

    test('a class with null gender matches either gender slice', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 4, gender: true, attended: true),
        ],
        classes: [
          class$(name: 'مختلط', studyYearOrder: 4),
        ],
      );

      expect(subject.classAttendanceRates.single.className, 'مختلط');
    });

    test('a range class names every slice its study years cover', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 3, gender: true, attended: true),
          member('p2', studyYearId: 4, gender: false, attended: true),
          member('p3', studyYearId: 5, gender: true, attended: true),
        ],
        classes: [
          class$(name: 'كشافة', studyYearOrder: 3, studyYearToOrder: 4),
        ],
      );

      expect(
        subject.classAttendanceRates.map((c) => (c.studyYearId, c.className)),
        [(3, 'كشافة'), (4, 'كشافة'), (5, null)],
      );
    });

    test('a slice covered by a single-year and a range class counts toward both', () {
      final subject = analysis(
        rosterMembers: [
          member('p1', studyYearId: 3, gender: true, attended: true),
          member('p2', studyYearId: 4, gender: true, attended: true),
        ],
        classes: [
          class$(name: 'كشافة', studyYearOrder: 3, studyYearToOrder: 4),
          class$(name: 'ثالثة', studyYearOrder: 3),
        ],
      );

      expect(
        subject.classAttendanceRates.map((c) => (c.studyYearId, c.className)),
        [(3, 'ثالثة'), (3, 'كشافة'), (4, 'كشافة')],
      );
    });

    test('falls back to grade/gender label when no class matches', () {
      final subject = analysis(
        rosterMembers: [
          member(
            'p1',
            studyYearId: 1,
            gender: true,
            studyYearName: 'أولى',
            attended: true,
          ),
        ],
      );

      final rate = subject.classAttendanceRates.single;
      expect(rate.className, isNull);
      expect(rate.displayName, 'أولى - بنين');
    });
  });
}
