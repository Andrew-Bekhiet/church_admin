import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'ash_schema_conformance.dart';
import 'ash_schema_sdl.dart';

void main() {
  const filterTranslator = AshFilterTranslator();
  const sortTranslator = AshSortTranslator();
  final moment = DateTime.utc(2024, 5, 6, 7, 8, 9);
  final recorded = LastRecordedByInfoFields();

  Json translate(FieldMetadata field, Operator operator, Object? value) =>
      filterTranslator.toFilterInput([Filter(field, operator, value)]);

  group('an object field tested for presence', () {
    final areaOfStore = StoreFields().address.redirectTo<Object>(
      AddressFields().area,
    );
    final areaHasKey = {
      'address': {
        'area': {
          'id': {'isNil': false},
        },
      },
    };

    test('is null asks that no related row exists', () {
      expect(translate(areaOfStore, PrimitiveOperator.isNull, null), {
        'not': [areaHasKey],
      });
    });

    test('is not null asks that a related row exists', () {
      expect(
        translate(areaOfStore, PrimitiveOperator.isNotNull, null),
        areaHasKey,
      );
    });

    test('a plain field is still tested for nil itself', () {
      expect(translate(AreaFields().color, PrimitiveOperator.isNull, null), {
        'color': {'isNil': true},
      });
    });
  });

  group('the last edit and last visit of a place', () {
    test('the time is the scalar of the same name', () {
      expect(
        translate(
          AreaFields().lastEdit.redirectTo<Object>(recorded.time),
          DateTimeOperator.isAfter,
          moment,
        ),
        {
          'lastEdit': {'greaterThan': moment.toIso8601String()},
        },
      );
    });

    test('the user is under the latest-record relationship', () {
      expect(
        translate(
          StreetFields().lastVisit.redirectTo<Object>(recorded.user),
          MultiSelectOperator.anyOf,
          ['user-1'],
        ),
        {
          'latestVisit': {
            'user': {
              'uid': {
                'in': ['user-1'],
              },
            },
          },
        },
      );
    });

    test('being unrecorded is the scalar being nil', () {
      expect(translate(AreaFields().lastEdit, PrimitiveOperator.isNull, null), {
        'lastEdit': {'isNil': true},
      });
    });

    test('having been recorded is the scalar not being nil', () {
      expect(
        translate(StoreFields().lastEdit, MultiSelectOperator.isNotEmpty, null),
        {
          'lastEdit': {'isNil': false},
        },
      );
    });

    test('sorting by the time is sorting by the scalar', () {
      expect(
        sortTranslator.toSortInput([
          OrderBy(
            field: AreaFields().lastVisit.redirectTo<Object>(recorded.time),
          ),
        ]),
        [
          {'field': 'LAST_VISIT', 'order': 'ASC_NULLS_LAST'},
        ],
      );
    });
  });

  test('the admins of an area are filtered through their user key', () {
    expect(
      translate(AreaFields().adminUsers, MultiSelectOperator.anyOf, ['user-1']),
      {
        'admins': {
          'uid': {
            'in': ['user-1'],
          },
        },
      },
    );
  });

  test('the areas of a street are filtered through the area key', () {
    expect(
      translate(
        StreetFields().areas.redirectTo(AreaFields().id),
        MultiSelectOperator.anyOf,
        ['area-1'],
      ),
      {
        'areas': {
          'id': {
            'in': ['area-1'],
          },
        },
      },
    );
  });

  test('the join rows of a street are filtered by their area id', () {
    expect(
      translate(
        StreetFields().areasRel.redirectTo(AreasStreetsFields().areaId),
        StringOperator.eq,
        'area-1',
      ),
      {
        'areaStreets': {
          'areaId': {'eq': 'area-1'},
        },
      },
    );
  });

  test('the admin family of a store is filtered under its server name', () {
    expect(
      translate(StoreFields().family, MultiSelectOperator.anyOf, ['family-1']),
      {
        'adminFamily': {
          'id': {
            'in': ['family-1'],
          },
        },
      },
    );
  });

  group(
    'the filters the places features build resolve in the server schema',
    () {
      final conformance = AshSchemaConformance(AshSchemaSdl.read());
      final cases =
          <
            String,
            ({
              String input,
              FieldMetadata field,
              Operator operator,
              Object? value,
            })
          >{
            'the areas of a street': (
              input: 'StreetFilterInput',
              field: StreetFields().areas.redirectTo(AreaFields().id),
              operator: MultiSelectOperator.anyOf,
              value: ['area-1'],
            ),
            'the join rows of a street': (
              input: 'StreetFilterInput',
              field: StreetFields().areasRel.redirectTo(
                AreasStreetsFields().areaId,
              ),
              operator: StringOperator.eq,
              value: 'area-1',
            ),
            'the streets of an area': (
              input: 'AreaFilterInput',
              field: AreaFields().streets.redirectTo(StreetFields().line),
              operator: const WithinDistanceOperator(250),
              value: const Point(30, 31),
            ),
            'the admins of an area': (
              input: 'AreaFilterInput',
              field: AreaFields().adminUsers,
              operator: MultiSelectOperator.anyOf,
              value: ['user-1'],
            ),
            'the last edit time of an area': (
              input: 'AreaFilterInput',
              field: AreaFields().lastEdit.redirectTo<Object>(recorded.time),
              operator: DateTimeOperator.isAfter,
              value: moment,
            ),
            'the last visit user of a street': (
              input: 'StreetFilterInput',
              field: StreetFields().lastVisit.redirectTo<Object>(recorded.user),
              operator: MultiSelectOperator.anyOf,
              value: ['user-1'],
            ),
            'the admin family of a store': (
              input: 'StoreFilterInput',
              field: StoreFields().family,
              operator: MultiSelectOperator.anyOf,
              value: ['family-1'],
            ),
            'the area of the address of a store': (
              input: 'StoreFilterInput',
              field: StoreFields().address.redirectTo<Object>(
                AddressFields().area,
              ),
              operator: PrimitiveOperator.isNull,
              value: null,
            ),
          };

      for (final MapEntry(key: name, value: testCase) in cases.entries) {
        test(name, () {
          expect(
            conformance.missingForInput(
              testCase.input,
              translate(testCase.field, testCase.operator, testCase.value),
            ),
            isEmpty,
          );
        });
      }
    },
  );
}
