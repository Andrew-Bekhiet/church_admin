import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/fake_change_feed_server.dart';

void main() {
  const signedIn = AuthLinkCredentials(
    uid: 'firebaseUid',
    hasuraUserId: 'currentUserId',
    idToken: 'firstToken',
  );
  final document = parseString(r'query people($filter: String) { people }');
  final request = LiveQueryRequest(
    document: document,
    operationName: 'people',
    variables: const {'filter': 'مينا', 'first': 10},
    window: (rows: 20, chunk: 10),
    resultHashes: const ['abc'],
  );
  const ref = 'ref-1';

  _Feed startFeed(
    FakeAsync async, {
    AuthLinkCredentials? initialCredentials = signedIn,
    void Function(FakeChangeFeedServer server)? prepareServer,
  }) {
    final server = FakeChangeFeedServer();
    prepareServer?.call(server);
    final credentials = BehaviorSubject<AuthLinkCredentials?>.seeded(
      initialCredentials,
    );
    addTearDown(credentials.close);
    final idTokens = _IdTokens();
    final client = ChangeFeedClient(
      socketUrl: Uri.parse('ws://localhost:4000/socket/websocket'),
      credentials: credentials,
      idToken: idTokens.call,
      webSocketChannelFactory: server.connect,
    );
    final events = <ChangeFeedEvent>[];
    client.events.listen(events.add);
    async.elapse(const Duration(seconds: 1));

    return (
      client: client,
      server: server,
      events: events,
      credentials: credentials,
      idTokens: idTokens,
    );
  }

  void tearDownFeed(
    _Feed feed,
  ) {
    feed.client.dispose();
  }

  Future<LiveRegisterOutcome> register(FakeAsync async, _Feed feed) {
    final outcome = feed.client.register(
      LiveRegistration(ref: ref, request: request),
    );
    async.elapse(const Duration(seconds: 1));

    return outcome;
  }

  test('joining the channel is announced', () {
    fakeAsync((async) {
      final feed = startFeed(async);

      expect(feed.events, [const ChannelJoined()]);

      tearDownFeed(feed);
    });
  });

  group('a registration', () {
    test('reaches the server with the document, the variables and the '
        'window', () {
      fakeAsync((async) {
        final feed = startFeed(async);

        unawaited(register(async, feed));

        expect(feed.server.registrations[ref], {
          'ref': ref,
          'document': printNode(document),
          'operationName': request.operationName,
          'variables': {'filter': 'مينا'},
          'window': {'rows': 20, 'chunk': 10},
          'resultHashes': ['abc'],
        });

        tearDownFeed(feed);
      });
    });

    test('is accepted when the server replies', () {
      fakeAsync((async) {
        final feed = startFeed(async);
        LiveRegisterOutcome? outcome;

        unawaited(register(async, feed).then((value) => outcome = value));
        async.flushMicrotasks();

        expect(outcome, LiveRegisterOutcome.accepted);

        tearDownFeed(feed);
      });
    });

    test('keeps the paging variables of a query without a window', () {
      fakeAsync((async) {
        final feed = startFeed(async);
        final entityRequest = LiveQueryRequest(
          document: document,
          operationName: 'people',
          variables: const {'first': 10},
        );

        unawaited(
          feed.client.register(
            LiveRegistration(ref: ref, request: entityRequest),
          ),
        );
        async.elapse(const Duration(seconds: 1));

        expect(feed.server.registrations[ref]?['variables'], {'first': 10});
        expect(feed.server.registrations[ref]?['window'], isNull);

        tearDownFeed(feed);
      });
    });

    test('the server refuses is reported as refused', () {
      fakeAsync((async) {
        final feed = startFeed(
          async,
          prepareServer: (server) => server.refusalFor = (_) => 'too_many',
        );
        LiveRegisterOutcome? outcome;

        unawaited(register(async, feed).then((value) => outcome = value));
        async.flushMicrotasks();

        expect(outcome, LiveRegisterOutcome.refused);

        tearDownFeed(feed);
      });
    });

    test('the server fails without a reason is reported as failed', () {
      fakeAsync((async) {
        final feed = startFeed(
          async,
          prepareServer: (server) => server.failRegistrations = true,
        );
        LiveRegisterOutcome? outcome;

        unawaited(register(async, feed).then((value) => outcome = value));
        async.flushMicrotasks();

        expect(outcome, LiveRegisterOutcome.failed);

        tearDownFeed(feed);
      });
    });

    test('before the channel is joined is reported as not joined', () {
      fakeAsync((async) {
        final feed = startFeed(async, initialCredentials: null);
        LiveRegisterOutcome? outcome;

        unawaited(register(async, feed).then((value) => outcome = value));
        async.flushMicrotasks();

        expect(outcome, LiveRegisterOutcome.notJoined);
        expect(feed.server.registrations, isEmpty);

        tearDownFeed(feed);
      });
    });

    test('can be withdrawn and asked to resync', () {
      fakeAsync((async) {
        final feed = startFeed(async);
        unawaited(register(async, feed));

        feed.client
          ..resync(ref)
          ..unregister(ref);
        async.elapse(const Duration(seconds: 1));

        expect(feed.server.resyncedRefs, [ref]);
        expect(feed.server.registrations, isEmpty);

        tearDownFeed(feed);
      });
    });
  });

  group('a result push', () {
    test('with the full data arrives as a full result', () {
      fakeAsync((async) {
        final feed = startFeed(async);
        const data = {'people': 3};

        feed.server.pushFull(ref, data);
        async.elapse(const Duration(milliseconds: 10));

        expect(
          feed.events.last,
          const LiveResultReceived(
            FullLiveResult(ref: ref, data: data),
          ),
        );

        tearDownFeed(feed);
      });
    });

    test('with rows, an order, a count and an end keyset arrives as a '
        'list delta', () {
      fakeAsync((async) {
        final feed = startFeed(async);
        const row = {'id': 'a', 'name': 'مينا'};

        feed.server.pushDelta(
          ref,
          rows: [row],
          order: ['b', 'a'],
          count: 2,
          endKeyset: 'k',
        );
        async.elapse(const Duration(milliseconds: 10));

        expect(
          feed.events.last,
          const LiveResultReceived(
            ListDeltaLiveResult(
              ref: ref,
              rows: [row],
              order: ['b', 'a'],
              count: 2,
              endKeyset: 'k',
            ),
          ),
        );

        tearDownFeed(feed);
      });
    });

    test('with rows only arrives without an order', () {
      fakeAsync((async) {
        final feed = startFeed(async);

        feed.server.pushDelta(ref, rows: const []);
        async.elapse(const Duration(milliseconds: 10));

        expect(
          feed.events.last,
          const LiveResultReceived(
            ListDeltaLiveResult(ref: ref, rows: []),
          ),
        );

        tearDownFeed(feed);
      });
    });
  });

  test('rejoining after the connection dropped is announced again', () {
    fakeAsync((async) {
      final feed = startFeed(async);

      unawaited(feed.server.dropConnection());
      async.elapse(const Duration(seconds: 5));

      expect(feed.server.connectedTokens, ['token-1', 'token-2']);
      expect(feed.events, [const ChannelJoined(), const ChannelJoined()]);

      tearDownFeed(feed);
    });
  });

  test('the server forgets a registration when the connection drops', () {
    fakeAsync((async) {
      final feed = startFeed(async);
      unawaited(register(async, feed));

      unawaited(feed.server.dropConnection());
      async.elapse(const Duration(seconds: 5));

      expect(feed.server.registrations, isEmpty);

      tearDownFeed(feed);
    });
  });

  test('a join refused for an expired token reconnects with a refreshed '
      'token', () {
    fakeAsync((async) {
      final feed = startFeed(
        async,
        prepareServer: (server) => server.expiredTokens.add('token-1'),
      );
      async.elapse(const Duration(seconds: 5));

      expect(feed.idTokens.forceRefreshes, [false, true]);
      expect(feed.server.connectedTokens, ['token-1', 'token-2']);
      expect(feed.events, [const ChannelJoined()]);

      tearDownFeed(feed);
    });
  });

  test('a refused connection backs off instead of retrying at once', () {
    fakeAsync((async) {
      final feed = startFeed(
        async,
        prepareServer: (server) => server.refuseConnections = true,
      );
      async.elapse(const Duration(minutes: 1));

      expect(feed.server.connectedUris.length, inInclusiveRange(2, 8));
      expect(feed.events, isEmpty);

      tearDownFeed(feed);
    });
  });

  test('a refused connection retries as soon as the auth state changes', () {
    fakeAsync((async) {
      final feed = startFeed(
        async,
        prepareServer: (server) => server.refuseConnections = true,
      );
      async.elapse(const Duration(seconds: 20));

      feed.server.refuseConnections = false;
      feed.credentials.add(
        const AuthLinkCredentials(
          uid: 'firebaseUid',
          hasuraUserId: 'currentUserId',
          idToken: 'approvedToken',
        ),
      );
      async.elapse(const Duration(seconds: 2));

      expect(feed.server.isConnected, isTrue);
      expect(feed.events, [const ChannelJoined()]);

      tearDownFeed(feed);
    });
  });

  test('another user signing in reconnects with their token and joins '
      'again', () {
    fakeAsync((async) {
      final feed = startFeed(async);

      feed.credentials.add(
        const AuthLinkCredentials(
          uid: 'secondFirebaseUid',
          hasuraUserId: 'secondUserId',
          idToken: 'secondUserToken',
        ),
      );
      async.elapse(const Duration(seconds: 1));

      expect(feed.server.connectedTokens, ['token-1', 'token-2']);
      expect(feed.events, [const ChannelJoined(), const ChannelJoined()]);

      tearDownFeed(feed);
    });
  });

  test('signing out disconnects and no further results arrive', () {
    fakeAsync((async) {
      final feed = startFeed(async);

      feed.credentials.add(null);
      async.elapse(const Duration(seconds: 1));
      feed.server.pushFull(ref, const {});
      async.elapse(const Duration(seconds: 5));

      expect(feed.server.isConnected, isFalse);
      expect(feed.events, [const ChannelJoined()]);

      tearDownFeed(feed);
    });
  });

  test('nothing connects while signed out', () {
    fakeAsync((async) {
      final feed = startFeed(async, initialCredentials: null);

      expect(feed.server.connectedUris, isEmpty);

      tearDownFeed(feed);
    });
  });
}

typedef _Feed = ({
  ChangeFeedClient client,
  FakeChangeFeedServer server,
  List<ChangeFeedEvent> events,
  BehaviorSubject<AuthLinkCredentials?> credentials,
  _IdTokens idTokens,
});

/// Hands out a new token on every request, as Firebase does once the
/// previous one expires.
class _IdTokens {
  final List<bool> forceRefreshes = [];

  Future<String?> call({bool forceRefresh = false}) async {
    forceRefreshes.add(forceRefresh);

    return 'token-${forceRefreshes.length}';
  }
}
