import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

import '../../../fakes/fake_feature_flags_repo.dart';
import '../../../fakes/recording_graphql_link.dart';

void main() {
  late BehaviorSubject<bool> connectivity;
  late RecordingGraphQLLink link;

  Future<Json> sentPersonSearch(AdvancedQuery query) async {
    const unit = AdvancedQueryParser();
    final stream = unit.createPaginatableStream(query);
    addTearDown(stream.dispose);
    await stream.first;

    return link.requests
        .singleWhere((request) => request.operation.operationName == 'persons')
        .variables;
  }

  group('Advanced Query Parser', () {
    setUp(() {
      connectivity = BehaviorSubject.seeded(true);
      link = RecordingGraphQLLink({
        'persons': {
          '__typename': 'KeysetPageOfPerson',
          'count': 0,
          'endKeyset': null,
          'results': <Object?>[],
        },
      });
      initGlobalProviderContainer([
        featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
        databaseServiceProvider.overrideWithValue(
          DatabaseService(
            DBGraphQLClient(
              connectivityStream: connectivity,
              link: link,
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
      'person searches send the date condition on the latest edit time and its '
      'order',
      () async {
        final editedAfter = DateTime.utc(2026, 10);
        final query = AdvancedQuery(
          queryableType: AdvancedQueriesMetadata().person,
          filters: [
            Filter(
              PersonFields().lastEdit.redirectTo(
                LastRecordedByInfoFields().time,
              ),
              DateTimeOperator.isAfter,
              editedAfter,
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

        expect(await sentPersonSearch(query), {
          'filter': {
            'and': [
              {
                'lastEdit': {'greaterThan': editedAfter.toIso8601String()},
              },
            ],
          },
          'sort': [
            {'field': 'LAST_EDIT', 'order': 'DESC_NULLS_LAST'},
            {'field': 'NAME', 'order': 'ASC_NULLS_LAST'},
          ],
          'first': PaginatableStream.defaultPageSize,
        });
      },
    );

    test(
      'person searches leave the order to the server when none is selected',
      () async {
        final query = AdvancedQuery(
          queryableType: AdvancedQueriesMetadata().person,
          filters: [Filter(PersonFields().name, StringOperator.eq, 'مينا')],
        );

        expect(await sentPersonSearch(query), {
          'filter': {
            'and': [
              {
                'name': {'eq': 'مينا'},
              },
            ],
          },
          'first': PaginatableStream.defaultPageSize,
        });
      },
    );

    test(
      'person searches preserve nested logical conditions and the requested limit',
      () async {
        final visitedAfter = DateTime.utc(2026, 10);
        final query = AdvancedQuery(
          queryableType: AdvancedQueriesMetadata().person,
          logicalOperator: LogicalOperator.or,
          filters: [
            Filter(const DotField(), LogicalOperator.and, [
              Filter(
                PersonFields().lastVisit.redirectTo(
                  LastRecordedByInfoFields().time,
                ),
                DateTimeOperator.isAfter,
                visitedAfter,
              ),
              Filter(PersonFields().name, StringOperator.eq, 'مينا'),
            ]),
            Filter(
              PersonFields().area.redirectTo(
                AreaFields().streets.redirectTo(StreetFields().name),
              ),
              StringOperator.contains,
              'name',
            ),
          ],
          limit: 12,
        );

        expect(await sentPersonSearch(query), {
          'filter': {
            'or': [
              {
                'and': [
                  {
                    'lastVisitAt': {
                      'greaterThan': visitedAfter.toIso8601String(),
                    },
                  },
                  {
                    'name': {'eq': 'مينا'},
                  },
                ],
              },
              {
                'address': {
                  'area': {
                    'streets': {
                      'name': {'ilike': '%name%'},
                    },
                  },
                },
              },
            ],
          },
          'first': 12,
        });
      },
    );
  });
}
