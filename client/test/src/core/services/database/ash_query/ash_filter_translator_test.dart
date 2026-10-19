import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart' show Color;
import 'package:flutter_test/flutter_test.dart';

void main() {
  const translator = AshFilterTranslator();

  final streetOfPerson = PersonFields().address
      .redirectTo<Object>(AddressFields().street)
      .redirectTo<Object>(StreetFields().name);

  final fieldKinds = <String, ({FieldMetadata field, Json Function(Json) at})>{
    'a plain field': (field: AreaFields().name, at: (leaf) => {'name': leaf}),
    'a redirecting field': (
      field: streetOfPerson,
      at: (leaf) => {
        'address': {
          'street': {'name': leaf},
        },
      },
    ),
    'the dot field': (field: const DotField(), at: (leaf) => leaf),
  };

  Json translate(FieldMetadata field, Operator operator, Object? value) =>
      translator.toFilterInput([Filter(field, operator, value)]);

  final moment = DateTime.utc(2024, 5, 6, 7, 8, 9);
  final range = DateTimeRange(
    start: DateTime(2024, 5, 6),
    end: DateTime(2024, 7, 8),
  );
  const color = Color(0xFF112233);

  final operatorCases =
      <
        String,
        ({
          Operator operator,
          Object? value,
          Json Function(Json Function(Json) at) expected,
        })
      >{
        'string equals': (
          operator: StringOperator.eq,
          value: 'x',
          expected: (at) => at({'eq': 'x'}),
        ),
        'string does not equal': (
          operator: StringOperator.neq,
          value: 'x',
          expected: (at) => at({'notEq': 'x'}),
        ),
        'string contains is a case-insensitive pattern': (
          operator: StringOperator.contains,
          value: 'x',
          expected: (at) => at({'ilike': '%x%'}),
        ),
        'string does not contain negates the whole path': (
          operator: StringOperator.doesNotContain,
          value: 'x',
          expected: (at) => {
            'not': [
              at({'ilike': '%x%'}),
            ],
          },
        ),
        'string starts with': (
          operator: StringOperator.startsWith,
          value: 'x',
          expected: (at) => at({'ilike': 'x%'}),
        ),
        'string ends with': (
          operator: StringOperator.endsWith,
          value: 'x',
          expected: (at) => at({'ilike': '%x'}),
        ),
        'string is empty matches blank or missing': (
          operator: StringOperator.isEmpty,
          value: null,
          expected: (at) => {
            'or': [
              at({'eq': ''}),
              at({'isNil': true}),
            ],
          },
        ),
        'string is not empty matches present and non-blank': (
          operator: StringOperator.isNotEmpty,
          value: null,
          expected: (at) => {
            'and': [
              at({'notEq': ''}),
              at({'isNil': false}),
            ],
          },
        ),
        'primitive equals': (
          operator: PrimitiveOperator.eq,
          value: 5,
          expected: (at) => at({'eq': 5}),
        ),
        'primitive does not equal': (
          operator: PrimitiveOperator.neq,
          value: 5,
          expected: (at) => at({'notEq': 5}),
        ),
        'primitive less than': (
          operator: PrimitiveOperator.lt,
          value: 5,
          expected: (at) => at({'lessThan': 5}),
        ),
        'primitive less than or equal': (
          operator: PrimitiveOperator.lte,
          value: 5,
          expected: (at) => at({'lessThanOrEqual': 5}),
        ),
        'primitive greater than': (
          operator: PrimitiveOperator.gt,
          value: 5,
          expected: (at) => at({'greaterThan': 5}),
        ),
        'primitive greater than or equal': (
          operator: PrimitiveOperator.gte,
          value: 5,
          expected: (at) => at({'greaterThanOrEqual': 5}),
        ),
        'primitive date values go out as ISO strings': (
          operator: PrimitiveOperator.eq,
          value: moment,
          expected: (at) => at({'eq': moment.toIso8601String()}),
        ),
        'primitive is null': (
          operator: PrimitiveOperator.isNull,
          value: null,
          expected: (at) => at({'isNil': true}),
        ),
        'primitive is not null': (
          operator: PrimitiveOperator.isNotNull,
          value: null,
          expected: (at) => at({'isNil': false}),
        ),
        'boolean is': (
          operator: BooleanOperator.is$,
          value: true,
          expected: (at) => at({'eq': true}),
        ),
        'boolean is not': (
          operator: BooleanOperator.isNot,
          value: true,
          expected: (at) => at({'notEq': true}),
        ),
        'boolean is unset': (
          operator: BooleanOperator.is$,
          value: null,
          expected: (at) => at({'isNil': true}),
        ),
        'boolean is not unset': (
          operator: BooleanOperator.isNot,
          value: null,
          expected: (at) => at({'isNil': false}),
        ),
        'color equals compares the ARGB integer': (
          operator: ColorOperator.eq,
          value: color,
          expected: (at) => at({'eq': color.argbValue}),
        ),
        'color does not equal': (
          operator: ColorOperator.neq,
          value: color,
          expected: (at) => at({'notEq': color.argbValue}),
        ),
        'color equals nothing means unset': (
          operator: ColorOperator.eq,
          value: null,
          expected: (at) => at({'isNil': true}),
        ),
        'date is on': (
          operator: DateTimeOperator.isOn,
          value: moment,
          expected: (at) => at({'eq': moment.toIso8601String()}),
        ),
        'date is after': (
          operator: DateTimeOperator.isAfter,
          value: moment,
          expected: (at) => at({'greaterThan': moment.toIso8601String()}),
        ),
        'date is on or after': (
          operator: DateTimeOperator.isOnOrAfter,
          value: moment,
          expected: (at) =>
              at({'greaterThanOrEqual': moment.toIso8601String()}),
        ),
        'date is before': (
          operator: DateTimeOperator.isBefore,
          value: moment,
          expected: (at) => at({'lessThan': moment.toIso8601String()}),
        ),
        'date is on or before': (
          operator: DateTimeOperator.isOnOrBefore,
          value: moment,
          expected: (at) => at({'lessThanOrEqual': moment.toIso8601String()}),
        ),
        'date range is between two calendar days': (
          operator: DateRangeOperator.isBetween,
          value: range,
          expected: (at) => {
            'and': [
              at({'greaterThanOrEqual': dateToString(range.start)}),
              at({'lessThanOrEqual': dateToString(range.end)}),
            ],
          },
        ),
        'birthday equals is a case-insensitive pattern': (
          operator: BirthdayOperator.equals,
          value: '03-14',
          expected: (at) => at({'ilike': '03-14'}),
        ),
      };

  group('every operator on every plain-like field kind', () {
    for (final MapEntry(key: kindName, value: kind) in fieldKinds.entries) {
      for (final MapEntry(key: caseName, value: operatorCase)
          in operatorCases.entries) {
        test('$caseName on $kindName', () {
          expect(
            translate(kind.field, operatorCase.operator, operatorCase.value),
            operatorCase.expected(kind.at),
          );
        });
      }
    }
  });

  group('logical operators', () {
    final nameIsA = Filter(AreaFields().name, StringOperator.eq, 'a');
    final nameIsB = Filter(AreaFields().name, StringOperator.eq, 'b');

    test('and lists its filters', () {
      expect(
        translate(const DotField(), LogicalOperator.and, [nameIsA, nameIsB]),
        {
          'and': [
            {
              'name': {'eq': 'a'},
            },
            {
              'name': {'eq': 'b'},
            },
          ],
        },
      );
    });

    test('or lists its filters', () {
      expect(
        translate(const DotField(), LogicalOperator.or, [nameIsA, nameIsB]),
        {
          'or': [
            {
              'name': {'eq': 'a'},
            },
            {
              'name': {'eq': 'b'},
            },
          ],
        },
      );
    });

    test('not negates a single filter', () {
      expect(translate(const DotField(), LogicalOperator.not, [nameIsA]), {
        'not': [
          {
            'name': {'eq': 'a'},
          },
        ],
      });
    });

    test('not over several filters negates their conjunction', () {
      expect(
        translate(const DotField(), LogicalOperator.not, [nameIsA, nameIsB]),
        {
          'not': [
            {
              'and': [
                {
                  'name': {'eq': 'a'},
                },
                {
                  'name': {'eq': 'b'},
                },
              ],
            },
          ],
        },
      );
    });

    test('a logical operator on a relationship field nests under it', () {
      expect(translate(PersonFields().address, LogicalOperator.or, [nameIsA]), {
        'address': {
          'or': [
            {
              'name': {'eq': 'a'},
            },
          ],
        },
      });
    });
  });

  group('multi-select operators', () {
    const level = ShammasLevel(id: 'level-1', name: 'deacon', order: 1);
    const otherLevel = ShammasLevel(id: 'level-2', name: 'priest', order: 2);
    final workStatus = PersonFields().workStatus;
    const employed = ViewableEnumWithID.wrap(WorkStatus.employed);
    const manageUsersPermission = ViewableEnumWithID.wrap(
      UserPermission.manageAllUsers,
    );

    test('any of objects filters their key under the relationship', () {
      expect(
        translate(PersonFields().shammasLevel, MultiSelectOperator.anyOf, [
          level,
          otherLevel,
        ]),
        {
          'shammasLevel': {
            'id': {
              'in': [level.id, otherLevel.id],
            },
          },
        },
      );
    });

    test('any of objects uses the key field of the referenced type', () {
      final year = StudyYear(order: 4, name: 'fourth');

      expect(
        translate(PersonFields().studyYear, MultiSelectOperator.anyOf, [year]),
        {
          'studyYear': {
            'order': {
              'in': [year.order],
            },
          },
        },
      );
    });

    test('any of ids on a key field filters the key itself', () {
      expect(
        translate(AreaFields().id, MultiSelectOperator.anyOf, ['a', 'b']),
        {
          'id': {
            'in': ['a', 'b'],
          },
        },
      );
    });

    test(
      'any of ids through a many-to-many redirect filters the nested key',
      () {
        expect(
          translate(
            StreetFields().areas.redirectTo(AreaFields().id),
            MultiSelectOperator.anyOf,
            ['a'],
          ),
          {
            'areas': {
              'area': {
                'id': {
                  'in': ['a'],
                },
              },
            },
          },
        );
      },
    );

    test('any of ids on a relationship goes through its key', () {
      expect(
        translate(PersonFields().shammasLevel, MultiSelectOperator.anyOf, [
          'level-1',
        ]),
        {
          'shammasLevel': {
            'id': {
              'in': ['level-1'],
            },
          },
        },
      );
    });

    test('any of enum values sends the upper-case server enum values', () {
      expect(translate(workStatus, MultiSelectOperator.anyOf, [employed]), {
        'workStatus': {
          'in': ['EMPLOYED'],
        },
      });
    });

    test('multi-word enum values become SCREAMING_SNAKE', () {
      expect(
        translate(UserFields().permissions, MultiSelectOperator.anyOf, [
          manageUsersPermission,
        ]),
        {
          'permissions': {
            'permission': {
              'in': ['MANAGE_ALL_USERS'],
            },
          },
        },
      );
    });

    test('enum values given as plain strings are converted too', () {
      expect(translate(workStatus, MultiSelectOperator.anyOf, ['employed']), {
        'workStatus': {
          'in': ['EMPLOYED'],
        },
      });
    });

    test('none of negates the membership test over the whole path', () {
      expect(
        translate(PersonFields().shammasLevel, MultiSelectOperator.noneOf, [
          level,
        ]),
        {
          'not': [
            {
              'shammasLevel': {
                'id': {
                  'in': [level.id],
                },
              },
            },
          ],
        },
      );
    });

    test('is not empty requires a related row with a key', () {
      expect(
        translate(
          PersonFields().shammasLevel,
          MultiSelectOperator.isNotEmpty,
          null,
        ),
        {
          'shammasLevel': {
            'id': {'isNil': false},
          },
        },
      );
    });

    test('is empty negates the related-row test', () {
      expect(
        translate(
          PersonFields().shammasLevel,
          MultiSelectOperator.isEmpty,
          null,
        ),
        {
          'not': [
            {
              'shammasLevel': {
                'id': {'isNil': false},
              },
            },
          ],
        },
      );
    });

    test('is not empty on an enum field tests the value itself', () {
      expect(translate(workStatus, MultiSelectOperator.isNotEmpty, null), {
        'workStatus': {'isNil': false},
      });
    });

    test('is not empty goes through a many-to-many redirect', () {
      expect(
        translate(PersonFields().classes, MultiSelectOperator.isNotEmpty, null),
        {
          'classes': {
            'class': {
              'id': {'isNil': false},
            },
          },
        },
      );
    });

    test('any of without a value behaves like is not empty', () {
      expect(
        translate(PersonFields().shammasLevel, MultiSelectOperator.anyOf, null),
        translate(
          PersonFields().shammasLevel,
          MultiSelectOperator.isNotEmpty,
          null,
        ),
      );
    });
  });

  group('phone operators search the person searchable phones', () {
    Json phone(Json leaf) => {
      'searchablePhones': {'phone': leaf},
    };

    Json searchPhone(PhoneOperator operator, String typed) =>
        translate(PersonFields().mainPhone, operator, typed);

    test('contains matches the digits after the national zero', () {
      expect(
        searchPhone(PhoneOperator.contains, '0100'),
        phone({'ilike': '%100%'}),
      );
    });

    test('does not contain excludes persons with any matching number', () {
      expect(searchPhone(PhoneOperator.doesNotContain, '0100'), {
        'not': [
          phone({'ilike': '%100%'}),
        ],
      });
    });

    test('a national start finds numbers starting with its +20 form', () {
      expect(
        searchPhone(PhoneOperator.startsWith, '0100'),
        phone({'ilike': '+20100%'}),
      );
    });

    test('an international start is used as typed', () {
      expect(
        searchPhone(PhoneOperator.startsWith, '+1 202'),
        phone({'ilike': '+1202%'}),
      );
    });

    test('an ending keeps its leading zero', () {
      expect(
        searchPhone(PhoneOperator.endsWith, '0100'),
        phone({'ilike': '%0100'}),
      );
    });

    test('an exact national number finds its stored E.164 form', () {
      expect(
        searchPhone(PhoneOperator.eq, '0100 123 4567'),
        phone({'eq': '+201001234567'}),
      );
    });

    test('not equal excludes persons with that exact number', () {
      expect(searchPhone(PhoneOperator.neq, '01001234567'), {
        'not': [
          phone({'eq': '+201001234567'}),
        ],
      });
    });

    test('is not empty finds persons with at least one number', () {
      expect(
        searchPhone(PhoneOperator.isNotEmpty, ''),
        phone({'isNil': false}),
      );
    });

    test('is empty finds persons without any number', () {
      expect(searchPhone(PhoneOperator.isEmpty, ''), {
        'not': [
          phone({'isNil': false}),
        ],
      });
    });

    test('a phone field reached through a relationship keeps its path', () {
      final userPhone = UserFields().person.redirectTo(
        PersonFields().mainPhone,
      );

      expect(translate(userPhone, PhoneOperator.isNotEmpty, ''), {
        'person': phone({'isNil': false}),
      });
    });
  });

  group('spatial operators become calculations on the owning resource', () {
    const point = Point(30.5, 31.25);
    const polygon = Polygon([Point(1, 2), Point(3, 4), Point(5, 6)]);

    test('a polygon over a direct geometry field', () {
      expect(
        translate(
          AddressFields().geolocation,
          SpatialOperator.intersects,
          polygon,
        ),
        {
          'withinPolygon': {
            'input': {'polygon': polygon.asPostGISPolygon()},
            'eq': true,
          },
        },
      );
    });

    test('a polygon over a redirected geometry field nests the owner', () {
      expect(
        translate(
          PersonFields().geolocation,
          SpatialOperator.intersects,
          polygon,
        ),
        {
          'address': {
            'withinPolygon': {
              'input': {'polygon': polygon.asPostGISPolygon()},
              'eq': true,
            },
          },
        },
      );
    });

    test('a point inside area bounds', () {
      expect(
        translate(AreaFields().bounds, PointSpatialOperator.intersects, point),
        {
          'containsPoint': {
            'input': {'point': point.toPostGISJson()},
            'eq': true,
          },
        },
      );
    });

    test('within distance carries the origin and the radius in meters', () {
      expect(
        translate(
          StreetFields().line,
          const WithinDistanceOperator(250),
          point,
        ),
        {
          'withinDistance': {
            'input': {'from': point.toPostGISJson(), 'meters': 250.0},
            'eq': true,
          },
        },
      );
    });

    test('within distance through a relationship nests the owner', () {
      expect(
        translate(
          AreaFields().streets.redirectTo(StreetFields().line),
          const WithinDistanceOperator(250),
          point,
        ),
        {
          'streets': {
            'street': {
              'withinDistance': {
                'input': {'from': point.toPostGISJson(), 'meters': 250.0},
                'eq': true,
              },
            },
          },
        },
      );
    });

    test('a polygon without coordinates is rejected', () {
      expect(
        () => translate(
          AddressFields().geolocation,
          SpatialOperator.intersects,
          const Polygon([]),
        ),
        throwsArgumentError,
      );
    });
  });

  group('a list of filters', () {
    final nameIsA = Filter(AreaFields().name, StringOperator.eq, 'a');
    final nameIsB = Filter(AreaFields().name, StringOperator.eq, 'b');

    test('no filters means no restriction', () {
      expect(translator.toFilterInput(const []), isEmpty);
    });

    test('a single filter is not wrapped', () {
      expect(translator.toFilterInput([nameIsA]), {
        'name': {'eq': 'a'},
      });
    });

    test('several filters must all hold', () {
      expect(translator.toFilterInput([nameIsA, nameIsB]), {
        'and': [
          {
            'name': {'eq': 'a'},
          },
          {
            'name': {'eq': 'b'},
          },
        ],
      });
    });

    test('an operator the translator does not know is rejected', () {
      expect(
        () => translate(AreaFields().name, _UnknownOperator(), 'x'),
        throwsUnsupportedError,
      );
    });
  });
}

class _UnknownOperator implements Operator<Object?> {
  @override
  String get label => '?';

  @override
  String get serializationId => 'Unknown';

  @override
  bool get acceptsValue => true;

  @override
  Json queryToJson(FieldMetadata field, Object? filterValue) => {};

  @override
  Object? serializeValue(Object? value) => value;

  @override
  Object? deserializeValue(Object? data) => data;
}
