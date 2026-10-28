part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class DataCheckAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'data_check';

  const DataCheckAnalyticsEvent();
}

sealed class DataCheckFamilyEvent extends DataCheckAnalyticsEvent {
  final String familyId;

  @override
  Json get properties => {
    'entity_type': AnalyticsEntityType.family.key,
    AnalyticsEntityType.family.idProperty: familyId,
  };

  const DataCheckFamilyEvent(this.familyId);
}

final class DataCheckReportOpen extends DataCheckFamilyEvent {
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
    ...super.properties,
    'completeness_percent': completenessPercent,
    'passed_check_count': passedCheckCount,
    'total_check_count': totalCheckCount,
    'is_complete': isComplete,
    'override_choice': overrideChoice.name,
    'failing_rules': failingRules,
  };

  DataCheckReportOpen(DataCheck dataCheck)
    : completenessPercent = dataCheck.completenessPercent,
      passedCheckCount = dataCheck.passedChecksCount,
      totalCheckCount = dataCheck.totalChecksCount,
      isComplete = dataCheck.isComplete,
      overrideChoice = dataCheck.userOverride,
      failingRules = [
        for (final detail in dataCheck.checksDetails)
          if (!detail.passed) detail.check.name,
      ],
      super(dataCheck.familyId);
}

final class DataCheckOverrideSelect extends DataCheckFamilyEvent {
  final DataCheckOverride fromOverride;
  final DataCheckOverride toOverride;
  final bool isAutomaticallyComplete;
  final AttemptOutcome outcome;

  @override
  String get objectAction => 'override_select';

  @override
  Json get properties => {
    ...super.properties,
    'from_override': fromOverride.name,
    'to_override': toOverride.name,
    'is_automatically_complete': isAutomaticallyComplete,
    ...outcome.properties,
  };

  DataCheckOverrideSelect({
    required DataCheck dataCheck,
    required DataCheckOverride selected,
    required this.outcome,
  }) : fromOverride = dataCheck.userOverride,
       toOverride = selected,
       isAutomaticallyComplete = dataCheck.automaticVerdict,
       super(dataCheck.familyId);
}
