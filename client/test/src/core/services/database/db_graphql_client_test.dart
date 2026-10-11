import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

class _RecordingLink extends Link {
  final sentDocuments = <DocumentNode>[];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    sentDocuments.add(request.operation.document);

    return Stream.value(
      const Response(data: {'persons': <Object?>[]}, response: {}),
    );
  }
}

void main() {
  DocumentNode documentOf(String kind) => parseString(
    '''
    $kind ops { persons { id dataCheck { ...DataCheck } } }
    fragment DataCheck on DataChecks { percentage }
  ''',
  );

  ({DBGraphQLClient client, _RecordingLink link}) createClient({
    required bool enableDataChecks,
  }) {
    final link = _RecordingLink();
    final client = DBGraphQLClient(
      connectivityStream: BehaviorSubject.seeded(true),
      link: link,
      cache: GraphQLCache(),
      autoChangeFetchPolicy: false,
      transformDocument: enableDataChecks
          ? null
          : DataCheckSelectionRemover.removeFrom,
    );

    return (client: client, link: link);
  }

  String sentOperation(_RecordingLink link) =>
      printNode(link.sentDocuments.single);

  group('with data checks disabled', () {
    test('a query is sent without dataCheck', () async {
      final (:client, :link) = createClient(enableDataChecks: false);

      await client.query(
        QueryOptions(
          document: documentOf('query'),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );

      expect(sentOperation(link), isNot(contains('ataCheck')));
    });

    test('a mutation is sent without dataCheck', () async {
      final (:client, :link) = createClient(enableDataChecks: false);

      await client.mutate(
        MutationOptions(
          document: documentOf('mutation'),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );

      expect(sentOperation(link), isNot(contains('ataCheck')));
    });

    test('a subscription is sent without dataCheck', () async {
      final (:client, :link) = createClient(enableDataChecks: false);

      await client
          .subscribe(
            SubscriptionOptions(
              document: documentOf('subscription'),
              fetchPolicy: FetchPolicy.noCache,
            ),
          )
          .first;

      expect(sentOperation(link), isNot(contains('ataCheck')));
    });

    test('a watched query is sent without dataCheck', () async {
      final (:client, :link) = createClient(enableDataChecks: false);

      await client
          .watchQuery(
            WatchQueryOptions(
              document: documentOf('query'),
              fetchPolicy: FetchPolicy.noCache,
              fetchResults: true,
            ),
          )
          .stream
          .first;

      expect(sentOperation(link), isNot(contains('ataCheck')));
    });
  });

  group('with data checks enabled', () {
    test('a query is sent with dataCheck', () async {
      final (:client, :link) = createClient(enableDataChecks: true);

      await client.query(
        QueryOptions(
          document: documentOf('query'),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );

      expect(sentOperation(link), contains('dataCheck'));
    });

    test('a subscription is sent with dataCheck', () async {
      final (:client, :link) = createClient(enableDataChecks: true);

      await client
          .subscribe(
            SubscriptionOptions(
              document: documentOf('subscription'),
              fetchPolicy: FetchPolicy.noCache,
            ),
          )
          .first;

      expect(sentOperation(link), contains('dataCheck'));
    });
  });
}
