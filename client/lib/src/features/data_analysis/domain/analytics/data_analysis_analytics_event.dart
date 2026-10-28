part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class DataAnalysisAnalyticsEvent extends AnalyticsEvent {
  static Json rangePropertiesOf(DateTimeRangePreset preset) => {
    'range_preset': switch (preset) {
      TodayDateTimeRangePreset() => 'today',
      PastMonthDateTimeRangePreset() => 'pastMonth',
      PastQuarterDateTimeRangePreset() => 'pastQuarter',
      PastYearDateTimeRangePreset() => 'pastYear',
      CustomDateTimeRangePreset() => 'custom',
    },
    'range_duration_ms': preset.duration.inMilliseconds,
  };

  @override
  String get category => 'analysis';

  const DataAnalysisAnalyticsEvent();
}

final class MeetingsAnalysisView extends DataAnalysisAnalyticsEvent {
  final MeetingsAnalysisSubject subject;
  final DateTimeRangePreset rangePreset;
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
    ...DataAnalysisAnalyticsEvent.rangePropertiesOf(rangePreset),
    'is_single_day': rangePreset.range.isSingleDay,
    'is_success': isSuccess,
  };

  const MeetingsAnalysisView({
    required this.subject,
    required this.rangePreset,
    required this.isSuccess,
  });
}

final class AnalysisRangeSelect extends DataAnalysisAnalyticsEvent {
  final DateTimeRangePreset rangePreset;

  @override
  String get objectAction => 'range_select';

  @override
  Json get properties => DataAnalysisAnalyticsEvent.rangePropertiesOf(
    rangePreset,
  );

  const AnalysisRangeSelect(this.rangePreset);
}

final class AnalysisCustomRangePick extends DataAnalysisAnalyticsEvent {
  final bool isReopened;
  final CustomRangePickOutcome outcome;

  @override
  String get objectAction => 'custom_range_pick';

  @override
  Json get properties => {'is_reopened': isReopened, ...outcome.properties};

  const AnalysisCustomRangePick({
    required this.isReopened,
    required this.outcome,
  });
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
    'is_override': granularity != autoGranularity,
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

final class AnalysisLastAttendedTap extends DataAnalysisAnalyticsEvent {
  final String personId;
  final String meetingId;

  @override
  String get objectAction => 'last_attended_tap';

  @override
  Json get properties => {
    'entity_type': AnalyticsEntityType.person.key,
    AnalyticsEntityType.person.idProperty: personId,
    'meeting_id': meetingId,
  };

  const AnalysisLastAttendedTap({
    required this.personId,
    required this.meetingId,
  });
}
