import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart' as h show HttpLink;
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'add_auth_link_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthBloc>(),
  MockSpec<Request>(),
  MockSpec<Response>(),
  MockSpec<Operation>(),
  MockSpec<HttpLink>(),
  MockSpec<WebSocketLink>(),
])
void main() {
  Stream<Response> forward(Request r) => const Stream.empty();

  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  test(
    'Add Auth Link => defaultCreateHttpLink',
    () async {
      final unit = AddAuthLink.defaultCreateHttpLink('https://example.com/api');
      addTearDown(unit.dispose);

      expect(unit, isA<h.HttpLink>());
      expect(unit.uri, Uri.parse('https://example.com/api'));
    },
  );
  test(
    'Add Auth Link => defaultCreateWSLink',
    () async {
      const socketClientConfig = SocketClientConfig();
      final unit = AddAuthLink.defaultCreateWSLink(
        'wss://example.com/api',
        socketClientConfig,
      );
      addTearDown(unit.dispose);

      expect(unit, isA<WebSocketLink>());
      expect(unit.url, 'wss://example.com/api');
      expect(unit.config, socketClientConfig);
    },
  );

  test(
    'Add Auth Link => request => subscription',
    () async {
      final mockRequest = _createMockRequest();
      final mockResponse = MockResponse();
      final mockHttpLink = _createMockHttpLink(mockResponse);
      final mockWebSocketLink = _createMockWSLink(mockResponse);

      final unit = AddAuthLink(
        getIdTokenStream: () => AuthBloc.I.idTokenStream,
        url: 'url',
        createHttpLink: (url) => mockHttpLink,
        createWSLink: (url, config) {
          expectLater(
            config.initialPayload(),
            completion(
              containsPair(
                'headers',
                containsPair(
                  'Authorization',
                  'Bearer ${AuthBloc.I.currentUser!.idToken}',
                ),
              ),
            ),
          );

          return mockWebSocketLink;
        },
      );
      addTearDown(unit.dispose);

      await expectLater(
        unit.request(mockRequest, forward),
        emits(mockResponse),
      );

      verify(mockWebSocketLink.request(mockRequest, forward));
      verifyNever(mockHttpLink.request(mockRequest, forward));
    },
  );

  test(
    'Add Auth Link => request => query',
    () async {
      final mockRequest = _createMockRequest(isSubscription: false);
      final mockResponse = MockResponse();
      final mockHttpLink = _createMockHttpLink(mockResponse);
      final mockWebSocketLink = _createMockWSLink(mockResponse);

      final unit = AddAuthLink(
        getIdTokenStream: () => AuthBloc.I.idTokenStream,
        url: 'url',
        createHttpLink: (url) => mockHttpLink,
        createWSLink: (url, config) => mockWebSocketLink,
      );
      addTearDown(unit.dispose);

      await expectLater(
        unit.request(mockRequest, forward),
        emits(mockResponse),
      );

      verifyInOrder([
        AuthBloc.I.idTokenStream,
        mockHttpLink.request(mockRequest, forward),
      ]);
      verifyNever(mockWebSocketLink.request(mockRequest, forward));
    },
  );

  test(
    'Add Auth Link => getWebSocketRequest',
    () async {
      final mockRequest = _createMockRequest(isSubscription: false);
      final mockResponse = MockResponse();
      final mockHttpLink = _createMockHttpLink(mockResponse);
      final mockWebSocketLink = _createMockWSLink(mockResponse);

      final unit = AddAuthLink(
        getIdTokenStream: () => AuthBloc.I.idTokenStream,
        url: 'https://example.com',
        createHttpLink: (url) => mockHttpLink,
        createWSLink: (url, config) {
          expect(url, 'wss://example.com');
          expectLater(
            config.initialPayload(),
            completion(
              containsPair(
                'headers',
                containsPair(
                  'Authorization',
                  'Bearer ${AuthBloc.I.currentUser!.idToken}',
                ),
              ),
            ),
          );

          return mockWebSocketLink;
        },
      );
      addTearDown(unit.dispose);

      await expectLater(
        unit.getWebSocketResponse(mockRequest, forward),
        emits(mockResponse),
      );

      verify(mockWebSocketLink.request(mockRequest, forward));
      verifyNever(AuthBloc.I.userStream);
      verifyNever(mockHttpLink.request(mockRequest, forward));
    },
  );

  test(
    'Add Auth Link => getHttpRequest',
    () async {
      final mockRequest = _createMockRequest(isSubscription: false);
      final mockResponse = MockResponse();
      final mockHttpLink = _createMockHttpLink(mockResponse);
      final mockWebSocketLink = _createMockWSLink(mockResponse);

      final unit = AddAuthLink(
        getIdTokenStream: () => AuthBloc.I.idTokenStream,
        url: 'https://example.com',
        createHttpLink: (url) {
          expect(url, 'https://example.com');

          return mockHttpLink;
        },
        createWSLink: (url, config) => mockWebSocketLink,
      );
      addTearDown(unit.dispose);

      await expectLater(
        unit.getHttpResponse(mockRequest, forward),
        emits(mockResponse),
      );

      final captured =
          verify(mockRequest.updateContextEntry(captureAny)).captured;

      expect(
        captured,
        contains(
          predicate<HttpLinkHeaders Function(HttpLinkHeaders)?>((f) {
            final returnedHeaders =
                f?.call(const HttpLinkHeaders(headers: {'foo': 'bar'})).headers;

            return containsPair('foo', 'bar').matches(returnedHeaders, {}) &&
                containsPair(
                  'Authorization',
                  'Bearer ${AuthBloc.I.currentUser!.idToken}',
                ).matches(returnedHeaders, {});
          }),
        ),
      );

      verify(mockHttpLink.request(mockRequest, forward));
      verifyNever(AuthBloc.I.userStream);
      verifyNever(mockWebSocketLink.request(mockRequest, forward));
    },
  );
}

