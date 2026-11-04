import 'dart:async';
import 'dart:math' as math;

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

import 'ash_responses.dart';
import 'fake_live_queries_server.dart';

/// An Ash GraphQL server over an in-memory table of [AshTestItem]s: a request
/// with an `id` variable reads one row, any other reads a keyset page
/// (`first`, `after` = the id of the previous page's last row).
class FakeAshServerLink extends Link {
  final List<AshTestItem> rows;
  Duration latency;
  bool reachable = true;

  /// Answers each request with an `extensions.resultHash`, kept in
  /// [issuedResultHashes].
  bool sendsResultHashes = false;
  final List<String> issuedResultHashes = [];

  int requestCount = 0;
  int maxRequestsInFlight = 0;
  int _requestsInFlight = 0;

  FakeAshServerLink(this.rows, {this.latency = Duration.zero});

  void rename(String id, String name) {
    final index = rows.indexWhere((row) => row.id == id);
    rows[index] = rows[index].renamed(name);
  }

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requestCount++;
    if (!reachable) {
      return Stream.fromFuture(
        Future.delayed(
          latency,
          () => throw const ServerException(originalException: 'unreachable'),
        ),
      );
    }
    _requestsInFlight++;
    maxRequestsInFlight = math.max(maxRequestsInFlight, _requestsInFlight);
    final data = _answer(request);

    return Stream.fromFuture(
      Future.delayed(latency, () {
        _requestsInFlight--;

        return Response(
          data: data,
          response: const {},
          context: sendsResultHashes ? _hashContext() : const Context(),
        );
      }),
    );
  }

  Context _hashContext() {
    final hash = 'hash-${issuedResultHashes.length}';
    issuedResultHashes.add(hash);

    return const Context().withEntry(
      ResponseExtensions({'resultHash': hash}),
    );
  }

  AshTestItem? _mutate(String root, Json variables) {
    if (root.startsWith('destroy')) {
      final index = rows.indexWhere((row) => row.id == variables['id']);

      return index < 0 ? null : rows.removeAt(index);
    }

    final written = AshTestItem.fromJson(
      (variables['input'] as Map).cast<String, dynamic>(),
    );
    final index = rows.indexWhere((row) => row.id == written.id);
    if (index < 0) {
      rows.add(written);
    } else {
      rows[index] = written;
    }

    return written;
  }

  Json _answer(Request request) {
    final root = AshResultParser.rootFieldOf(request.operation.document);
    final variables = request.variables;

    if (request.isMutation) {
      return {
        '__typename': 'Mutation',
        root: AshResponses.mutationResult(_mutate(root, variables)?.toJson()),
      };
    }

    if (variables['id'] case final String id) {
      return {
        '__typename': 'Query',
        root: rows.firstWhereOrNull((row) => row.id == id)?.toJson(),
      };
    }

    final filteredRows = switch (variables['filter']) {
      {'id': {'in': final List<Object?> ids}} =>
        rows.where((row) => ids.contains(row.id)).toList(),
      _ => rows,
    };
    final after = variables['after'] as String?;
    final start = after == null
        ? 0
        : filteredRows.indexWhere((row) => row.id == after) + 1;
    final first = variables['first'] as int? ?? filteredRows.length;
    final page = filteredRows.skip(start).take(first).toList();

    return {
      '__typename': 'Query',
      root: AshResponses.page(
        [for (final row in page) row.toJson()],
        count: filteredRows.length,
      ),
    };
  }
}

class LiveQueryHarness {
  static final listDocument = gql(r'''
    query testItems($filter: TestItemFilterInput, $first: Int, $after: String) {
      testItems(filter: $filter, first: $first, after: $after) {
        count endKeyset results { id name }
      }
    }
  ''');
  static final entityDocument = gql(r'''
    query testItem($id: ID!) { testItem(id: $id) { id name } }
  ''');

  final FakeAshServerLink server;
  final FakeLiveQueriesServer liveQueriesServer = FakeLiveQueriesServer();
  final BehaviorSubject<bool> connectivity = BehaviorSubject.seeded(true);
  final BehaviorSubject<AuthLinkCredentials?> credentials =
      BehaviorSubject.seeded(
        const AuthLinkCredentials(
          uid: 'uid',
          hasuraUserId: 'userId',
          idToken: 'idToken',
        ),
      );

  late final LiveQueriesClient liveQueries = LiveQueriesClient(
    socketUrl: Uri.parse('ws://localhost:4000/socket/websocket'),
    credentials: credentials,
    idToken: ({forceRefresh = false}) async => 'idToken',
    webSocketChannelFactory: liveQueriesServer.connect,
  );

  late final DBGraphQLClient client = DBGraphQLClient(
    connectivityStream: connectivity,
    link: server,
    cache: GraphQLCache(store: InMemoryStore()),
  );
  late final LiveQueryRegistry registry = LiveQueryRegistry(
    liveQueries: liveQueries,
    connectivity: connectivity,
  );

  LiveQueryHarness(List<AshTestItem> rows, {Duration latency = Duration.zero})
    : server = FakeAshServerLink(rows, latency: latency);

  LiveQuery<List<AshTestItem>> watchList() => LiveQuery(
    client: client,
    registry: registry,
    options: WatchQueryOptions(
      document: listDocument,
      parserFn: (data) =>
          AshResultParser(listDocument).page(AshTestItem.fromJson)(data).items,
    ),
  );

  LiveQuery<AshTestItem?> watchEntity(String id) => LiveQuery(
    client: client,
    registry: registry,
    options: WatchQueryOptions(
      document: entityDocument,
      variables: {'id': id},
      parserFn: AshResultParser(entityDocument).entity(AshTestItem.fromJson),
    ),
  );

  void announce() => unawaited(liveQueriesServer.pushCurrentResults(server));

  void goOffline() {
    server.reachable = false;
    connectivity.add(false);
  }

  void goOnline() {
    server.reachable = true;
    connectivity.add(true);
  }

  void dispose() {
    liveQueries.dispose();
    unawaited(credentials.close());
    unawaited(connectivity.close());
  }
}
