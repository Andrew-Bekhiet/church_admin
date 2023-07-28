import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_auth/firebase_auth.dart' as auth
    show MultiFactorInfo, User;
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_data/mock_data.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart_ext/rxdart_ext.dart';

import 'firebase_auth_adapter_test.mocks.dart';

final mockFirebaseUser = _createMockUser();
final idTokenResult = IdTokenResult(
  PigeonIdTokenResult(
    claims: {
      'x-hasura-user-id': 'x-hasura-user-id-asdasdas',
      'password': 'vdvdvpassword'
    },
    token: 'header.token.signature',
  ),
);
final expectedDomainUser = User(
  uid: idTokenResult.claims!['x-hasura-user-id'],
  name: 'name',
  isMultiFactorEnrolled: true,
  emailVerified: true,
  idToken: idTokenResult.token,
);

@GenerateNiceMocks([
  MockSpec<FirebaseAuth>(),
  MockSpec<auth.User>(),
  MockSpec<MultiFactor>(),
  MockSpec<UserCredential>(),
  MockSpec<DatabaseService>(),
  MockSpec<UsersDAO>(),
])
void main() {
  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  test(
    'Firebase Auth Adapter => signInWithGoogle',
    () async {
      final unit = globalProviderContainer.read(authAdapterProvider);

      await unit.signInWithEmailPassword(email: 'email', password: 'password');

      verifyInOrder([
        (globalProviderContainer.read(firebaseAuthProvider) as MockFirebaseAuth)
            .signInWithEmailAndPassword(email: 'email', password: 'password'),
      ]);
    },
  );

  test(
    'Firebase Auth Adapter => signOut',
    () async {
      final unit = globalProviderContainer.read(authAdapterProvider);

      await unit.signOut();

      verifyInOrder([
        globalProviderContainer.read(firebaseAuthProvider).signOut(),
      ]);
    },
  );

  test(
    'Firebase Auth Adapter => userStream',
    () async {
      final unit = globalProviderContainer.read(authAdapterProvider);

      final expectFuture = expectLater(
        unit.userStream,
        emitsInOrder([expectedDomainUser, isNull]),
      );

      await unit.signInWithEmailPassword(email: 'email', password: 'password');
      await unit.signOut();

      await expectFuture;

      final mockUsersDAO = globalProviderContainer
          .read(databaseServiceProvider)
          .users as MockUsersDAO;
      final captured = verify(
        mockUsersDAO.streamSingleById(uid: captureAnyNamed('uid')),
      ).captured;

      expect(captured.first, expectedDomainUser.uid);
    },
  );

  test(
    'Firebase Auth Adapter => refreshToken',
    () async {
      final unit = globalProviderContainer.read(authAdapterProvider);

      final _mockUser = _createMockUser();
      when(globalProviderContainer.read(firebaseAuthProvider).currentUser)
          .thenReturn(_mockUser);

      await unit.refreshToken();

      verify(_mockUser.getIdToken(true));

      when(globalProviderContainer.read(firebaseAuthProvider).currentUser)
          .thenReturn(null);

      expect(unit.refreshToken(), throwsStateError);
    },
  );

  test(
    'Firebase Auth Adapter => idTokenResult',
    () async {
      final idTokenController = StreamController<auth.User?>();
      addTearDown(idTokenController.close);

      final unit = globalProviderContainer.read(authAdapterProvider);

      when(globalProviderContainer.read(firebaseAuthProvider).userChanges())
          .thenAnswer((_) => idTokenController.stream);

      final tokens = [
        mockString(),
        mockString(),
        mockString(),
        mockString(),
        mockString()
      ];
      tokens
        ..insert(0, tokens.first)
        ..add(tokens.last);

      expect(unit.idTokenStream, emitsInOrder(tokens.toSet()));

      for (final t in tokens) {
        idTokenController.add(
          _createMockUser(
            idTokenResult$: IdTokenResult(
              PigeonIdTokenResult(
                token: t,
              ),
            ),
          ),
        );
      }
    },
  );

  test(
    'Firebase Auth Adapter => isTokenUpToDate',
    () async {
      final unit = globalProviderContainer.read(authAdapterProvider);

      final _domainUser1 = User(
        name: 'name',
        uid: 'uid',
        idToken: _createIdTokenWithExp(
          DateTime.now().subtract(const Duration(minutes: 5)),
        ),
      );

      expect(unit.isTokenUpToDate(_domainUser1), isFalse);

      final _domainUser2 = User(
        name: 'name',
        uid: 'uid',
        idToken: _createIdTokenWithExp(
          DateTime.now().add(const Duration(minutes: 5)),
        ),
      );

      expect(unit.isTokenUpToDate(_domainUser2), isTrue);
    },
  );
}

String _createIdTokenWithExp(DateTime exp) {
  return 'header.' +
      base64.encode(
        utf8.encode(
          json.encode(
            {'exp': exp.millisecondsSinceEpoch / 1000},
          ),
        ),
      ) +
      '.signature';
}

MockUser _createMockUser({IdTokenResult? idTokenResult$}) {
  final mockUser = MockUser();
  final mockMultiFactor = MockMultiFactor();

  when(mockMultiFactor.getEnrolledFactors()).thenAnswer(
    (_) async => [
      const auth.MultiFactorInfo(
        factorId: 'factorId',
        enrollmentTimestamp: 0,
        uid: 'uid',
        displayName: 'displayName',
      )
    ],
  );

  // ignore: discarded_futures
  when(mockUser.getIdTokenResult()).thenAnswer(
    (_) async => idTokenResult$ ?? idTokenResult,
  );
  when(mockUser.multiFactor).thenReturn(mockMultiFactor);
  when(mockUser.emailVerified).thenReturn(true);
  return mockUser;
}

Future<void> _setUp() async {
  final overrides = [
    _setUpFirebaseAuth(),
    _setUpDatabaseService(),
    _setUpCurrentPlatformService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpCurrentPlatformService() {
  return currentPlatformServiceProvider.overrideWithValue(
    const CurrentPlatformService(PlatformValue.android),
  );
}

Override _setUpDatabaseService() {
  final dbRepo = MockDatabaseService();

  final mockUsersDAO = _createMockUsersDAO();
  when(dbRepo.users).thenReturn(mockUsersDAO);

  return databaseServiceProvider.overrideWithValue(dbRepo);
}

MockUsersDAO _createMockUsersDAO() {
  final mockUsersDAO = MockUsersDAO();
  when(mockUsersDAO.streamSingleById(uid: anyNamed('uid')))
      .thenAnswer((_) => Stream.value(expectedDomainUser));

  return mockUsersDAO;
}

Override _setUpFirebaseAuth() {
  final stateController = BehaviorSubject<auth.User?>();

  final mockFirebaseAuth = MockFirebaseAuth();

  when(
    mockFirebaseAuth.signInWithEmailAndPassword(
      email: anyNamed('email'),
      password: anyNamed('password'),
    ),
  ).thenAnswer((i) async {
    stateController.add(mockFirebaseUser);

    return MockUserCredential();
  });
  when(mockFirebaseAuth.signOut())
      .thenAnswer((_) async => stateController.add(null));
  when(mockFirebaseAuth.userChanges())
      .thenAnswer((_) => stateController.stream);

  return firebaseAuthProvider.overrideWith((ref) {
    ref.onDispose(stateController.close);

    return mockFirebaseAuth;
  });
}
