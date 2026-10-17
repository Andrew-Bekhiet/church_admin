import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeSearchResults', () {
    test('result sections keep a fixed order regardless of the response', () {
      final results = HomeSearchResults.fromJson(const {
        'stores': [
          {'id': '1', 'name': 'store'},
        ],
        'streets': [
          {'id': '2', 'name': 'street'},
        ],
        'families': [
          {'id': '3', 'name': 'family'},
        ],
        'areas': [
          {'id': '4', 'name': 'area'},
        ],
      });

      expect(results.sections.map((section) => section.label), [
        for (final type in [Area, Family, Street, Store])
          AdvancedQueriesMetadata().allQueryablesByType[type]?.label,
      ]);
    });

    test('sections skip the empty lists', () {
      final results = HomeSearchResults.fromJson(const {
        'areas': [],
        'families': [
          {'id': '1', 'name': 'Test'},
        ],
        'persons': [],
      });

      final section = results.sections.single;

      expect(
        section.label,
        AdvancedQueriesMetadata().allQueryablesByType[Family]?.label,
      );
      expect(section.items.single.id, '1');
      expect(section.items.single.name, 'Test');
    });
  });
}
