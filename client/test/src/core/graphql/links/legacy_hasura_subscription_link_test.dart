import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';
import 'package:web_socket/testing.dart';
import 'package:web_socket/web_socket.dart';
import 'package:web_socket_channel/adapter_web_socket_channel.dart';

void main() {
  Request subscriptionRequest() => Request(
    operation: Operation(
      document: gql('subscription WatchUsers { users { id } }'),
    ),
  );

  List<String> connectionInitAuthorizationsAfter(
    void Function(BehaviorSubject<AuthLinkCredentials?> credentials) act, {
    required AuthLinkCredentials initial,
  }) {
    final authorizations = <String>[];
    fakeAsync((async) {
      final credentials = BehaviorSubject<AuthLinkCredentials?>.seeded(initial);
      final unit = LegacyHasuraSubscriptionLink(
        credentialsStream: credentials,
        url: 'https://example.com/gql',
        createWSLink: (url, config) => _fakeServerWSLink(
          url,
          config,
          onClientMessage: (message) {
            if (message case {
              'type': 'connection_init',
              'payload': {
                'headers': {'Authorization': final String authorization},
              },
            }) {
              authorizations.add(authorization);
            }
          },
        ),
      );

      final subscription = unit.request(subscriptionRequest()).listen(null);
      async.flushMicrotasks();
      act(credentials);
      async.elapse(const Duration(seconds: 2));

      unawaited(subscription.cancel());
      unawaited(unit.dispose());
      unawaited(credentials.close());
    });

    return authorizations;
  }

  test('reconnects with the new token when another user signs in', () {
    expect(
      connectionInitAuthorizationsAfter(
        initial: _credentials(uid: 'firstUser', idToken: 'firstUserToken'),
        (credentials) => credentials
          ..add(null)
          ..add(_credentials(uid: 'secondUser', idToken: 'secondUserToken')),
      ),
      ['Bearer firstUserToken', 'Bearer secondUserToken'],
    );
  });

  test('reconnects when the same account gains its hasura user id', () {
    expect(
      connectionInitAuthorizationsAfter(
        initial: _credentials(idToken: 'claimlessToken'),
        (credentials) => credentials.add(
          _credentials(idToken: 'claimedToken', hasuraUserId: 'hasuraUser'),
        ),
      ),
      ['Bearer claimlessToken', 'Bearer claimedToken'],
    );
  });

  test('keeps the connection when the id token refreshes', () {
    expect(
      connectionInitAuthorizationsAfter(
        initial: _credentials(idToken: 'firstIdToken'),
        (credentials) => credentials
          ..add(_credentials(idToken: 'secondIdToken'))
          ..add(_credentials(idToken: 'thirdIdToken')),
      ),
      ['Bearer firstIdToken'],
    );
  });

  test('connects over the secure websocket scheme of the url', () {
    String? connectedUrl;
    final unit = LegacyHasuraSubscriptionLink(
      credentialsStream: Stream.value(_credentials(idToken: 'idToken')),
      url: 'https://example.com/gql',
      createWSLink: (url, config) {
        connectedUrl = url;

        return _fakeServerWSLink(url, config, onClientMessage: (_) {});
      },
    );
    addTearDown(unit.dispose);

    unit.request(subscriptionRequest()).listen(null).cancel();

    expect(connectedUrl, 'wss://example.com/gql');
  });
}

WebSocketLink _fakeServerWSLink(
  String url,
  SocketClientConfig config, {
  required void Function(Object? message) onClientMessage,
}) {
  return WebSocketLink(
    url,
    config: SocketClientConfig(
      delayBetweenReconnectionAttempts: config.delayBetweenReconnectionAttempts,
      initialPayload: config.initialPayload,
      connectFn: (uri, protocols) {
        final (client, server) = fakes();
        server.events.listen((event) {
          if (event case TextDataReceived(:final text)) {
            onClientMessage(jsonDecode(text));
          }
        });

        return AdapterWebSocketChannel(client);
      },
    ),
  );
}

AuthLinkCredentials _credentials({
  required String idToken,
  String uid = 'uid',
  String? hasuraUserId,
}) => AuthLinkCredentials(
  uid: uid,
  hasuraUserId: hasuraUserId,
  idToken: idToken,
);
