import 'package:flutter_test/flutter_test.dart';

import 'ash_schema_conformance.dart';
import 'ash_schema_sdl.dart';

void main() {
  const sdl = '''
scalar Json

enum WorkStatus { STUDENT EMPLOYED }
enum PersonSortField { NAME ADDRESS_AREA_NAME }

input PersonFilterInput {
  and: [PersonFilterInput!]
  not: [PersonFilterInput!]
  name: PersonFilterName
  workStatus: PersonFilterWorkStatus
  address: AddressFilterInput
}

input PersonFilterName { eq: String ilike: String isNil: Boolean }
input PersonFilterWorkStatus { in: [WorkStatus!] }
input AddressFilterInput { withinPolygon: AddressFilterWithinPolygon }
input AddressFilterWithinPolygon { input: WithinPolygonInput eq: Boolean }
input WithinPolygonInput { polygon: Json }

type Person { id: ID }

type RootQueryType {
  persons(
    "Maximum 100"
    first: Int
  ): String
  families(first: Int): String
  person(id: ID): String
}
''';

  final schema = AshSchemaSdl.parse(sdl);
  final conformance = AshSchemaConformance(schema);

  test('a schema with a Person object type is recognised as built', () {
    expect(schema.hasPersonType, isTrue);
  });

  test(
    'a schema without a Person object type is recognised as a placeholder',
    () {
      expect(
        AshSchemaSdl.parse('type RootQueryType { sayHello: String }')
            .hasPersonType,
        isFalse,
      );
    },
  );

  test('an input the server accepts has nothing missing', () {
    expect(
      conformance.missingForInput('PersonFilterInput', {
        'and': [
          {
            'name': {'ilike': '%a%'},
          },
          {
            'not': [
              {
                'workStatus': {
                  'in': ['STUDENT'],
                },
              },
            ],
          },
        ],
        'address': {
          'withinPolygon': {
            'input': {
              'polygon': {'type': 'Polygon'},
            },
            'eq': true,
          },
        },
      }),
      isEmpty,
    );
  });

  test('a missing field is reported with the input type that lacks it', () {
    expect(
      conformance.missingForInput('PersonFilterInput', {
        'address': {
          'street': {
            'name': {'eq': 'x'},
          },
        },
      }),
      ['AddressFilterInput.street'],
    );
  });

  test('a missing operator is reported with its operator input type', () {
    expect(
      conformance.missingForInput('PersonFilterInput', {
        'name': {'stringStartsWith': 'a'},
      }),
      ['PersonFilterName.stringStartsWith'],
    );
  });

  test('an enum value the server lacks is reported', () {
    expect(
      conformance.missingForInput('PersonFilterInput', {
        'workStatus': {
          'in': ['RETIRED'],
        },
      }),
      ['enum value WorkStatus.RETIRED'],
    );
  });

  test('a missing input type is reported once instead of its fields', () {
    expect(
      conformance.missingForInput('FamilyFilterInput', {
        'name': {'eq': 'x'},
      }),
      ['input type FamilyFilterInput'],
    );
  });

  test('a missing sort field is reported with its enum', () {
    expect(conformance.missingSortFields('Person', ['NAME', 'MAIN_PHONE']), [
      'PersonSortField.MAIN_PHONE',
    ]);
  });

  test('a sort enum the server lacks is reported', () {
    expect(conformance.missingSortFields('Family', ['NAME']), [
      'enum FamilySortField',
    ]);
  });

  test('a list query that does not state its maximum is reported', () {
    expect(conformance.paginationProblems(), [
      'query families: the description of `first` does not state "Maximum N"',
    ]);
  });

  test('pagination is checked only for the queries of the chosen entities', () {
    final pagedSchema = AshSchemaSdl.parse('''
type RootQueryType {
  persons(first: Int): KeysetPageOfPerson
  families(
    "Maximum 100"
    first: Int
  ): KeysetPageOfFamily
}
''');
    final pagedConformance = AshSchemaConformance(pagedSchema);

    expect(
      pagedConformance.paginationProblems(onlyEntities: {'Family'}),
      isEmpty,
    );
    expect(pagedConformance.paginationProblems(onlyEntities: {'Person'}), [
      'query persons: the description of `first` does not state "Maximum N"',
    ]);
  });
}
