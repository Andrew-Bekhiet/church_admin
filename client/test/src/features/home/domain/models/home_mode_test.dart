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

  group('$HomeMode contents', () {
    test('lists the tab labels after the summary', () {
      expect(
        HomeMode.sundaySchool.contents,
        [
          HomeTab.services,
          HomeTab.sundaySchoolPersons,
        ].map((tab) => tab.label).join(' · '),
      );
    });

    test('never names the summary tab', () {
      for (final mode in HomeMode.values) {
        expect(mode.contents, isNot(contains(HomeTab.summary.label)));
      }
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
