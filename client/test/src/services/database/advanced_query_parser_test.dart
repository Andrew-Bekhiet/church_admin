// ignore: unused_import
import 'dart:developer';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars/time.dart';
import 'package:church_admin/src/services/database/advanced_query_parser.dart';
import 'package:church_admin/src/services/database/gql_definintions/persons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'advanced_query_parser_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<DatabaseService>(),
  MockSpec<PersonsDAO>(),
  MockSpec<StreamableDAOProxy>(),
  MockSpec<GQLPaginatableStream>(),
  MockSpec<GQLPaginatableStreamEvent>(),
  MockSpec<DBVarsTransformer>(),
])
void main() {
  group(
    'Advanced Query Parser',
    () {
      setUp(_setUp);
      tearDown(resetGlobalProviderContainer);

      test(
        'createPaginatableStream: nested conditions, orderBy',
        () async {
          final query = AdvancedQuery(
            name: '',
            queryableType: Person.queryableType,
            conditions: [
              Condition(
                queryableType: Person.queryableType,
                field: 'lastEdit',
                operator: null,
                value: [
                  Condition(
                    queryableType: LastRecordedByInfo.queryableType,
                    field: 'time',
                    operator: Operator.gt,
                    value: DateTime.now().subtract(const Duration(days: 7)),
                  ),
                ],
              ),
            ],
            orderBy: [
              OrderBy(
                fieldName: 'lastEdit',
                value: OrderBy(
                  fieldName: 'time',
                  value: Enum_OrderBy.DESC,
                ),
              ),
              OrderBy(fieldName: 'name'),
            ],
          );

          final expectedVarsJson = {
            'where': [
              {
                '_and': [
                  {
                    'lastEdit': {
                      'time': {
                        '_gt': timeToString(
                          query.conditions.first.value.first.value,
                        ),
                      },
                    },
                  },
                ],
              }
            ],
            'orderBy': [
              {
                'lastEdit': {'time': 'DESC'},
              },
              {'name': 'ASC'},
            ],
            'limit': 10,
          };

          await _runTestCase(query, expectedVarsJson);
        },
      );

      test(
        'createPaginatableStream: default orderBy',
        () async {
          final query = AdvancedQuery(
            name: '',
            queryableType: Person.queryableType,
            conditions: [
              Condition(
                queryableType: Person.queryableType,
                field: 'name',
                operator: Operator.eq,
                value: 'nameadasdad',
              ),
            ],
          );

          final expectedVarsJson = {
            'where': [
              {
                '_and': [
                  {
                    'name': {
                      '_eq': 'nameadasdad',
                    },
                  },
                ],
              }
            ],
            'orderBy': [
              {'name': 'ASC'},
            ],
            'limit': 10,
          };

          await _runTestCase(query, expectedVarsJson);
        },
      );

      test(
        'createPaginatableStream: nested conditions, logicalOperatos, limit',
        () async {
          final query = AdvancedQuery(
            name: '',
            queryableType: Person.queryableType,
            logicalOperator: LogicalOperator.or,
            conditions: [
              Condition(
                queryableType: Person.queryableType,
                field: '_and',
                operator: null,
                value: [
                  Condition(
                    queryableType: Person.queryableType,
                    field: 'lastVisit',
                    operator: null,
                    value: [
                      Condition(
                        queryableType: LastRecordedByInfo.queryableType,
                        field: 'time',
                        operator: Operator.gt,
                        value: DateTime.now().subtract(const Duration(days: 7)),
                      ),
                    ],
                  ),
                  Condition(
                    queryableType: Person.queryableType,
                    field: 'user',
                    operator: Operator.eq,
                    // uuid value
                    value: 'aqefwaef',
                  ),
                ],
              ),
              Condition(
                queryableType: Person.queryableType,
                field: 'areas',
                operator: null,
                value: [
                  Condition(
                    queryableType: Area.queryableType,
                    field: 'persons',
                    operator: null,
                    value: [
                      Condition(
                        queryableType: LastRecordedByInfo.queryableType,
                        field: 'name',
                        operator: Operator.ilike,
                        value: '%name%',
                      ),
                    ],
                  ),
                ],
              ),
            ],
            orderBy: [
              OrderBy(
                fieldName: 'lastEdit',
                value: OrderBy(
                  fieldName: 'time',
                  value: Enum_OrderBy.DESC,
                ),
              ),
              OrderBy(fieldName: 'name'),
            ],
            limit: 12,
          );

          final expectedVarsJson = {
            'where': [
              {
                '_or': [
                  {
                    '_and': [
                      {
                        'lastVisit': {
                          'time': {
                            '_gt': timeToString(
                              query.conditions.first.value.first.value.first
                                  .value,
                            ),
                          },
                        },
                      },
                      {
                        'user': {'_eq': 'aqefwaef'},
                      }
                    ],
                  },
                  {
                    'areas': {
                      'persons': {
                        'name': {'_ilike': '%name%'},
                      },
                    },
                  }
                ],
              }
            ],
            'orderBy': [
              {
                'lastEdit': {'time': 'DESC'},
              },
              {'name': 'ASC'},
            ],
            'limit': 12,
          };

          await _runTestCase(query, expectedVarsJson);
        },
      );
    },
  );
}

