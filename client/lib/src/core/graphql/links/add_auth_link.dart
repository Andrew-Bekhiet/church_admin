import 'dart:async';
import 'dart:developer';

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

  late final ValueConnectableStream<String?> _idTokenStream;
  late final StreamSubscription<String?> _idTokenSubscription;
  late final StreamSubscription<void> _reconnectSocketOnNewTokenSubscription;

  HttpLink? _httpLink;
  WebSocketLink? _wsLink;

  AddAuthLink({
    required this.url,
    required Stream<String?> idTokenStream,
    this.createHttpLink = defaultCreateHttpLink,
    this.createWSLink = defaultCreateWSLink,
  }) {
    _idTokenStream = idTokenStream.publishValue();
    _idTokenSubscription = _idTokenStream.connect();
    _reconnectSocketOnNewTokenSubscription = _idTokenStream
        .pairwise()
        .where((tokens) => tokens.last != null && tokens.last != tokens.first)
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
              'Bearer ${await _idTokenStream.whereNotNull().first}',
          'content-type': 'application/json',
        },
      },
    );
  }

  @override
  Future<void> dispose() async {
    await _reconnectSocketOnNewTokenSubscription.cancel();
    await _idTokenSubscription.cancel();
    await _httpLink?.dispose();
    await _wsLink?.dispose();
  }
}
