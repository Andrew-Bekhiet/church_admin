import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:fake_async/fake_async.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

import 'fake_ash_tables_link.dart';

/// A [DatabaseService] wired to a [FakeAshTablesLink] and a change feed the
/// test drives with [announce], so real DAOs read, write and refetch the
/// way they do against the Ash server.
class FakeAshBackend {
  /// Longer than every live query debounce, so a test that elapses it sees
  /// the refetched data.
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
  final StreamController<ChangeFeedEvent> _changeFeed =
      StreamController.broadcast();
  final BehaviorSubject<bool> _connectivity = BehaviorSubject.seeded(true);

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
      changeFeedEvents: _changeFeed.stream,
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

  void announce(List<EntityChange> changes) =>
      _changeFeed.add(ChangesReceived(changes));

  void resync() => _changeFeed.add(const ResyncRequired());

  void dispose() {
    unawaited(_changeFeed.close());
    unawaited(_connectivity.close());
  }
}
