import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../fakes/fake_feature_flags_repo.dart';
import '../../../fakes/recording_graphql_link.dart';

void main() {
  late BehaviorSubject<bool> connectivity;
  late RecordingGraphQLLink link;
  late DatabaseService db;

  void initialize({required bool enableDataChecks, required Json data}) {
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(
        FakeFeatureFlagsRepo(enableDataChecks: enableDataChecks),
      ),
    ]);
    connectivity = BehaviorSubject.seeded(true);
    link = RecordingGraphQLLink(data);
    db = DatabaseService(
      DBGraphQLClient(
        connectivityStream: connectivity,
        link: link,
        cache: GraphQLCache(),
        autoChangeFetchPolicy: false,
      ),
    );
  }

  tearDown(() async {
    await connectivity.close();
    resetGlobalProviderContainer();
  });

  for (final enabled in [false, true]) {
    test(
      'home searches ${enabled ? 'include' : 'omit'} data checks when the flag is $enabled',
      () async {
        initialize(enableDataChecks: enabled, data: {'persons': <Object?>[]});

        await HomeDAO(db: db).searchAll('اسم');

        expect(
          printNode(
            link.requests.single.operation.document,
          ).contains('dataCheck'),
          enabled,
        );
      },
    );

    test(
      'person detail subscriptions ${enabled ? 'include' : 'omit'} data checks when the flag is $enabled',
      () async {
        initialize(enableDataChecks: enabled, data: {'personsByPk': null});

        await PersonsDAO(
          db: db,
        ).streamSingleById(id: '00000000-0000-0000-0000-000000000001').first;

        expect(
          printNode(
            link.requests.single.operation.document,
          ).contains('dataCheck'),
          enabled,
        );
      },
    );
  }

  test(
    'a sorted person list selects its sort key and omits data checks when the flag is false',
    () async {
      initialize(enableDataChecks: false, data: {'persons': <Object?>[]});
      final dao = PersonsDAO(db: db);
      final persons = dao.streamAllWithConfig(
        streamAllConfig: dao.baseStreamAllConfig,
        orderBy: Stream.value([
          OrderBy(
            field: PersonFields().lastEdit.redirectTo(
              LastRecordedByInfoFields().time,
            ),
          ),
        ]),
      );
      addTearDown(persons.dispose);

      await persons.first;

      final document = printNode(
        link.requests
            .singleWhere(
              (request) => request.operation.operationName == 'watchAllPersons',
            )
            .operation
            .document,
      );
      expect(document, contains('lastEdit'));
      expect(document, isNot(contains('dataCheck')));
    },
  );

  test(
    'the general GraphQL client preserves selections when data checks are disabled',
    () async {
      initialize(enableDataChecks: false, data: {'persons': <Object?>[]});
      final document = parseString(
        'query q { persons { dataCheck { percentage } } }',
      );

      await db.graphQLClient.query(
        QueryOptions(document: document, fetchPolicy: FetchPolicy.noCache),
      );

      expect(link.requests.single.operation.document, document);
    },
  );
}
