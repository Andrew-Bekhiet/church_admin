import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/fake_change_feed_server.dart';

void main() {
  const signedIn = AuthLinkCredentials(
    uid: 'firebaseUid',
    hasuraUserId: 'currentUserId',
    idToken: 'firstToken',
  );
  const personChange = EntityChange(type: 'Person', id: 'p1', op: 'update');
  const familyChange = EntityChange(type: 'Family', id: 'f1', op: 'insert');

  JoinReply alwaysReplayable(String? since) =>
      (version: since ?? 'v1', complete: since != null);

  _Feed startFeed(
    FakeAsync async, {
    JoinReply Function(String? since)? replyToJoin,
    AuthLinkCredentials? initialCredentials = signedIn,
  }) {
    final server = FakeChangeFeedServer(
      replyToJoin: replyToJoin ?? alwaysReplayable,
    );
    final credentials = BehaviorSubject<AuthLinkCredentials?>.seeded(
      initialCredentials,
    );
    addTearDown(credentials.close);
    final client = ChangeFeedClient(
      socketUrl: Uri.parse('ws://localhost:4000/socket/websocket'),
      credentials: credentials,
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
    );
  }

  void tearDownFeed(
    _Feed feed,
  ) {
    feed.client.dispose();
  }

  test('the first join asks for a full resync', () {
    fakeAsync((async) {
      final feed = startFeed(async);

      expect(feed.events, [const ResyncRequired()]);
      expect(feed.server.joinedSince, [null]);

      tearDownFeed(feed);
    });
  });

  test('a push that follows the last version arrives as its changes', () {
    fakeAsync((async) {
      final feed = startFeed(async);

      feed.server.push(from: 'v1', to: 'v2', changes: [personChange]);
      async.elapse(const Duration(milliseconds: 10));

      expect(feed.events, [
        const ResyncRequired(),
        const ChangesReceived([personChange]),
      ]);

      tearDownFeed(feed);
    });
  });

  test('a push after a gap rejoins from the last version and replays '
      'the missed changes in order', () {
    fakeAsync((async) {
      final feed = startFeed(async);

      feed.server
        ..replyToJoin = (since) {
          scheduleMicrotask(() {
            feed.server
              ..push(from: 'v1', to: 'v2', changes: [personChange])
              ..push(from: 'v2', to: 'v3', changes: [familyChange]);
          });

          return (version: since ?? 'v3', complete: true);
        }
        ..push(from: 'v2', to: 'v3', changes: [familyChange]);
      async.elapse(const Duration(seconds: 1));

      expect(feed.server.joinedSince, [null, 'v1']);
      expect(feed.events, [
        const ResyncRequired(),
        const ChangesReceived([personChange]),
        const ChangesReceived([familyChange]),
      ]);

      tearDownFeed(feed);
    });
  });

  test('a join the server cannot replay asks for a full resync', () {
    fakeAsync((async) {
      final feed = startFeed(async);

      feed.server.replyToJoin = (_) => (version: 'v9', complete: false);
      unawaited(feed.server.dropConnection());
      async.elapse(const Duration(seconds: 5));

      expect(feed.server.joinedSince, [null, 'v1']);
      expect(feed.events, [const ResyncRequired(), const ResyncRequired()]);

      tearDownFeed(feed);
    });
  });

  test(
    'a reconnect rejoins from the last version with the refreshed token',
    () {
      fakeAsync((async) {
        final feed = startFeed(async);

        feed.server.push(from: 'v1', to: 'v2', changes: [personChange]);
        async.elapse(const Duration(milliseconds: 10));
        feed.credentials.add(
          const AuthLinkCredentials(
            uid: 'firebaseUid',
            hasuraUserId: 'currentUserId',
            idToken: 'refreshedToken',
          ),
        );
        async.elapse(const Duration(milliseconds: 10));
        unawaited(feed.server.dropConnection());
        async.elapse(const Duration(seconds: 5));

        expect(feed.server.connectedTokens, ['firstToken', 'refreshedToken']);
        expect(feed.server.joinedSince, [null, 'v2']);

        tearDownFeed(feed);
      });
    },
  );

  test('a permission change of the current user asks for a full resync', () {
    fakeAsync((async) {
      final feed = startFeed(async);

      feed.server.push(
        from: 'v1',
        to: 'v2',
        changes: [
          EntityChange(
            type: EntityChange.viewerScopeType,
            id: signedIn.hasuraUserId,
            op: 'update',
          ),
        ],
      );
      async.elapse(const Duration(milliseconds: 10));

      expect(feed.events, [const ResyncRequired(), const ResyncRequired()]);

      tearDownFeed(feed);
    });
  });

  test("another user's permission change arrives as a plain change", () {
    fakeAsync((async) {
      final feed = startFeed(async);
      const otherUsersScope = EntityChange(
        type: EntityChange.viewerScopeType,
        id: 'anotherUserId',
        op: 'update',
      );

      feed.server.push(from: 'v1', to: 'v2', changes: [otherUsersScope]);
      async.elapse(const Duration(milliseconds: 10));

      expect(feed.events, [
        const ResyncRequired(),
        const ChangesReceived([otherUsersScope]),
      ]);

      tearDownFeed(feed);
    });
  });

  test('a change with an unknown op still arrives', () {
    fakeAsync((async) {
      final feed = startFeed(async);
      const truncated = EntityChange(type: 'Person', id: null, op: 'truncate');

      feed.server.push(from: 'v1', to: 'v2', changes: [truncated]);
      async.elapse(const Duration(milliseconds: 10));

      expect(feed.events.last, const ChangesReceived([truncated]));

      tearDownFeed(feed);
    });
  });

  test('another user signing in reconnects with their token and resyncs', () {
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

      expect(feed.server.connectedTokens, ['firstToken', 'secondUserToken']);
      expect(feed.server.joinedSince, [null, null]);
      expect(feed.events, [const ResyncRequired(), const ResyncRequired()]);

      tearDownFeed(feed);
    });
  });

  test('signing out disconnects and no further changes arrive', () {
    fakeAsync((async) {
      final feed = startFeed(async);

      feed.credentials.add(null);
      async.elapse(const Duration(seconds: 1));
      feed.server.push(from: 'v1', to: 'v2', changes: [personChange]);
      async.elapse(const Duration(seconds: 5));

      expect(feed.server.isConnected, isFalse);
      expect(feed.events, [const ResyncRequired()]);

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
});
