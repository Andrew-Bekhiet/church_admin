import 'package:church_admin/church_admin.dart';

sealed class DataCheckAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'data_check';

  const DataCheckAnalyticsEvent();
}

final class DataCheckReportOpen extends DataCheckAnalyticsEvent {
  final DataCheck dataCheck;

  @override
  String get objectAction => 'report_open';

  @override
  Json get properties => {
    'family_id': dataCheck.familyId,
    'completeness_percent': dataCheck.completenessPercent,
    'passed_check_count': dataCheck.passedChecksCount,
    'total_check_count': dataCheck.totalChecksCount,
    'is_complete': dataCheck.isComplete,
    'override': dataCheck.userOverride.name,
    'failing_rules': [
      for (final detail in dataCheck.checksDetails)
        if (!detail.passed) detail.check.name,
    ],
  };

  const DataCheckReportOpen(this.dataCheck);
}

final class DataCheckOverrideSelect extends DataCheckAnalyticsEvent {
  final DataCheck dataCheck;
  final DataCheckOverride selected;
  final DataCheckOverrideError? failure;

  @override
  String get objectAction => 'override_select';

  @override
  Json get properties => {
    'family_id': dataCheck.familyId,
    'from_override': dataCheck.userOverride.name,
    'to_override': selected.name,
    'is_automatically_complete': dataCheck.automaticVerdict,
    'is_success': failure == null,
    'failure_kind': failure?.name ?? 'none',
  };

  const DataCheckOverrideSelect({
    required this.dataCheck,
    required this.selected,
    this.failure,
  });
}
