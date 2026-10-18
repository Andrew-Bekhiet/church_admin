import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('$HomeMode tabs', () {
    test('sunday school lists summary, services and persons', () {
      expect(HomeMode.sundaySchool.tabs, [
        HomeTab.summary,
        HomeTab.services,
        HomeTab.sundaySchoolPersons,
      ]);
    });

    test('church data lists summary, areas, streets, families, stores and '
        'persons', () {
      expect(HomeMode.churchData.tabs, [
        HomeTab.summary,
        HomeTab.areas,
        HomeTab.streets,
        HomeTab.families,
        HomeTab.stores,
        HomeTab.churchDataPersons,
      ]);
    });
  });

  group('$HomeMode other', () {
    test('of sunday school is church data', () {
      expect(HomeMode.sundaySchool.other, HomeMode.churchData);
    });

    test('of church data is sunday school', () {
      expect(HomeMode.churchData.other, HomeMode.sundaySchool);
    });
  });
}
