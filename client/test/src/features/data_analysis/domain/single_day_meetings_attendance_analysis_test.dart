import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Meeting meeting(String id, String name) => Meeting(
    id: id,
    name: name,
    audience: MeetingAudience.onlyPersons,
    isArchived: false,
  );

  MeetingDayDemographicCounts demographic(
    DateTime d, {
    int persons = 0,
    int servants = 0,
    int? studyYearId,
    bool? gender,
    String? studyYearName,
  }) => MeetingDayDemographicCounts(
    day: d,
    personsCount: persons,
    servantsCount: servants,
    totalCount: persons + servants,
    studyYearId: studyYearId,
    gender: gender,
    studyYearName: studyYearName,
  );

  RosterDemographicEntry roster({
    int? studyYearId,
    bool? gender,
    String? studyYearName,
  }) => (
    studyYearId: studyYearId,
    gender: gender,
    studyYearName: studyYearName,
  );

  SingleDayMeetingsAttendanceAnalysis analysis({
    required List<MeetingDayDemographicCounts> demographics,
    required List<RosterDemographicEntry> rosterDemographics,
  }) => SingleDayMeetingsAttendanceAnalysis(
    title: 'خدمة',
    rosterDemographics: rosterDemographics,
    meetings: [
      MeetingAttendanceSummary(
        meeting: meeting('m1', 'اجتماع'),
        demographics: demographics,
      ),
    ],
  );

  final day = DateTime(2026, 7, 12);

  group('SingleDayMeetingsAttendanceAnalysis', () {
    test('overallAttendanceRate divides total attendance by roster size', () {
      final subject = analysis(
        demographics: [demographic(day, persons: 6)],
        rosterDemographics: [
          for (var i = 0; i < 8; i++) roster(studyYearId: 1),
        ],
      );

      expect(subject.rosterSize, 8);
      expect(subject.totalAttendances, 6);
      expect(subject.overallAttendanceRate, closeTo(6 / 8, 1e-9));
    });

    test('overallAttendanceRate is null when roster is empty', () {
      final subject = analysis(
        demographics: [demographic(day, persons: 3)],
        rosterDemographics: [],
      );

      expect(subject.rosterSize, 0);
      expect(subject.overallAttendanceRate, isNull);
    });

    test('per-class rate joins attendance with roster counts', () {
      final subject = analysis(
        demographics: [
          demographic(day, persons: 3, studyYearId: 1, gender: true),
        ],
        rosterDemographics: [
          roster(studyYearId: 1, gender: true),
          roster(studyYearId: 1, gender: true),
          roster(studyYearId: 1, gender: true),
          roster(studyYearId: 1, gender: true),
        ],
      );

      final rate = subject.classAttendanceRates.single;
      expect(rate.attendedCount, 3);
      expect(rate.rosterCount, 4);
      expect(rate.rate, closeTo(3 / 4, 1e-9));
    });

    test('class present in roster but absent from attendance has rate 0', () {
      final subject = analysis(
        demographics: [
          demographic(day, persons: 2, studyYearId: 1, gender: true),
        ],
        rosterDemographics: [
          roster(studyYearId: 1, gender: true),
          roster(studyYearId: 1, gender: true),
          roster(studyYearId: 2, gender: false),
          roster(studyYearId: 2, gender: false),
        ],
      );

      final absent = subject.classAttendanceRates.firstWhere(
        (c) => c.studyYearId == 2,
      );
      expect(absent.attendedCount, 0);
      expect(absent.rosterCount, 2);
      expect(absent.rate, 0);
    });

    test('attendance with no matching roster row has null rate', () {
      final subject = analysis(
        demographics: [
          demographic(day, persons: 2, studyYearId: 3, gender: true),
        ],
        rosterDemographics: [],
      );

      final orphan = subject.classAttendanceRates.single;
      expect(orphan.attendedCount, 2);
      expect(orphan.rosterCount, 0);
      expect(orphan.rate, isNull);
    });

    test('topClass picks the highest attendance rate', () {
      final subject = analysis(
        demographics: [
          demographic(day, persons: 2, studyYearId: 1, gender: true),
          demographic(day, persons: 3, studyYearId: 2, gender: true),
        ],
        rosterDemographics: [
          roster(studyYearId: 1, gender: true),
          roster(studyYearId: 1, gender: true),
          roster(studyYearId: 1, gender: true),
          roster(studyYearId: 1, gender: true),
          roster(studyYearId: 2, gender: true),
          roster(studyYearId: 2, gender: true),
          roster(studyYearId: 2, gender: true),
          roster(studyYearId: 2, gender: true),
        ],
      );

      expect(subject.topClass?.studyYearId, 2);
      expect(subject.topClass?.rate, closeTo(3 / 4, 1e-9));
    });

    test('topClass keeps the first class on a rate tie', () {
      final subject = analysis(
        demographics: [
          demographic(day, persons: 2, studyYearId: 1, gender: true),
          demographic(day, persons: 2, studyYearId: 2, gender: true),
        ],
        rosterDemographics: [
          roster(studyYearId: 1, gender: true),
          roster(studyYearId: 1, gender: true),
          roster(studyYearId: 2, gender: true),
          roster(studyYearId: 2, gender: true),
        ],
      );

      expect(subject.topClass?.studyYearId, 1);
    });

    test('topClass ignores classes with no roster (undefined rate)', () {
      final subject = analysis(
        demographics: [
          demographic(day, persons: 9, studyYearId: 5, gender: true),
          demographic(day, persons: 1, studyYearId: 1, gender: true),
        ],
        rosterDemographics: [
          roster(studyYearId: 1, gender: true),
          roster(studyYearId: 1, gender: true),
        ],
      );

      expect(subject.topClass?.studyYearId, 1);
      expect(subject.topClass?.rate, closeTo(1 / 2, 1e-9));
    });
  });
}