MockWebSocketLink _createMockWSLink(Response response) {
  final mock = MockWebSocketLink();
  when(mock.request(any, any)).thenAnswer((_) => Stream.value(response));
  return mock;
}

MockHttpLink _createMockHttpLink(Response response) {
  final mock = MockHttpLink();
  when(mock.request(any, any)).thenAnswer((_) => Stream.value(response));
  return mock;
}

MockRequest _createMockRequest({bool isSubscription = true}) {
  final mockOperation = _createMockOperation(isSubscription);

  final mockRequest = MockRequest();
  when(mockRequest.operation).thenReturn(mockOperation);
  when(mockRequest.updateContextEntry(any)).thenReturn(mockRequest);

  return mockRequest;
}

MockOperation _createMockOperation(bool isSubscription) {
  final mockOperation = MockOperation();
  when(mockOperation.document).thenReturn(
    DocumentNode(
      definitions: [
        OperationDefinitionNode(
          name: const NameNode(value: 's'),
          selectionSet: const SelectionSetNode(),
          type:
              isSubscription ? OperationType.subscription : OperationType.query,
        ),
      ],
    ),
  );

  return mockOperation;
}

void _setUp() {
  final overrides = [_setUpAuthBloc()];

  initGlobalProviderContainer(overrides);
}

Override _setUpAuthBloc() {
  final mock = MockAuthBloc();
  when(mock.userStream).thenAnswer(
    (_) => BehaviorSubject.seeded(
      const AuthUser(
        uid: 'uid',
        email: 'email',
        emailVerified: true,
        idToken: 'idToken',
        claims: {},
      ),
    ),
  );
  when(mock.idTokenStream).thenAnswer(
    (_) => BehaviorSubject.seeded('idToken'),
  );
  when(mock.currentUser).thenReturn(
    const AuthUser(
      uid: 'uid',
      email: 'email',
      emailVerified: true,
      idToken: 'idToken',
      claims: {},
    ),
  );

  return authBlocProvider.overrideWithValue(mock);
}
