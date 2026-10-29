part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class DataAnalysisAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'analysis';

  const DataAnalysisAnalyticsEvent();
}

sealed class AnalysisRangeEvent extends DataAnalysisAnalyticsEvent {
  final DateTimeRangePreset rangePreset;

  @override
  Json get properties => {
    'range_preset': switch (rangePreset) {
      TodayDateTimeRangePreset() => 'today',
      PastMonthDateTimeRangePreset() => 'pastMonth',
      PastQuarterDateTimeRangePreset() => 'pastQuarter',
      PastYearDateTimeRangePreset() => 'pastYear',
      CustomDateTimeRangePreset() => 'custom',
    },
    'range_days': rangePreset.range.inclusiveCalendarDays,
  };

  const AnalysisRangeEvent(this.rangePreset);
}

final class MeetingsAnalysisView extends AnalysisRangeEvent {
  final MeetingsAnalysisSubject subject;
  final bool isSuccess;

  @override
  String get objectAction => 'meetings_view';

  @override
  Json get properties => {
    ...switch (subject) {
      MeetingAnalysisSubject(:final meeting) => {
        'subject_type': 'meeting',
        'meeting_id': meeting.id,
      },
      ServiceAnalysisSubject(:final service) => {
        'subject_type': 'service',
        'service_id': service.id,
      },
      GroupAnalysisSubject(:final group) => {
        'subject_type': 'group',
        'group_id': group.id,
      },
      ClassAnalysisSubject(:final class$) => {
        'subject_type': 'class',
        'class_id': class$.id,
      },
    },
    ...super.properties,
    'is_success': isSuccess,
  };

  const MeetingsAnalysisView({
    required this.subject,
    required DateTimeRangePreset rangePreset,
    required this.isSuccess,
  }) : super(rangePreset);
}

final class AnalysisRangeSelect extends AnalysisRangeEvent {
  @override
  String get objectAction => 'range_select';

  const AnalysisRangeSelect(super.rangePreset);
}

final class AnalysisCustomRangePick extends DataAnalysisAnalyticsEvent {
  final CustomRangePickOutcome outcome;

  @override
  String get objectAction => 'custom_range_pick';

  @override
  Json get properties => outcome.properties;

  const AnalysisCustomRangePick(this.outcome);
}

final class AnalysisGranularitySelect extends DataAnalysisAnalyticsEvent {
  final AttendanceGranularity granularity;
  final AttendanceGranularity autoGranularity;

  @override
  String get objectAction => 'granularity_select';

  @override
  Json get properties => {
    'granularity': granularity.name,
    'auto_granularity': autoGranularity.name,
  };

  const AnalysisGranularitySelect(
    this.granularity, {
    required this.autoGranularity,
  });
}

final class AnalysisRetryTap extends DataAnalysisAnalyticsEvent {
  @override
  String get objectAction => 'retry_tap';

  const AnalysisRetryTap();
}

final class AnalysisRefreshTap extends DataAnalysisAnalyticsEvent {
  @override
  String get objectAction => 'refresh_tap';

  const AnalysisRefreshTap();
}

final class AnalysisMeetingsFilterApply extends DataAnalysisAnalyticsEvent {
  final int selectedMeetingCount;
  final int totalMeetingCount;

  @override
  String get objectAction => 'meetings_filter_apply';

  @override
  Json get properties => {
    'selected_meeting_count': selectedMeetingCount,
    'total_meeting_count': totalMeetingCount,
  };

  const AnalysisMeetingsFilterApply({
    required this.selectedMeetingCount,
    required this.totalMeetingCount,
  });
}

final class AnalysisSectionToggle extends DataAnalysisAnalyticsEvent {
  final PersonAnalysisSection section;
  final bool isEnabled;

  @override
  String get objectAction => 'section_toggle';

  @override
  Json get properties => {'section': section.name, 'is_enabled': isEnabled};

  const AnalysisSectionToggle(this.section, {required this.isEnabled});
}

final class AnalysisPersonLastAttendedTap extends DataAnalysisAnalyticsEvent {
  final String personId;
  final String meetingId;

  @override
  String get objectAction => 'person_last_attended_tap';

  @override
  Json get properties => {
    AnalyticsEntityType.person.idProperty: personId,
    'meeting_id': meetingId,
  };

  const AnalysisPersonLastAttendedTap({
    required this.personId,
    required this.meetingId,
  });
}
