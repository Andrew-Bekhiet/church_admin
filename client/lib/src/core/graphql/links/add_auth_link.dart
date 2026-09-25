import 'dart:async';
import 'dart:developer';

import 'package:church_admin/src/core/graphql/links/auth_link_credentials.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

class AddAuthLink extends Link {
  static HttpLink defaultCreateHttpLink(String url) => HttpLink(url);
  static WebSocketLink defaultCreateWSLink(
    String url,
    SocketClientConfig config,
  ) => WebSocketLink(url, config: config);

  final String url;
  final HttpLink Function(String) createHttpLink;
  final WebSocketLink Function(String, SocketClientConfig) createWSLink;

  late final ValueConnectableStream<AuthLinkCredentials?> _credentialsStream;
  late final StreamSubscription<AuthLinkCredentials?> _credentialsSubscription;
  late final StreamSubscription<void>
  _reconnectSocketOnAccountChangeSubscription;

  HttpLink? _httpLink;
  WebSocketLink? _wsLink;

  Stream<String?> get _idTokenStream =>
      _credentialsStream.map((credentials) => credentials?.idToken);

  AddAuthLink({
    required this.url,
    required Stream<AuthLinkCredentials?> credentialsStream,
    this.createHttpLink = defaultCreateHttpLink,
    this.createWSLink = defaultCreateWSLink,
  }) {
    _credentialsStream = credentialsStream.publishValue();
    _credentialsSubscription = _credentialsStream.connect();
    _reconnectSocketOnAccountChangeSubscription = _credentialsStream
        .map((credentials) => credentials?.uid)
        .distinct()
        .skip(1)
        .whereNotNull()
        .listen((_) => _wsLink?.getSocketClient?.onConnectionLost());
  }

  HttpLinkHeaders Function(HttpLinkHeaders?) _getHeadersWithToken(
    String token,
  ) =>
      (headers) => HttpLinkHeaders(
        headers: {
          ...headers?.headers ?? {},
          'Authorization': 'Bearer $token',
        },
      );

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    return request.isSubscription
        ? getWebSocketResponse(request, forward)
        : getHttpResponse(request, forward);
  }

  @visibleForTesting
  Stream<Response> getHttpResponse(
    Request request, [
    NextLink? forward,
  ]) {
    _httpLink ??= createHttpLink(url);

    return _idTokenStream
        .whereNotNull()
        .take(1)
        .asyncExpand(
          (t) => _httpLink!.request(
            request.updateContextEntry<HttpLinkHeaders>(
              _getHeadersWithToken(t),
            ),
            forward,
          ),
        );
  }

  @visibleForTesting
  Stream<Response> getWebSocketResponse(
    Request request, [
    NextLink? forward,
  ]) {
    _wsLink ??= createWSLink(
      _getWebSocketURL(Uri.parse(url)),
      _createWSConfig(),
    );

    return _wsLink!.request(request, forward);
  }

  String _getWebSocketURL(Uri uri) {
    return (uri.isScheme('https')
            ? uri.replace(scheme: 'wss')
            : uri.replace(scheme: 'ws'))
        .toString();
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
    await _httpLink?.dispose();
    await _wsLink?.dispose();
  }
}
