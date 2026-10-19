import 'dart:async';

import 'package:church_admin/src/core/graphql/links/auth_link_credentials.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

class AddAuthLink extends Link {
  static HttpLink defaultCreateHttpLink(String url) => HttpLink(url);

  final String url;
  final HttpLink Function(String) createHttpLink;

  late final ValueConnectableStream<AuthLinkCredentials?> _credentialsStream;
  late final StreamSubscription<AuthLinkCredentials?> _credentialsSubscription;

  late final HttpLink _httpLink = createHttpLink(url);

  AddAuthLink({
    required this.url,
    required Stream<AuthLinkCredentials?> credentialsStream,
    this.createHttpLink = defaultCreateHttpLink,
  }) {
    _credentialsStream = credentialsStream.publishValue();
    _credentialsSubscription = _credentialsStream.connect();
  }

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    if (request.isSubscription) {
      throw UnsupportedError(
        'The API server has no GraphQL subscriptions; '
        'watch a LiveQuery instead.',
      );
    }

    return _credentialsStream
        .map((credentials) => credentials?.idToken)
        .whereNotNull()
        .take(1)
        .asyncExpand(
          (token) => _httpLink.request(
            request.updateContextEntry<HttpLinkHeaders>(
              (headers) => HttpLinkHeaders(
                headers: {
                  ...?headers?.headers,
                  'Authorization': 'Bearer $token',
                },
              ),
            ),
            forward,
          ),
        );
  }

  @override
  Future<void> dispose() async {
    await _credentialsSubscription.cancel();
    await _httpLink.dispose();
  }
}
