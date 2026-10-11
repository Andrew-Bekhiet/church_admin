import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

import '../../../fakes/fake_feature_flags_repo.dart';
import '../../../fakes/recording_graphql_link.dart';

void main() {
  late BehaviorSubject<bool> connectivity;
  late RecordingGraphQLLink link;

  Future<void> expectPersonSearchRequest(
    AdvancedQuery query,
    Json expectedVarsJson,
  ) async {
    const unit = AdvancedQueryParser();
    final stream = unit.createPaginatableStream(query);
    addTearDown(stream.dispose);
    await stream.first;

    final request = link.requests.singleWhere(
      (request) => request.operation.operationName == 'watchAllPersons',
    );

    final firstSelectionNode = request.operation.document.definitions
        .whereType<OperationDefinitionNode>()
        .first
        .firstSelectionNode;

    final capturedVars = request.variables;

    expect(capturedVars, expectedVarsJson);

    final fragments = {
      for (final fragment
          in request.operation.document.definitions
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

  group(
    'Advanced Query Parser',
    () {
      setUp(() {
        connectivity = BehaviorSubject.seeded(true);
        link = RecordingGraphQLLink({'persons': <Object?>[]});
        final countLink = RecordingGraphQLLink({
          'personsAggregate': {
            'aggregate': {'count': 0},
          },
        });
        initGlobalProviderContainer([
          featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
          databaseServiceProvider.overrideWithValue(
            DatabaseService(
              DBGraphQLClient(
                connectivityStream: connectivity,
                link: Link.function(
                  (request, [forward]) =>
                      request.operation.operationName == 'watchPersonsCount'
                      ? countLink.request(request)
                      : link.request(request),
                ),
                cache: GraphQLCache(),
                autoChangeFetchPolicy: false,
              ),
            ),
          ),
        ]);
      });
      tearDown(() async {
        await connectivity.close();
        resetGlobalProviderContainer();
      });

      test(
        'person searches send nested date conditions and select every ordered field',
        () async {
          final query = AdvancedQuery(
            queryableType: AdvancedQueriesMetadata().person,
            filters: [
              Filter(
                PersonFields().lastEdit.redirectTo(
                  LastRecordedByInfoFields().time,
                ),
                DateTimeOperator.isAfter,
                DateTime.utc(2026, 10, 1),
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
                        '_gt': DateTime.utc(2026, 10, 1).toIso8601String(),
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

          await expectPersonSearchRequest(query, expectedVarsJson);
        },
      );

      test(
        'person searches use id ordering when no ordering is selected',
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

          await expectPersonSearchRequest(query, expectedVarsJson);
        },
      );

      test(
        'person searches preserve nested logical conditions and the requested limit',
        () async {
          final dateValue = DateTime.utc(2026, 10, 1);
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

          await expectPersonSearchRequest(query, expectedVarsJson);
        },
      );
    },
  );
}
