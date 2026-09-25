import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart' as h show HttpLink;
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:web_socket/testing.dart';
import 'package:web_socket/web_socket.dart';
import 'package:web_socket_channel/adapter_web_socket_channel.dart';

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
        authUserStream: AuthBloc.I.userStream,
        url: 'url',
        createHttpLink: (url) => mockHttpLink,
        createWSLink: (url, config) {
          expect(
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
    'Add Auth Link => request => gets latest idTokenStream data',
    () async {
      late final authUserStreamController = BehaviorSubject<AuthUser>();
      addTearDown(authUserStreamController.close);

      dynamic Function()? capturedInitialPayload;

      final mockRequest = _createMockRequest();
      final mockResponse = MockResponse();
      final mockHttpLink = _createMockHttpLink(mockResponse);
      final mockWebSocketLink = _createMockWSLink(mockResponse);

      final unit = AddAuthLink(
        authUserStream: authUserStreamController.stream.startWith(
          _createAuthUser(idToken: 'seedIdToken'),
        ),
        url: 'url',
        createHttpLink: (url) => mockHttpLink,
        createWSLink: (url, config) {
          capturedInitialPayload = config.initialPayload;

          return mockWebSocketLink;
        },
      );
      addTearDown(unit.dispose);

      unit.request(mockRequest, forward);

      expect(
        await capturedInitialPayload!(),
        containsPair(
          'headers',
          containsPair(
            'Authorization',
            'Bearer seedIdToken',
          ),
        ),
      );

      authUserStreamController.add(_createAuthUser(idToken: 'newIdToken'));
      await Future.delayed(Duration.zero);

      expect(
        await capturedInitialPayload!(),
        containsPair(
          'headers',
          containsPair(
            'Authorization',
            'Bearer newIdToken',
          ),
        ),
      );
    },
  );

  test(
    'Add Auth Link => request => subscription => reconnects with the new token when another user signs in',
    () => fakeAsync((async) {
      final authUserStreamController = BehaviorSubject<AuthUser?>.seeded(
        _createAuthUser(uid: 'firstUser', idToken: 'firstUserToken'),
      );

      final connectionInitAuthorizations = <String>[];

      final unit = AddAuthLink(
        authUserStream: authUserStreamController.stream,
        url: 'https://example.com',
        createWSLink: (url, config) => _createFakeServerWSLink(
          url,
          config,
          onClientMessage: (message) {
            if (message case {
              'type': 'connection_init',
              'payload': {
                'headers': {'Authorization': final String authorization},
              },
            }) {
              connectionInitAuthorizations.add(authorization);
            }
          },
        ),
      );

      final subscription = unit
          .request(
            Request(
              operation: Operation(
                document: gql('subscription WatchUsers { users { id } }'),
              ),
            ),
          )
          .listen(null);
      async.flushMicrotasks();

      authUserStreamController
        ..add(null)
        ..add(_createAuthUser(uid: 'secondUser', idToken: 'secondUserToken'));
      async.elapse(const Duration(seconds: 2));

      expect(
        connectionInitAuthorizations,
        ['Bearer firstUserToken', 'Bearer secondUserToken'],
      );

      unawaited(subscription.cancel());
      unawaited(unit.dispose());
      unawaited(authUserStreamController.close());
    }),
  );

  test(
    'Add Auth Link => request => subscription => keeps the connection when the id token refreshes for the same account',
    () => fakeAsync((async) {
      final authUsers = BehaviorSubject<AuthUser?>.seeded(
        _createAuthUser(idToken: 'firstIdToken'),
      );

      final clientMessages = <String>[];

      final unit = AddAuthLink(
        authUserStream: authUsers,
        url: 'https://example.com',
        createWSLink: (url, config) => _createFakeServerWSLink(
          url,
          config,
          onClientMessage: (message) => clientMessages.add(switch (message) {
            {
              'type': 'connection_init',
              'payload': {
                'headers': {'Authorization': final String authorization},
              },
            } =>
              'connection_init $authorization',
            {'type': final String type} => type,
            _ => '$message',
          }),
        ),
      );

      final subscription = unit
          .request(
            Request(
              operation: Operation(
                document: gql('subscription WatchUsers { users { id } }'),
              ),
            ),
          )
          .listen(null);
      async.flushMicrotasks();

      authUsers
        ..add(_createAuthUser(idToken: 'secondIdToken'))
        ..add(_createAuthUser(idToken: 'thirdIdToken'))
        ..add(_createAuthUser(idToken: 'fourthIdToken'));
      async.elapse(const Duration(seconds: 2));

      expect(clientMessages, ['connection_init Bearer firstIdToken', 'start']);

      unawaited(subscription.cancel());
      unawaited(unit.dispose());
      unawaited(authUsers.close());
    }),
  );

  test(
    'Add Auth Link => request => query => sends the refreshed id token after the id token refreshes',
    () => fakeAsync((async) {
      final authUsers = BehaviorSubject<AuthUser?>.seeded(
        _createAuthUser(idToken: 'firstIdToken'),
      );
      addTearDown(authUsers.close);

      final sentAuthorizations = <String?>[];
      final mockHttpLink = MockHttpLink();
      when(mockHttpLink.request(any, any)).thenAnswer((invocation) {
        final request = invocation.positionalArguments.first as Request;
        sentAuthorizations.add(
          request.context.entry<HttpLinkHeaders>()?.headers['Authorization'],
        );

        return Stream.value(MockResponse());
      });

      final unit = AddAuthLink(
        authUserStream: authUsers,
        url: 'url',
        createHttpLink: (url) => mockHttpLink,
      );
      addTearDown(unit.dispose);

      Request createQueryRequest() => Request(
        operation: Operation(document: gql('query GetUsers { users { id } }')),
      );

      unit.request(createQueryRequest()).listen(null);
      async.flushMicrotasks();
      authUsers.add(_createAuthUser(idToken: 'refreshedIdToken'));
      async.flushMicrotasks();
      unit.request(createQueryRequest()).listen(null);
      async.flushMicrotasks();

      expect(
        sentAuthorizations,
        ['Bearer firstIdToken', 'Bearer refreshedIdToken'],
      );
    }),
  );

  test(
    'Add Auth Link => request => query',
    () async {
      final mockRequest = _createMockRequest(isSubscription: false);
      final mockResponse = MockResponse();
      final mockHttpLink = _createMockHttpLink(mockResponse);
      final mockWebSocketLink = _createMockWSLink(mockResponse);

      final unit = AddAuthLink(
        authUserStream: AuthBloc.I.userStream,
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
        AuthBloc.I.userStream,
        mockHttpLink.request(mockRequest, forward),
      ]);
      verifyNever(mockWebSocketLink.request(mockRequest, forward));
    },
  );

  test(
    'Add Auth Link => request => query completes after one response when the id token changes',
    () async {
      final authUsers = BehaviorSubject<AuthUser?>.seeded(
        _createAuthUser(idToken: 'firstIdToken'),
      );
      addTearDown(authUsers.close);
      final mockResponse = MockResponse();

      final unit = AddAuthLink(
        authUserStream: authUsers,
        url: 'url',
        createHttpLink: (url) => _createMockHttpLink(mockResponse),
        createWSLink: (url, config) => _createMockWSLink(mockResponse),
      );
      addTearDown(unit.dispose);

      final responses = unit.request(
        _createMockRequest(isSubscription: false),
        forward,
      );
      authUsers.add(_createAuthUser(idToken: 'refreshedIdToken'));

      await expectLater(responses, emitsInOrder([mockResponse, emitsDone]));
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
        authUserStream: AuthBloc.I.userStream,
        url: 'https://example.com',
        createHttpLink: (url) => mockHttpLink,
        createWSLink: (url, config) {
          expect(url, 'wss://example.com');
          expect(
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
        authUserStream: AuthBloc.I.userStream,
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

      final captured = verify(
        mockRequest.updateContextEntry(captureAny),
      ).captured;

      expect(
        captured,
        contains(
          predicate<HttpLinkHeaders Function(HttpLinkHeaders)?>((f) {
            final returnedHeaders = f
                ?.call(const HttpLinkHeaders(headers: {'foo': 'bar'}))
                .headers;

            return containsPair('foo', 'bar').matches(returnedHeaders, {}) &&
                containsPair(
                  'Authorization',
                  'Bearer ${AuthBloc.I.currentUser!.idToken}',
                ).matches(returnedHeaders, {});
          }),
        ),
      );

      verify(mockHttpLink.request(mockRequest, forward));
      verifyNever(mockWebSocketLink.request(mockRequest, forward));
    },
  );
}

WebSocketLink _createFakeServerWSLink(
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

AuthUser _createAuthUser({required String idToken, String uid = 'uid'}) =>
    AuthUser(uid: uid, email: 'email', emailVerified: true, idToken: idToken);

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
          type: isSubscription
              ? OperationType.subscription
              : OperationType.query,
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
    ),
  );

  return authBlocProvider.overrideWithValue(mock);
}
