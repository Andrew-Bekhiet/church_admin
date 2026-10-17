import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeSearchResults', () {
    test('result sections keep a fixed order regardless of the response', () {
      const results = HomeSearchResults(
        stores: [Store(id: '1', name: 'store')],
        streets: [Street(id: '2', name: 'street')],
        families: [Family(id: '3', name: 'family')],
        areas: [Area(id: '4', name: 'area')],
      );

      expect(results.sections.map((section) => section.label), [
        for (final type in [Area, Family, Street, Store])
          AdvancedQueriesMetadata().allQueryablesByType[type]?.label,
      ]);
    });

    test('sections skip the empty lists', () {
      const family = Family(id: '1', name: 'Test');
      const results = HomeSearchResults(families: [family]);

      final section = results.sections.single;

      expect(
        section.label,
        AdvancedQueriesMetadata().allQueryablesByType[Family]?.label,
      );
      expect(section.items.single, family);
    });
  });
}
