import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeTab.createLabel', () {
    const labels = {
      HomeTab.services: 'إضافة خدمة',
      HomeTab.sundaySchoolPersons: 'إضافة مخدوم',
      HomeTab.areas: 'إضافة منطقة',
      HomeTab.streets: 'إضافة شارع',
      HomeTab.families: 'إضافة عائلة',
      HomeTab.stores: 'إضافة متجر',
      HomeTab.churchDataPersons: 'إضافة فرد',
    };

    for (final MapEntry(key: tab, value: label) in labels.entries) {
      test('names what the ${tab.name} tab creates', () {
        expect(tab.createLabel, label);
      });
    }

    test('is absent for the summary, which has nothing to create', () {
      expect(HomeTab.summary.createLabel, isNull);
    });

    test('exists exactly for the tabs that have a create location', () {
      for (final tab in HomeTab.values) {
        expect(tab.createLabel != null, tab.createRoute != null);
      }
    });
  });
}
