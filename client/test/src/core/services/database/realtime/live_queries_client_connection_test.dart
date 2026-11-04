import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:gql/language.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:phoenix_socket/phoenix_socket.dart';

import '../../../../fakes/live_queries_test_feed.dart';

void main() {
  test('rejoining after the connection dropped is announced again', () {
    fakeAsync((async) {
      final feed = LiveQueriesTestFeed.start(async);

      unawaited(feed.server.dropConnection());
      async.elapse(const Duration(seconds: 5));

      expect(feed.server.connectedUris, hasLength(2));
      expect(feed.events, [const ChannelJoined(), const ChannelJoined()]);

      feed.dispose();
    });
  });

  test('the server forgets a registration when the connection drops', () {
    fakeAsync((async) {
      final feed = LiveQueriesTestFeed.start(async);
      unawaited(
        feed.register(
          async,
          LiveRegistration(
            ref: 'ref-1',
            request: LiveQueryRequest(
              document: parseString('query people { people }'),
              operationName: 'people',
              variables: const {},
            ),
          ),
        ),
      );
      final registeredBeforeDrop = {...feed.server.registrations};

      unawaited(feed.server.dropConnection());
      async.elapse(const Duration(seconds: 5));

      expect(registeredBeforeDrop, isNotEmpty);
      expect(feed.server.registrations, isEmpty);

      feed.dispose();
    });
  });

  test('a join refused for an expired token reconnects with a refreshed '
      'token', () {
    fakeAsync((async) {
      final feed = LiveQueriesTestFeed.start(
        async,
        prepareServer: (server) => server.expiredTokens.add('token-1'),
      );
      async.elapse(const Duration(seconds: 5));

      expect(feed.idTokens.forceRefreshes, [false, true]);
      expect(feed.server.connectedTokens, ['token-1', 'token-2']);
      expect(feed.events, [const ChannelJoined()]);

      feed.dispose();
    });
  });

  test('a refused connection backs off instead of retrying at once', () {
    fakeAsync((async) {
      final feed = LiveQueriesTestFeed.start(
        async,
        prepareServer: (server) => server.refuseConnections = true,
      );
      async.elapse(const Duration(minutes: 1));

      final delaysBetweenAttempts = PhoenixSocketOptions().reconnectDelays;
      expect(
        feed.server.connectedUris.length,
        inInclusiveRange(2, delaysBetweenAttempts.length + 1),
      );
      expect(feed.events, isEmpty);

      feed.dispose();
    });
  });

  test('a refused connection retries as soon as the auth state changes', () {
    fakeAsync((async) {
      final feed = LiveQueriesTestFeed.start(
        async,
        prepareServer: (server) => server.refuseConnections = true,
      );
      async.elapse(const Duration(seconds: 20));

      feed.server.refuseConnections = false;
      feed.credentials.add(LiveQueriesTestFeed.anotherUser);
      async.elapse(const Duration(seconds: 2));

      expect(feed.server.isConnected, isTrue);
      expect(feed.events, [const ChannelJoined()]);

      feed.dispose();
    });
  });

  test('another user signing in reconnects and joins again', () {
    fakeAsync((async) {
      final feed = LiveQueriesTestFeed.start(async);

      feed.credentials.add(LiveQueriesTestFeed.anotherUser);
      async.elapse(const Duration(seconds: 1));

      expect(feed.server.connectedUris, hasLength(2));
      expect(feed.events, [const ChannelJoined(), const ChannelJoined()]);

      feed.dispose();
    });
  });

  test('signing out disconnects', () {
    fakeAsync((async) {
      final feed = LiveQueriesTestFeed.start(async);

      feed.credentials.add(null);
      async.elapse(const Duration(seconds: 1));

      expect(feed.server.isConnected, isFalse);

      feed.dispose();
    });
  });

  test('nothing connects while signed out', () {
    fakeAsync((async) {
      final feed = LiveQueriesTestFeed.start(async, initialCredentials: null);

      expect(feed.server.connectedUris, isEmpty);

      feed.dispose();
    });
  });
}
