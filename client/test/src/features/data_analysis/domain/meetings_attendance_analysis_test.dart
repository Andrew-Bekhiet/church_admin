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

  final d1 = DateTime(2026, 6);
  final d2 = DateTime(2026, 6, 8);
  final d3 = DateTime(2026, 6, 15);

  group('MeetingAttendanceSummary', () {
    test('empty demographics yields zeroed metrics', () {
      final summary = MeetingAttendanceSummary(
        meeting: const Meeting(
          id: 'm1',
          name: 'اجتماع',
          audience: MeetingAudience.onlyPersons,
          isArchived: false,
        ),
        demographics: [],
      );

      expect(summary.heldCount, 0);
      expect(summary.totalAttendances, 0);
      expect(summary.averageAttendance, 0);
      expect(summary.peakAttendance, 0);
      expect(summary.latestDay, isNull);
    });

    test('rolls up demographics into days, summed per day', () {
      final summary = MeetingAttendanceSummary(
        meeting: meeting('m1', 'اجتماع'),
        demographics: [
          demographic(d1, persons: 3, studyYearId: 1),
          demographic(d1, persons: 1, servants: 1, studyYearId: 2),
          demographic(d2, persons: 2, servants: 1),
          demographic(d3, persons: 6, servants: 2),
        ],
      );

      expect(summary.heldCount, 3);
      expect(summary.totalAttendances, 16);
      expect(summary.averageAttendance, closeTo(16 / 3, 1e-9));
      expect(summary.peakAttendance, 8);
      expect(summary.latestDay?.day, d3);
      expect(summary.days.map((d) => d.day), [d1, d2, d3]);
      expect(summary.days.first.totalCount, 5);
    });
  });

  group('MeetingsAttendanceAnalysis', () {
    test('merges per-day totals across meetings, sorted ascending', () {
      final analysis = MeetingsAttendanceAnalysis(
        title: 'خدمة',
        meetings: [
          MeetingAttendanceSummary(
            meeting: meeting('m1', 'أول'),
            demographics: [
              demographic(d1, persons: 5),
              demographic(d2, persons: 3),
            ],
          ),
          MeetingAttendanceSummary(
            meeting: meeting('m2', 'ثانٍ'),
            demographics: [
              demographic(d1, persons: 2),
              demographic(d3, persons: 4),
            ],
          ),
        ],
      );

      final aggregate = analysis.aggregateDays;
      expect(aggregate.map((d) => d.day), [d1, d2, d3]);
      expect(aggregate.map((d) => d.totalCount), [7, 3, 4]);

      expect(analysis.heldCount, 3);
      expect(analysis.totalAttendances, 14);
      expect(analysis.averageAttendance, closeTo(14 / 3, 1e-9));
      expect(analysis.peakAttendance, 7);
      expect(analysis.latestDay?.day, d3);
      expect(analysis.peakDay?.day, d1);
      expect(analysis.hasMeetingBreakdown, isTrue);
    });

    test('merges persons and servants counts separately', () {
      final analysis = MeetingsAttendanceAnalysis(
        title: 'خدمة',
        meetings: [
          MeetingAttendanceSummary(
            meeting: meeting('m1', 'أول'),
            demographics: [demographic(d1, persons: 5, servants: 1)],
          ),
          MeetingAttendanceSummary(
            meeting: meeting('m2', 'ثانٍ'),
            demographics: [demographic(d1, persons: 2, servants: 3)],
          ),
        ],
      );

      final merged = analysis.aggregateDays.single;
      expect(merged.personsCount, 7);
      expect(merged.servantsCount, 4);
      expect(merged.totalCount, 11);
    });

    test('a single meeting has no breakdown', () {
      final analysis = MeetingsAttendanceAnalysis(
        title: 'اجتماع',
        meetings: [
          MeetingAttendanceSummary(
            meeting: meeting('m1', 'اجتماع'),
            demographics: [demographic(d1, persons: 3)],
          ),
        ],
      );

      expect(analysis.hasMeetingBreakdown, isFalse);
      expect(analysis.heldCount, 1);
    });

    test('no meetings yields zeroed metrics', () {
      final analysis = MeetingsAttendanceAnalysis(title: 'فارغ', meetings: []);

      expect(analysis.aggregateDays, isEmpty);
      expect(analysis.heldCount, 0);
      expect(analysis.averageAttendance, 0);
      expect(analysis.peakAttendance, 0);
      expect(analysis.latestDay, isNull);
      expect(analysis.peakDay, isNull);
      expect(analysis.hasMeetingBreakdown, isFalse);
    });

    test(
      'demographicBreakdown sums per study year + gender across meetings',
      () {
        final analysis = MeetingsAttendanceAnalysis(
          title: 'خدمة',
          meetings: [
            MeetingAttendanceSummary(
              meeting: meeting('m1', 'أول'),
              demographics: [
                demographic(
                  d1,
                  persons: 5,
                  studyYearId: 1,
                  gender: true,
                  studyYearName: 'أولى',
                ),
                demographic(d1, persons: 3, studyYearId: 2, gender: false),
              ],
            ),
            MeetingAttendanceSummary(
              meeting: meeting('m2', 'ثانٍ'),
              demographics: [
                demographic(
                  d2,
                  persons: 2,
                  studyYearId: 1,
                  gender: true,
                  studyYearName: 'أولى',
                ),
              ],
            ),
          ],
        );

        final breakdown = analysis.demographicBreakdown;
        expect(breakdown, hasLength(2));
        expect(breakdown.first.studyYearId, 1);
        expect(breakdown.first.studyYearName, 'أولى');
        expect(breakdown.first.totalCount, 7);
        expect(breakdown.last.studyYearId, 2);
        expect(breakdown.last.totalCount, 3);
        expect(analysis.hasDemographicBreakdown, isTrue);
      },
    );

    test('a single demographic slice has no demographic breakdown', () {
      final analysis = MeetingsAttendanceAnalysis(
        title: 'فصل',
        meetings: [
          MeetingAttendanceSummary(
            meeting: meeting('m1', 'اجتماع'),
            demographics: [
              demographic(d1, persons: 4, studyYearId: 1, gender: true),
              demographic(d2, persons: 2, studyYearId: 1, gender: true),
            ],
          ),
        ],
      );

      expect(analysis.demographicBreakdown, hasLength(1));
      expect(analysis.hasDemographicBreakdown, isFalse);
    });
  });
}
