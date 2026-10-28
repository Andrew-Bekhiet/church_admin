import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('data analysis analytics contract', () {
    const meeting = Meeting(
      id: 'm1',
      name: 'اجتماع',
      audience: MeetingAudience.personsAndServants,
      isArchived: false,
    );
    const service = Service(id: 's1', name: 'خدمة');
    const group = Group(id: 'g1', name: 'مجموعة');
    const classGroup = Class(id: 'c1', name: 'فصل');
    const personId = 'p1';
    final week = DateTimeRange(
      start: DateTime(2026, 10),
      end: DateTime(2026, 10, 8),
    );
    final today = TodayDateTimeRangePreset();
    final pastMonth = PastMonthDateTimeRangePreset();
    final pastQuarter = PastQuarterDateTimeRangePreset();
    final pastYear = PastYearDateTimeRangePreset();

    final contracts = <(AnalyticsEvent, String, Json)>[
      (
        MeetingsAnalysisView(
          subject: const MeetingsAnalysisSubject.meeting(meeting),
          rangePreset: today,
          isSuccess: true,
        ),
        'analysis:meetings_view',
        {
          'subject_type': 'meeting',
          'meeting_id': meeting.id,
          'range_preset': 'today',
          'range_days': today.range.inclusiveCalendarDays,
          'is_success': true,
        },
      ),
      (
        AnalysisRangeSelect(pastMonth),
        'analysis:range_select',
        {
          'range_preset': 'pastMonth',
          'range_days': pastMonth.range.inclusiveCalendarDays,
        },
      ),
      (
        AnalysisCustomRangePick(CustomRangePicked(week)),
        'analysis:custom_range_pick',
        {
          'is_cancelled': false,
          'range_days': week.inclusiveCalendarDays,
        },
      ),
      (
        const AnalysisGranularitySelect(
          AttendanceGranularity.week,
          autoGranularity: AttendanceGranularity.day,
        ),
        'analysis:granularity_select',
        {'granularity': 'week', 'auto_granularity': 'day'},
      ),
      (const AnalysisRetryTap(), 'analysis:retry_tap', {}),
      (const AnalysisRefreshTap(), 'analysis:refresh_tap', {}),
      (
        const AnalysisMeetingsFilterApply(
          selectedMeetingCount: 3,
          totalMeetingCount: 5,
        ),
        'analysis:meetings_filter_apply',
        {'selected_meeting_count': 3, 'total_meeting_count': 5},
      ),
      (
        const AnalysisSectionToggle(
          PersonAnalysisSection.confession,
          isEnabled: false,
        ),
        'analysis:section_toggle',
        {'section': 'confession', 'is_enabled': false},
      ),
      (
        AnalysisPersonLastAttendedTap(
          personId: personId,
          meetingId: meeting.id,
        ),
        'analysis:person_last_attended_tap',
        {
          'person_id': personId,
          'meeting_id': meeting.id,
        },
      ),
    ];

    for (final (event, expectedName, expectedProperties) in contracts) {
      final sentKeys = expectedProperties.isEmpty
          ? 'no properties'
          : expectedProperties.keys.join(', ');

      test('$expectedName sends $sentKeys', () {
        expect(event.name, expectedName);
        expect(event.properties, expectedProperties);
      });
    }

    final mappings = <(String, AnalyticsEvent, Json)>[
      (
        'a service viewed over the past quarter reports its subject and range',
        MeetingsAnalysisView(
          subject: const MeetingsAnalysisSubject.service(service),
          rangePreset: pastQuarter,
          isSuccess: false,
        ),
        {
          'subject_type': 'service',
          'service_id': service.id,
          'range_preset': 'pastQuarter',
          'range_days': pastQuarter.range.inclusiveCalendarDays,
          'is_success': false,
        },
      ),
      (
        'a group viewed over the past year reports its subject and range',
        MeetingsAnalysisView(
          subject: const MeetingsAnalysisSubject.group(group),
          rangePreset: pastYear,
          isSuccess: true,
        ),
        {
          'subject_type': 'group',
          'group_id': group.id,
          'range_preset': 'pastYear',
          'range_days': pastYear.range.inclusiveCalendarDays,
          'is_success': true,
        },
      ),
      (
        'a class viewed over a custom range reports its subject and range',
        MeetingsAnalysisView(
          subject: const MeetingsAnalysisSubject.class$(classGroup),
          rangePreset: CustomDateTimeRangePreset(range: week),
          isSuccess: true,
        ),
        {
          'subject_type': 'class',
          'class_id': classGroup.id,
          'range_preset': 'custom',
          'range_days': week.inclusiveCalendarDays,
          'is_success': true,
        },
      ),
      (
        'dismissing the custom range picker reports a cancelled pick',
        const AnalysisCustomRangePick(CustomRangePickCancelled()),
        {'is_cancelled': true, 'range_days': null},
      ),
    ];

    for (final (behaviour, event, expectedProperties) in mappings) {
      test(behaviour, () => expect(event.properties, expectedProperties));
    }
  });
}
