import 'dart:developer';

import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:rxdart_ext/operators.dart';

class AddAuthLink extends Link {
  static HttpLink defaultCreateHttpLink(String url) => HttpLink(url);
  static WebSocketLink defaultCreateWSLink(
    String url,
    SocketClientConfig config,
  ) =>
      WebSocketLink(url, config: config);

  final String url;
  final HttpLink Function(String) createHttpLink;
  final WebSocketLink Function(String, SocketClientConfig) createWSLink;

  final AuthService Function() _getAuthService;

  late final AuthService _authService = _getAuthService();

  HttpLink? _httpLink;
  WebSocketLink? _wsLink;

  AddAuthLink({
    required this.url,
    AuthService Function()? getAuthService,
    this.createHttpLink = defaultCreateHttpLink,
    this.createWSLink = defaultCreateWSLink,
  }) : _getAuthService = getAuthService ?? (() => AuthService.I);

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

    return _authService.idTokenStream.whereNotNull().switchMap(
          (t) => _httpLink!.request(
            request
                .updateContextEntry<HttpLinkHeaders>(_getHeadersWithToken(t)),
            forward,
          ),
        );
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
      delayBetweenReconnectionAttempts:
          const Duration(seconds: 1, milliseconds: 500),
      onConnectionLost: (code, reason) {
        log('Connection lost: $code, reason: $reason');
        return null;
      },
      initialPayload: () async => {
        'headers': {
          'Authorization':
              'Bearer ${await _authService.idTokenStream.whereNotNull().take(1).first}',
          'content-type': 'application/json',
        },
      },
    );
  }

  @override
  Future<void> dispose() async {
    await _httpLink?.dispose();
    await _wsLink?.dispose();
  }
}
