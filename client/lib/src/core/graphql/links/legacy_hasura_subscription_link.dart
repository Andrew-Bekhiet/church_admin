import 'dart:async';
import 'dart:developer';

import 'package:church_admin/src/core/graphql/links/auth_link_credentials.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

/// Carries the subscriptions of DAOs that still run Hasura documents; it goes
/// once the last DAO moves to live queries.
class LegacyHasuraSubscriptionLink extends Link {
  static WebSocketLink defaultCreateWSLink(
    String url,
    SocketClientConfig config,
  ) => WebSocketLink(url, config: config);

  final String url;
  final WebSocketLink Function(String, SocketClientConfig) createWSLink;

  late final ValueConnectableStream<AuthLinkCredentials?> _credentialsStream;
  late final StreamSubscription<AuthLinkCredentials?> _credentialsSubscription;
  late final StreamSubscription<void>
  _reconnectSocketOnAccountChangeSubscription;

  WebSocketLink? _wsLink;

  Stream<String?> get _idTokenStream =>
      _credentialsStream.map((credentials) => credentials?.idToken);

  String get _webSocketUrl {
    final uri = Uri.parse(url);

    return uri.replace(scheme: uri.isScheme('https') ? 'wss' : 'ws').toString();
  }

  LegacyHasuraSubscriptionLink({
    required this.url,
    required Stream<AuthLinkCredentials?> credentialsStream,
    this.createWSLink = defaultCreateWSLink,
  }) {
    _credentialsStream = credentialsStream.publishValue();
    _credentialsSubscription = _credentialsStream.connect();
    _reconnectSocketOnAccountChangeSubscription = _credentialsStream
        .map((credentials) => (credentials?.uid, credentials?.hasuraUserId))
        .distinct()
        .skip(1)
        .where((identity) => identity.$1 != null)
        .listen((_) => _wsLink?.getSocketClient?.onConnectionLost());
  }

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    _wsLink ??= createWSLink(_webSocketUrl, _createWSConfig());

    return _wsLink!.request(request, forward);
  }

  SocketClientConfig _createWSConfig() {
    return SocketClientConfig(
      delayBetweenReconnectionAttempts: const Duration(
        seconds: 1,
        milliseconds: 500,
      ),
      onConnectionLost: (code, reason) {
        log('Connection lost: $code, reason: $reason');

        return null;
      },
      initialPayload: () async => {
        'headers': {
          'Authorization':
              'Bearer ${_credentialsStream.valueOrNull?.idToken ?? await _idTokenStream.whereNotNull().first}',
          'content-type': 'application/json',
        },
      },
    );
  }

  @override
  Future<void> dispose() async {
    await _reconnectSocketOnAccountChangeSubscription.cancel();
    await _credentialsSubscription.cancel();
    await _wsLink?.dispose();
  }
}
