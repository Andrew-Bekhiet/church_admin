import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';

import 'advanced_query_parser_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<DatabaseService>(),
  MockSpec<PersonsDAO>(),
  MockSpec<StreamableDAOProxy>(),
  MockSpec<PaginatableStreamBase>(),
  MockSpec<PaginatableStreamRequest>(),
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
            queryableType: AdvancedQueriesMetadata().person,
            filters: [
              Filter(
                PersonFields()
                    .lastEdit
                    .redirectTo(LastRecordedByInfoFields().time),
                DateTimeOperator.isAfter,
                DateTime.now().subtract(const Duration(days: 7)),
              ),
            ],
            orderBy: [
              OrderBy(
                field: PersonFields()
                    .lastEdit
                    .redirectTo(LastRecordedByInfoFields().time),
                value: OrderByValue.desc,
              ),
              OrderBy(field: PersonFields().name),
            ],
          );

          final expectedVarsJson = {
            'where': [
              {
                '_and': [
                  {
                    'lastEdit': {
                      'time': {
                        '_gt': (query.filters.first.value! as DateTime)
                            .toIso8601String(),
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
            queryableType: AdvancedQueriesMetadata().person,
            filters: [
              Filter(
                PersonFields().name,
                StringOperator.eq,
                'nameadasdad',
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
          final dateValue = DateTime.now().subtract(const Duration(days: 7));
          final query = AdvancedQuery(
            queryableType: AdvancedQueriesMetadata().person,
            logicalOperator: LogicalOperator.or,
            filters: [
              Filter(
                const DotField(),
                LogicalOperator.and,
                [
                  Filter(
                    PersonFields()
                        .lastVisit
                        .redirectTo(LastRecordedByInfoFields().time),
                    DateTimeOperator.isAfter,
                    dateValue,
                  ),
                  Filter(
                    PersonFields().user,
                    StringOperator.eq,
                    'aqefwaef',
                  ),
                ],
              ),
              Filter(
                PersonFields().area.redirectTo(
                    AreaFields().streets.redirectTo(StreetFields().name)),
                StringOperator.contains,
                'name',
              ),
            ],
            orderBy: [
              OrderBy(
                field: PersonFields()
                    .lastEdit
                    .redirectTo(LastRecordedByInfoFields().time),
                value: OrderByValue.desc,
              ),
              OrderBy(field: PersonFields().name),
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
                            '_gt': dateValue.toIso8601String(),
                          },
                        },
                      },
                      {
                        'user': {'_eq': 'aqefwaef'},
                      }
                    ],
                  },
                  {
                    'address': {
                      'area': {
                        'streets': {
                          'street': {
                            'name': {'_ilike': '%name%'},
                          },
                        }
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
      .streamingProxy as MockStreamableDAOProxy<Person>;

  final verificationResult = verify(
    mockedStreamingProxy.streamAll(
      orderBy: anyNamed('orderBy'),
      where: anyNamed('where'),
      searchQuery: anyNamed('searchQuery'),
      streamAllConfig: captureAnyNamed('streamAllConfig'),
      streamCountConfig: anyNamed('streamCountConfig'),
    ),
  )..called(1);

  final capturedConfig =
      verificationResult.captured[0] as StreamAllConfig<Person>;

  final firstSelectionNode = capturedConfig.document.definitions
      .whereType<OperationDefinitionNode>()
      .first
      .firstSelectionNode;

  final capturedVars = capturedConfig.variables ??
      capturedConfig.transformRequest!(MockPaginatableStreamRequest());

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
    mock.transformrequestForPagination(
      any,
      overrideWhere: captureAnyNamed('overrideWhere'),
      overrideOrderBy: captureAnyNamed('overrideOrderBy'),
    ),
  ).thenAnswer(
    (i) => {
      'where': i.namedArguments[#overrideWhere] as List<Json>,
      'orderBy': i.namedArguments[#overrideOrderBy] as List<Json>,
      'limit': 10,
    },
  );

  return mock;
}

MockPersonsDAO _createMockPersonsDAO(MockDatabaseService mock) {
  final realPersonsDAO = PersonsDAO(db: mock);

  final mockPersonsDAO = MockPersonsDAO();
  when(mockPersonsDAO.baseStreamCountConfig)
      .thenReturn(realPersonsDAO.baseStreamCountConfig);
  when(mockPersonsDAO.baseStreamAllConfig)
      .thenReturn(realPersonsDAO.baseStreamAllConfig);

  final mockStreamableDAOProxy = MockStreamableDAOProxy<Person>();
  when(
    mockStreamableDAOProxy.streamAll(
      orderBy: anyNamed('orderBy'),
      where: anyNamed('where'),
      searchQuery: anyNamed('searchQuery'),
      streamAllConfig: anyNamed('streamAllConfig'),
      streamCountConfig: anyNamed('streamCountConfig'),
    ),
  ).thenAnswer((_) => MockPaginatableStreamBase());

  when(mockPersonsDAO.streamingProxy).thenReturn(mockStreamableDAOProxy);

  return mockPersonsDAO;
}
