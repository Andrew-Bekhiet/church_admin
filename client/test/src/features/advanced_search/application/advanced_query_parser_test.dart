import 'package:church_admin/church_admin.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'advanced_query_parser_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<DatabaseService>(),
  MockSpec<DBGraphQLClient>(),
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
                PersonFields().lastEdit.redirectTo(
                  LastRecordedByInfoFields().time,
                ),
                DateTimeOperator.isAfter,
                DateTime.now().subtract(const Duration(days: 7)),
              ),
            ],
            orderBy: [
              OrderBy(
                field: PersonFields().lastEdit.redirectTo(
                  LastRecordedByInfoFields().time,
                ),
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
                            .toUtc()
                            .toIso8601String(),
                      },
                    },
                  },
                ],
              },
            ],
            'orderBy': [
              {
                'lastEdit': {'time': OrderByValue.desc.serializedName},
              },
              {'name': OrderByValue.asc.serializedName},
              {'id': OrderByValue.asc.serializedName},
            ],
            'limit': PaginatableStream.defaultPageSize + 1,
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
              },
            ],
            'orderBy': [
              {'id': OrderByValue.asc.serializedName},
            ],
            'limit': PaginatableStream.defaultPageSize + 1,
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
                    PersonFields().lastVisit.redirectTo(
                      LastRecordedByInfoFields().time,
                    ),
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
                  AreaFields().streets.redirectTo(StreetFields().name),
                ),
                StringOperator.contains,
                'name',
              ),
            ],
            orderBy: [
              OrderBy(
                field: PersonFields().lastEdit.redirectTo(
                  LastRecordedByInfoFields().time,
                ),
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
                            '_gt': dateValue.toUtc().toIso8601String(),
                          },
                        },
                      },
                      {
                        'user': {'_eq': 'aqefwaef'},
                      },
                    ],
                  },
                  {
                    'address': {
                      'area': {
                        'streets': {
                          'street': {
                            'name': {'_ilike': '%name%'},
                          },
                        },
                      },
                    },
                  },
                ],
              },
            ],
            'orderBy': [
              {
                'lastEdit': {'time': OrderByValue.desc.serializedName},
              },
              {'name': OrderByValue.asc.serializedName},
              {'id': OrderByValue.asc.serializedName},
            ],
            'limit': 13,
          };

          await _runTestCase(query, expectedVarsJson);
        },
      );
    },
  );
}

Future<void> _runTestCase(AdvancedQuery query, Json expectedVarsJson) async {
  const unit = AdvancedQueryParser();
  final stream = unit.createPaginatableStream(query);
  await Future.delayed(Duration.zero);
  await stream.dispose();

  final gqlClient =
      globalProviderContainer.read(databaseServiceProvider).graphQLClient
          as MockDBGraphQLClient;

  final verificationResult = verify(
    gqlClient.subscribeAndReturnParsed(
      captureThat(
        predicate<SubscriptionOptions>(
          (o) =>
              !(o.document.definitions
                      .whereType<OperationDefinitionNode>()
                      .firstOrNull
                      ?.name
                      ?.value
                      .toLowerCase()
                      .contains('count') ??
                  false),
        ),
      ),
    ),
  )..called(1);

  final subscriptionOptions =
      verificationResult.captured[0] as SubscriptionOptions;

  final firstSelectionNode = subscriptionOptions.document.definitions
      .whereType<OperationDefinitionNode>()
      .first
      .firstSelectionNode;

  final capturedVars = subscriptionOptions.variables;

  expect(capturedVars, expectedVarsJson);

  final fragments = {
    for (final fragment
        in subscriptionOptions.document.definitions
            .whereType<FragmentDefinitionNode>())
      fragment.name.value: fragment.selectionSet.selections,
  };

  bool selectsPath(List<SelectionNode> selections, Json orderBy) {
    final MapEntry(:key, :value) = orderBy.entries.single;

    return selections.any(
      (selection) => switch (selection) {
        FragmentSpreadNode(:final name) => selectsPath(
          fragments[name.value] ?? [],
          orderBy,
        ),
        FieldNode(:final name, :final selectionSet) when name.value == key =>
          switch (value) {
            final Json nested => selectsPath(
              selectionSet?.selections ?? [],
              nested,
            ),
            _ => true,
          },
        _ => false,
      },
    );
  }

  final unselectedOrderBy = (expectedVarsJson['orderBy'] as List<Json>).where(
    (orderBy) => !selectsPath(
      firstSelectionNode.selectionSet?.selections ?? [],
      orderBy,
    ),
  );

  expect(unselectedOrderBy, isEmpty);
}

Future<void> _setUp() async {
  final overrides = [
    _mockDBService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _mockDBService() {
  return databaseServiceProvider.overrideWithValue(
    DatabaseService(MockDBGraphQLClient()),
  );
}
