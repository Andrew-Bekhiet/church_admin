import 'package:church_admin/church_admin.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

class ChurchAdminLink extends Link {
  final String url;

  ChurchAdminLink({required this.url});

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    return CAAuthRepository.I.idTokenStream.distinct().switchMap(
          (t) => request.isSubscription
              ? WebSocketLink(
                  url.replaceAll('http', 'ws'),
                  config: SocketClientConfig(
                    initialPayload: () => {
                      'headers': {
                        'Authorization': 'Bearer ${CAAuthRepository.I.idToken}',
                        'content-type': 'application/json'
                      },
                    },
                  ),
                ).request(request, forward)
              : HttpLink(
                  url,
                ).request(
                  request.updateContextEntry<HttpLinkHeaders>(
                    (headers) => HttpLinkHeaders(
                      headers: <String, String>{
                        if (headers?.headers != null) ...headers!.headers,
                        'Authorization': 'Bearer ${CAAuthRepository.I.idToken}',
                      },
                    ),
                  ),
                  forward,
                ),
        );
  }
}
