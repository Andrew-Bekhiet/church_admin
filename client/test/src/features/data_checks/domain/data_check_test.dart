import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DataCheck', () {
    test('clearing the override falls back to the automatic verdict', () {
      final dataCheck = DataCheck(
        familyId: 'family',
        familyCheck: true,
        addressCheck: true,
        userOverride: false,
      );

      expect(dataCheck.withUserOverride(null).isComplete, isTrue);
      expect(dataCheck.withUserOverride(null).userOverride, isNull);
    });

    test('marking incomplete hides an automatically complete family', () {
      final dataCheck = DataCheck(
        familyId: 'family',
        isComplete: true,
        familyCheck: true,
        addressCheck: true,
      );

      final overridden = dataCheck.withUserOverride(false);

      expect(overridden.isComplete, isFalse);
      expect(overridden.userOverride, isFalse);
    });

    test('marking complete shows an automatically incomplete family', () {
      final dataCheck = DataCheck(familyId: 'family', familyCheck: true);

      expect(dataCheck.withUserOverride(true).isComplete, isTrue);
    });

    test('marking complete lifts the completeness to 100', () {
      final dataCheck = DataCheck(
        familyId: 'family',
        details: const [
          DataCheckItem(group: DataCheckGroup.family, check: 'a', passed: true),
          DataCheckItem(
            group: DataCheckGroup.family,
            check: 'b',
            passed: false,
          ),
        ],
      );

      expect(dataCheck.withUserOverride(true).completenessPercent, 100);
    });

    test('marking incomplete caps a fully passing family at 99', () {
      final dataCheck = DataCheck(
        familyId: 'family',
        details: const [
          DataCheckItem(group: DataCheckGroup.family, check: 'a', passed: true),
        ],
      );

      expect(dataCheck.withUserOverride(false).completenessPercent, 99);
    });

    test('clearing the override returns to the share of checks passed', () {
      final dataCheck = DataCheck(
        familyId: 'family',
        completenessPercent: 100,
        userOverride: true,
        details: const [
          DataCheckItem(group: DataCheckGroup.family, check: 'a', passed: true),
          DataCheckItem(
            group: DataCheckGroup.family,
            check: 'b',
            passed: false,
          ),
          DataCheckItem(
            group: DataCheckGroup.family,
            check: 'c',
            passed: false,
          ),
        ],
      );

      expect(dataCheck.withUserOverride(null).completenessPercent, 33);
    });

    test('check keys without a known label show the raw key', () {
      final item = DataCheckItem.fromJson({
        'group': 'family',
        'check': 'brand_new_check',
        'passed': true,
      });

      expect(item.label, 'brand_new_check');
    });

    test('details group in the order the server sent them', () {
      final dataCheck = DataCheck.fromJson(const {
        'familyId': 'family',
        'details': [
          {'group': 'family', 'check': 'has_family_admin', 'passed': true},
          {'group': 'family', 'check': 'has_non_admin_member', 'passed': false},
          {'group': 'address', 'check': 'has_address', 'passed': true},
        ],
      });

      expect(
        {
          for (final MapEntry(:key, :value) in dataCheck.itemsByGroup.entries)
            key: [for (final item in value) item.check],
        },
        {
          DataCheckGroup.family: ['has_family_admin', 'has_non_admin_member'],
          DataCheckGroup.address: ['has_address'],
        },
      );
      expect(dataCheck.passedCount, 2);
      expect(dataCheck.totalCount, 3);
    });

    test('a group the app does not know falls under other', () {
      final item = DataCheckItem.fromJson({
        'group': 'finance',
        'check': 'has_budget',
        'passed': false,
      });

      expect(item.group, DataCheckGroup.other);
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
