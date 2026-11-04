import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:fake_async/fake_async.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

import 'fake_ash_tables_link.dart';
import 'fake_live_queries_server.dart';

/// A [DatabaseService] wired to a [FakeAshTablesLink] and a change feed whose
/// server answers every registered live query with [announce], so real DAOs
/// read, write and follow the data the way they do against the Ash server.
class FakeAshBackend {
  static const settleTime = Duration(seconds: 5);

  /// The list [listing] shows once it settles over a backend serving
  /// [tables].
  static List<T> settledListing<T>(
    List<FakeAshTable> tables,
    PaginatableStreamBase<T> Function(DatabaseService db) listing,
  ) => fakeAsync((async) {
    final backend = FakeAshBackend(tables);
    final stream = listing(backend.db);
    final emitted = <List<T>>[];
    final subscription = stream.listen(emitted.add);
    async.elapse(settleTime);

    unawaited(subscription.cancel());
    unawaited(stream.dispose());
    backend.dispose();

    return emitted.last;
  });

  final FakeAshTablesLink server;
  final Dio? dio;
  final FakeLiveQueriesServer liveQueriesServer = FakeLiveQueriesServer();
  final BehaviorSubject<bool> _connectivity = BehaviorSubject.seeded(true);
  final BehaviorSubject<AuthLinkCredentials?> _credentials =
      BehaviorSubject.seeded(
        const AuthLinkCredentials(
          uid: 'uid',
          hasuraUserId: 'userId',
          idToken: 'idToken',
        ),
      );

  late final LiveQueriesClient liveQueries = LiveQueriesClient(
    socketUrl: Uri.parse('ws://localhost:4000/socket/websocket'),
    credentials: _credentials,
    idToken: ({forceRefresh = false}) async => 'idToken',
    webSocketChannelFactory: liveQueriesServer.connect,
  );

  late final DatabaseService db = DatabaseService(
    DBGraphQLClient(
      connectivityStream: _connectivity,
      link: server,
      cache: GraphQLCache(
        store: InMemoryStore(),
        typePolicies: GqlTypePolicies.policies,
      ),
    ),
    liveQueries: LiveQueryRegistry(
      liveQueries: liveQueries,
      connectivity: _connectivity,
    ),
    dio: dio,
  );

  FakeAshBackend(
    List<FakeAshTable> tables, {
    Map<String, FakeAshMutation> mutations = const {},
    Map<String, FakeAshAction> actions = const {},
    this.dio,
  }) : server = FakeAshTablesLink(
         tables,
         mutations: mutations,
         actions: actions,
       );

  void announce() => unawaited(liveQueriesServer.pushCurrentResults(server));

  void dispose() {
    liveQueries.dispose();
    unawaited(_credentials.close());
    unawaited(_connectivity.close());
  }
}
