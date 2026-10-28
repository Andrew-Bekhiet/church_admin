part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class DataCheckAnalyticsEvent extends AnalyticsEvent {
  static Json familyPropertiesOf(String familyId) => {
    'entity_type': AnalyticsEntityType.family.key,
    AnalyticsEntityType.family.idProperty: familyId,
  };

  @override
  String get category => 'data_check';

  const DataCheckAnalyticsEvent();
}

final class DataCheckReportOpen extends DataCheckAnalyticsEvent {
  final String familyId;
  final int completenessPercent;
  final int passedCheckCount;
  final int totalCheckCount;
  final bool isComplete;
  final DataCheckOverride overrideChoice;
  final List<String> failingRules;

  @override
  String get objectAction => 'report_open';

  @override
  Json get properties => {
    ...DataCheckAnalyticsEvent.familyPropertiesOf(familyId),
    'completeness_percent': completenessPercent,
    'passed_check_count': passedCheckCount,
    'total_check_count': totalCheckCount,
    'is_complete': isComplete,
    'override_choice': overrideChoice.name,
    'failing_rules': failingRules,
  };

  DataCheckReportOpen(DataCheck dataCheck)
    : familyId = dataCheck.familyId,
      completenessPercent = dataCheck.completenessPercent,
      passedCheckCount = dataCheck.passedChecksCount,
      totalCheckCount = dataCheck.totalChecksCount,
      isComplete = dataCheck.isComplete,
      overrideChoice = dataCheck.userOverride,
      failingRules = [
        for (final detail in dataCheck.checksDetails)
          if (!detail.passed) detail.check.name,
      ];
}

final class DataCheckOverrideSelect extends DataCheckAnalyticsEvent {
  final String familyId;
  final DataCheckOverride fromOverride;
  final DataCheckOverride toOverride;
  final bool isAutomaticallyComplete;
  final DataCheckOverrideError? failure;

  @override
  String get objectAction => 'override_select';

  @override
  Json get properties => {
    ...DataCheckAnalyticsEvent.familyPropertiesOf(familyId),
    'from_override': fromOverride.name,
    'to_override': toOverride.name,
    'is_automatically_complete': isAutomaticallyComplete,
    'is_success': failure == null,
    'failure_kind': failure?.name ?? 'none',
  };

  DataCheckOverrideSelect({
    required DataCheck dataCheck,
    required DataCheckOverride selected,
    this.failure,
  }) : familyId = dataCheck.familyId,
       fromOverride = dataCheck.userOverride,
       toOverride = selected,
       isAutomaticallyComplete = dataCheck.automaticVerdict;
}
