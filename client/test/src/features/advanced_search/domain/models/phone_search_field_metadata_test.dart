import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Phone search field', () {
    Json whereFor(String typed, {Operator? operator}) => Filter(
      PersonFields().mainPhone,
      operator ?? StringOperator.contains,
      typed,
    ).queryToJson();

    Json ownNumberClause(Json where) =>
        ((where['_or']! as List).first as Json)['contacts']! as Json;

    Json familyAdminClause(Json where) =>
        ((where['_or']! as List).last as Json)['family']! as Json;

    test('a national number typed in full matches E.164 storage', () {
      final where = whereFor('01001234567');

      expect(ownNumberClause(where), {
        'phone': {'_ilike': '%1001234567%'},
      });
    });

    test('a partial national number matches E.164 storage', () {
      final where = whereFor('0100123');

      expect(ownNumberClause(where), {
        'phone': {'_ilike': '%100123%'},
      });
    });

    test('an exact national number equals its E.164 form', () {
      final where = whereFor('01001234567', operator: StringOperator.eq);

      expect(ownNumberClause(where), {
        'phone': {'_eq': '+201001234567'},
      });
    });

    test('a person is found by the number of a family admin', () {
      final where = whereFor('0122765');

      expect(familyAdminClause(where), {
        'contacts': {
          '_and': [
            {
              'personType': {
                'isFamilyAdmin': {'_eq': true},
              },
            },
            {
              'phone': {'_ilike': '%122765%'},
            },
          ],
        },
      });
    });

    test('sorting by phone orders by the main number', () {
      final orderBy = OrderBy(
        field: PersonFields().mainPhone,
        value: OrderByValue.desc,
      );

      expect(orderBy.toSearchJson(), {
        'mainContact': {'phone': 'DESC_NULLS_LAST'},
      });
    });

    test('a saved phone filter is restored from its serialized form', () {
      final filter = Filter(
        PersonFields().mainPhone,
        StringOperator.contains,
        '0100',
      );

      final restored = Filter.fromJson(filter.toJson());

      expect(restored.queryToJson(), filter.queryToJson());
    });
  });
}