Future<void> _runTestCase(AdvancedQuery query, Json expectedVarsJson) async {
  const unit = AdvancedQueryParser();
  await unit.createPaginatableStream(query).dispose();

  final mockedStreamingProxy = (globalProviderContainer
              .read(databaseServiceProvider)
              .daosByType[Person]! as MockPersonsDAO)
          .streamingProxy
      as MockStreamableDAOProxy<Person, Input_PersonsBoolExp,
          Input_PersonsOrderBy>;

  final verificationResult = verify(
    mockedStreamingProxy.streamAll(
      searchQuery: captureAnyNamed('searchQuery'),
      streamAllConfig: captureAnyNamed('streamAllConfig'),
    ),
  )..called(1);

  final capturedConfig = verificationResult.captured[1]
      as StreamAllConfig<Person, Input_PersonsBoolExp, Input_PersonsOrderBy>;

  final firstSelectionNode = capturedConfig.document.definitions
      .whereType<OperationDefinitionNode>()
      .first
      .firstSelectionNode;

  final capturedVars = capturedConfig.variables ??
      capturedConfig.transformVars!(event: MockGQLPaginatableStreamEvent());

  expect(capturedVars, expectedVarsJson);

  final expectedOrderByFields = (expectedVarsJson['orderBy'] as List<Json>)
      .map((e) => e.toGQLFieldWithSelection())
      .toList();

  expect(
    firstSelectionNode.selectionSet!.selections,
    containsAll(expectedOrderByFields),
  );
}

Future<void> _setUp() async {
  final overrides = [
    _mockDBService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _mockDBService() {
  final mock = MockDatabaseService();

  final MockPersonsDAO mockPersonsDAO = _createMockPersonsDAO(mock);

  final daosByType = {Person: mockPersonsDAO};
  when(mock.daosByType).thenReturn(daosByType);
  final mockDBVarsTransformer = _createMockDBVarsTransformer();
  when(mock.varsTransformer).thenReturn(mockDBVarsTransformer);

  return databaseServiceProvider.overrideWithValue(mock);
}

DBVarsTransformer _createMockDBVarsTransformer() {
  final mock = MockDBVarsTransformer();

  when(
    mock.transformVariablesForPagination(
      any,
      where: anyNamed('where'),
      orderBy: anyNamed('orderBy'),
    ),
  ).thenAnswer(
    (i) => {
      'where': i.namedArguments[#where] as List<Json>,
      'orderBy': i.namedArguments[#orderBy] as List<Json>,
      'limit': 10,
    },
  );

  return mock;
}

MockPersonsDAO _createMockPersonsDAO(MockDatabaseService mock) {
  final realPersonsDAO = PersonsDAO(db: mock);

  final mockPersonsDAO = MockPersonsDAO();
  when(mockPersonsDAO.baseStreamAllConfig)
      .thenReturn(realPersonsDAO.baseStreamAllConfig);

  final mockStreamableDAOProxy = MockStreamableDAOProxy<Person,
      Input_PersonsBoolExp, Input_PersonsOrderBy>();
  when(
    mockStreamableDAOProxy.streamAll(
      searchQuery: anyNamed('searchQuery'),
      streamAllConfig: anyNamed('streamAllConfig'),
    ),
  ).thenAnswer((_) => MockGQLPaginatableStream());

  when(mockPersonsDAO.streamingProxy).thenReturn(mockStreamableDAOProxy);

  return mockPersonsDAO;
}
