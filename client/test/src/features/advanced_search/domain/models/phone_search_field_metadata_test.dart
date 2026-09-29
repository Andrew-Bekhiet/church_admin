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

    group('a saved query written before contacts existed still loads', () {
      Json matching(Json rowFilter) => {
        '_or': [
          {'contacts': rowFilter},
          {
            'family': {
              'contacts': {
                '_and': [
                  {
                    'personType': {
                      'isFamilyAdmin': {'_eq': true},
                    },
                  },
                  rowFilter,
                ],
              },
            },
          },
        ],
      };

      Json phoneRow(Json comparison) => {'phone': comparison};

      const anyContact = {
        'id': {'_isNull': false},
      };

      final cases = <({String operator, String? value, Json clause})>[
        (
          operator: 'StringOperator.contains',
          value: '0100',
          clause: matching(phoneRow({'_ilike': '%100%'})),
        ),
        (
          operator: 'StringOperator.startsWith',
          value: '0100',
          clause: matching(phoneRow({'_ilike': '+20100%'})),
        ),
        (
          operator: 'StringOperator.endsWith',
          value: '4567',
          clause: matching(phoneRow({'_ilike': '%4567'})),
        ),
        (
          operator: 'StringOperator.eq',
          value: '01001234567',
          clause: matching(phoneRow({'_eq': '+201001234567'})),
        ),
        (
          operator: 'StringOperator.neq',
          value: '01001234567',
          clause: {
            '_not': matching(phoneRow({'_eq': '+201001234567'})),
          },
        ),
        (
          operator: 'StringOperator.doesNotContain',
          value: '0100',
          clause: {
            '_not': matching(phoneRow({'_ilike': '%100%'})),
          },
        ),
        (
          operator: 'StringOperator.isEmpty',
          value: null,
          clause: {
            '_or': [
              {'_not': matching(anyContact)},
              {'_not': matching(anyContact)},
            ],
          },
        ),
        (
          operator: 'StringOperator.isNotEmpty',
          value: null,
          clause: {
            '_and': [matching(anyContact), matching(anyContact)],
          },
        ),
        (
          operator: 'PrimitiveOperator.isNull',
          value: null,
          clause: {'_not': matching(anyContact)},
        ),
        (
          operator: 'PrimitiveOperator.isNotNull',
          value: null,
          clause: matching(anyContact),
        ),
      ];

      for (final c in cases) {
        test('${c.operator} filters over own and family admin contacts', () {
          final saved = <String, Object?>{
            'field': PersonFields().mainPhone.toJson(),
            'operator': c.operator,
            'value': c.value,
          };

          final filter = Filter.fromJson(saved);

          expect(filter.queryToJson(), c.clause);
        });
      }
    });
  });
}
