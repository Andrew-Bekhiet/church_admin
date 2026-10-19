import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  Request queryRequest() => Request(
    operation: Operation(document: gql('query GetUsers { users { id } }')),
  );

  test('the default HTTP link posts to the given url', () {
    final unit = AddAuthLink.defaultCreateHttpLink('https://example.com/gql');
    addTearDown(unit.dispose);

    expect(unit.uri, Uri.parse('https://example.com/gql'));
  });

  test('a query waits for an id token before it is sent', () {
    fakeAsync((async) {
      final credentials = BehaviorSubject<AuthLinkCredentials?>.seeded(null);
      final httpLink = _HeaderRecordingHttpLink();
      final unit = AddAuthLink(
        credentialsStream: credentials,
        url: 'https://example.com/gql',
        createHttpLink: (_) => httpLink,
      );

      unit.request(queryRequest()).listen(null);
      async.flushMicrotasks();
      final sentWhileSignedOut = [...httpLink.sentAuthorizations];
      credentials.add(_credentials(idToken: 'signedInToken'));
      async.flushMicrotasks();

      expect(sentWhileSignedOut, isEmpty);
      expect(httpLink.sentAuthorizations, ['Bearer signedInToken']);

      unit.dispose();
      credentials.close();
    });
  });

  test('a query after a token refresh carries the refreshed token', () {
    fakeAsync((async) {
      final credentials = BehaviorSubject<AuthLinkCredentials?>.seeded(
        _credentials(idToken: 'firstIdToken'),
      );
      final httpLink = _HeaderRecordingHttpLink();
      final unit = AddAuthLink(
        credentialsStream: credentials,
        url: 'url',
        createHttpLink: (_) => httpLink,
      );

      unit.request(queryRequest()).listen(null);
      async.flushMicrotasks();
      credentials.add(_credentials(idToken: 'refreshedIdToken'));
      async.flushMicrotasks();
      unit.request(queryRequest()).listen(null);
      async.flushMicrotasks();

      expect(httpLink.sentAuthorizations, [
        'Bearer firstIdToken',
        'Bearer refreshedIdToken',
      ]);

      unit.dispose();
      credentials.close();
    });
  });

  test('a query keeps the headers it already had', () async {
    final httpLink = _HeaderRecordingHttpLink();
    final unit = AddAuthLink(
      credentialsStream: Stream.value(_credentials(idToken: 'idToken')),
      url: 'url',
      createHttpLink: (_) => httpLink,
    );
    addTearDown(unit.dispose);

    await unit
        .request(
          queryRequest().updateContextEntry<HttpLinkHeaders>(
            (_) => const HttpLinkHeaders(headers: {'foo': 'bar'}),
          ),
        )
        .drain<void>();

    expect(httpLink.sentHeaders.single, {
      'foo': 'bar',
      'Authorization': 'Bearer idToken',
    });
  });

  test('a query completes after one response when the token changes', () async {
    final credentials = BehaviorSubject<AuthLinkCredentials?>.seeded(
      _credentials(idToken: 'firstIdToken'),
    );
    addTearDown(credentials.close);
    final httpLink = _HeaderRecordingHttpLink();
    final unit = AddAuthLink(
      credentialsStream: credentials,
      url: 'url',
      createHttpLink: (_) => httpLink,
    );
    addTearDown(unit.dispose);

    final responses = unit.request(queryRequest());
    credentials.add(_credentials(idToken: 'refreshedIdToken'));

    await expectLater(
      responses,
      emitsInOrder([_HeaderRecordingHttpLink.response, emitsDone]),
    );
  });

  test('a subscription is refused', () {
    final unit = AddAuthLink(
      credentialsStream: Stream.value(_credentials(idToken: 'idToken')),
      url: 'url',
      createHttpLink: (_) => _HeaderRecordingHttpLink(),
    );
    addTearDown(unit.dispose);

    expect(
      () => unit.request(
        Request(
          operation: Operation(
            document: gql('subscription WatchUsers { users { id } }'),
          ),
        ),
      ),
      throwsUnsupportedError,
    );
  });
}

AuthLinkCredentials _credentials({required String idToken}) =>
    AuthLinkCredentials(uid: 'uid', hasuraUserId: null, idToken: idToken);

class _HeaderRecordingHttpLink extends HttpLink {
  static const response = Response(data: {'users': []}, response: {});

  final List<Map<String, String>> sentHeaders = [];

  List<String?> get sentAuthorizations =>
      sentHeaders.map((headers) => headers['Authorization']).toList();

  _HeaderRecordingHttpLink() : super('https://example.com/gql');

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    sentHeaders.add(request.context.entry<HttpLinkHeaders>()?.headers ?? {});

    return Stream.value(response);
  }
}
