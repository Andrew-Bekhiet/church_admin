import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('data check analytics contract', () {
    final automaticallyComplete = DataCheck(
      familyId: 'f1',
      familyCheck: true,
      addressCheck: true,
    );

    final contracts = <(AnalyticsEvent, String, Json)>[
      (
        DataCheckReportOpen(
          DataCheck(
            familyId: 'f1',
            completenessPercent: 50,
            userOverride: DataCheckOverride.markedIncomplete,
            checksDetails: const [
              DataCheckDetail(
                group: DataCheckGroup.family,
                check: DataCheckRule.hasFamilyAdmin,
                passed: true,
              ),
              DataCheckDetail(
                group: DataCheckGroup.address,
                check: DataCheckRule.hasAddress,
                passed: false,
              ),
            ],
          ),
        ),
        'data_check:report_open',
        {
          'entity_type': 'family',
          'family_id': 'f1',
          'completeness_percent': 50,
          'passed_check_count': 1,
          'total_check_count': 2,
          'is_complete': false,
          'override_choice': 'markedIncomplete',
          'failing_rules': ['hasAddress'],
        },
      ),
      (
        DataCheckOverrideSelect(
          dataCheck: automaticallyComplete,
          selected: DataCheckOverride.markedComplete,
        ),
        'data_check:override_select',
        {
          'entity_type': 'family',
          'family_id': 'f1',
          'from_override': 'none',
          'to_override': 'markedComplete',
          'is_automatically_complete': true,
          'is_success': true,
          'failure_kind': 'none',
        },
      ),
    ];

    for (final (event, expectedName, expectedProperties) in contracts) {
      test('$expectedName sends ${expectedProperties.keys.join(', ')}', () {
        expect(event.name, expectedName);
        expect(event.properties, expectedProperties);
      });
    }

    test('a refused override reports why it failed', () {
      expect(
        DataCheckOverrideSelect(
          dataCheck: automaticallyComplete,
          selected: DataCheckOverride.markedIncomplete,
          failure: DataCheckOverrideError.notPermitted,
        ).properties,
        allOf(
          containsPair('is_success', false),
          containsPair('failure_kind', 'notPermitted'),
        ),
      );
    });
  });
}
