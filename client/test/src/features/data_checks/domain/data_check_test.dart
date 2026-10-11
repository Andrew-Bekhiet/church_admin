import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DataCheck', () {
    test('clearing the override falls back to the automatic verdict', () {
      final dataCheck = DataCheck(
        familyId: 'family',
        familyCheck: true,
        addressCheck: true,
        userOverride: DataCheckOverride.markedIncomplete,
      );

      expect(
        dataCheck.withUserOverride(DataCheckOverride.automatic).isComplete,
        isTrue,
      );
      expect(
        dataCheck.withUserOverride(DataCheckOverride.automatic).userOverride,
        isNull,
      );
    });

    test('marking incomplete hides an automatically complete family', () {
      final dataCheck = DataCheck(
        familyId: 'family',
        isComplete: true,
        familyCheck: true,
        addressCheck: true,
      );

      final overridden = dataCheck.withUserOverride(
        DataCheckOverride.markedIncomplete,
      );

      expect(overridden.isComplete, isFalse);
      expect(overridden.userOverride, isFalse);
    });

    test('marking complete shows an automatically incomplete family', () {
      final dataCheck = DataCheck(familyId: 'family', familyCheck: true);

      expect(
        dataCheck.withUserOverride(DataCheckOverride.markedComplete).isComplete,
        isTrue,
      );
    });

    test('marking complete lifts the completeness to 100', () {
      final dataCheck = DataCheck(
        familyId: 'family',
        checksDetails: const [
          DataCheckDetail(
            group: DataCheckGroup.family,
            check: DataCheckRule.hasAddress,
            passed: true,
          ),
          DataCheckDetail(
            group: DataCheckGroup.family,
            check: DataCheckRule.hasArea,
            passed: false,
          ),
        ],
      );

      expect(
        dataCheck
            .withUserOverride(DataCheckOverride.markedComplete)
            .completenessPercent,
        100,
      );
    });

    test('marking incomplete caps a fully passing family at 99', () {
      final dataCheck = DataCheck(
        familyId: 'family',
        checksDetails: const [
          DataCheckDetail(
            group: DataCheckGroup.family,
            check: DataCheckRule.hasAddress,
            passed: true,
          ),
        ],
      );

      expect(
        dataCheck
            .withUserOverride(DataCheckOverride.markedIncomplete)
            .completenessPercent,
        99,
      );
    });

    test('clearing the override returns to the share of checks passed', () {
      final dataCheck = DataCheck(
        familyId: 'family',
        completenessPercent: 100,
        userOverride: DataCheckOverride.markedComplete,
        checksDetails: const [
          DataCheckDetail(
            group: DataCheckGroup.family,
            check: DataCheckRule.hasAddress,
            passed: true,
          ),
          DataCheckDetail(
            group: DataCheckGroup.family,
            check: DataCheckRule.hasArea,
            passed: false,
          ),
          DataCheckDetail(
            group: DataCheckGroup.family,
            check: DataCheckRule.hasStreet,
            passed: false,
          ),
        ],
      );

      expect(
        dataCheck
            .withUserOverride(DataCheckOverride.automatic)
            .completenessPercent,
        33,
      );
    });

    test(
      'clearing an override on a complete check without details reports it '
      'fully complete',
      () {
        final dataCheck = DataCheck(
          familyId: 'family',
          familyCheck: true,
          addressCheck: true,
          userOverride: DataCheckOverride.markedIncomplete,
        );

        final cleared = dataCheck.withUserOverride(DataCheckOverride.automatic);

        expect(cleared.isComplete, isTrue);
        expect(cleared.completenessPercent, 100);
      },
    );

    test('a check key the app does not know parses to the unknown rule', () {
      final detail = DataCheckDetail.fromJson({
        'group': 'family',
        'check': 'brand_new_check',
        'passed': true,
      });

      expect(detail.check, DataCheckRule.unknown);
    });

    test('a group the app does not know falls under other', () {
      final detail = DataCheckDetail.fromJson({
        'group': 'finance',
        'check': 'has_budget',
        'passed': false,
      });

      expect(detail.group, DataCheckGroup.other);
    });

    test('a missing verdict from the server reads as incomplete', () {
      final dataCheck = DataCheck.fromJson(const {
        'familyId': 'family',
        'isComplete': null,
        'familyCheck': null,
        'addressCheck': null,
      });

      expect(dataCheck.isComplete, isFalse);
    });
  });
}
