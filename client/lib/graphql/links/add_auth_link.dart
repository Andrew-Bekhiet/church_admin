import 'package:church_admin/church_admin.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

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

  AddAuthLink({
    required this.url,
    this.createHttpLink = defaultCreateHttpLink,
    this.createWSLink = defaultCreateWSLink,
    AuthService Function()? getAuthService,
  }) : _getAuthService = getAuthService ?? GetIt.I<AuthService>;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    return _authService.idTokenStream.switchMap(
      (t) => request.isSubscription
          ? getWebSocketRequest(request, t!, forward)
          : getHttpRequest(request, t!, forward),
    );
  }

  @visibleForTesting
  Stream<Response> getHttpRequest(
    Request request,
    String idToken, [
    NextLink? forward,
  ]) {
    return createHttpLink(url).request(
      request.updateContextEntry<HttpLinkHeaders>(
        (headers) => HttpLinkHeaders(
          headers: {
            if (headers?.headers != null) ...headers!.headers,
            'Authorization': 'Bearer $idToken',
          },
        ),
      ),
      forward,
    );
  }

  @visibleForTesting
  Stream<Response> getWebSocketRequest(
    Request request,
    String idToken, [
    NextLink? forward,
  ]) {
    return createWSLink(
      _getWebSocketURL(Uri.parse(url)),
      SocketClientConfig(
        inactivityTimeout: null,
        initialPayload: () => {
          'headers': {
            'Authorization': 'Bearer $idToken',
            'content-type': 'application/json',
          },
        },
      ),
    ).request(request, forward);
  }

  String _getWebSocketURL(Uri uri) {
    return (uri.isScheme('https')
            ? uri.replace(scheme: 'wss')
            : uri.replace(scheme: 'ws'))
        .toString();
  }
}
