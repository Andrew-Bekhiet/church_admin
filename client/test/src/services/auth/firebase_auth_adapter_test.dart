import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_auth/firebase_auth.dart' as auth
    show MultiFactorInfo, MultiFactorSession, User;
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
const fakeTestEmail = 'fakeTestEmail@example.com';
const fakeTestPassword = 'fakeTestPassword1234%^&';

@GenerateNiceMocks([
  MockSpec<FirebaseAuth>(),
  MockSpec<auth.User>(),
  MockSpec<MultiFactor>(),
  MockSpec<UserCredential>(),
  MockSpec<FirebaseAuthMultiFactorException>(),
  MockSpec<MultiFactorResolver>(),
  MockSpec<auth.MultiFactorSession>(),
  MockSpec<DatabaseService>(),
  MockSpec<UsersDAO>(),
])
void main() {
  group(
    'Firebase Auth Adapter =>',
    () {
      setUp(_setUp);
      tearDown(resetGlobalProviderContainer);

      test(
        'signInWithGoogle',
        () async {
          final unit = globalProviderContainer.read(authAdapterProvider);

          await unit.signInWithEmailPassword(
            email: fakeTestEmail,
            password: fakeTestPassword,
          );

          verifyInOrder([
            (globalProviderContainer.read(firebaseAuthProvider)
                    as MockFirebaseAuth)
                .signInWithEmailAndPassword(
              email: fakeTestEmail,
              password: fakeTestPassword,
            ),
          ]);
        },
      );

      test(
        'signOut',
        () async {
          final unit = globalProviderContainer.read(authAdapterProvider);

          await unit.signOut();

          verifyInOrder([
            globalProviderContainer.read(firebaseAuthProvider).signOut(),
          ]);
        },
      );

      test(
        'userStream',
        () async {
          final unit = globalProviderContainer.read(authAdapterProvider);

          final expectFuture = expectLater(
            unit.userStream,
            emitsInOrder([expectedDomainUser, isNull]),
          );

          await unit.signInWithEmailPassword(
            email: fakeTestEmail,
            password: fakeTestPassword,
          );
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
        'refreshToken',
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
        'idTokenResult',
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
        'isTokenUpToDate',
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

      test(
        'reload',
        () async {
          final unit = globalProviderContainer.read(authAdapterProvider);

          await expectLater(unit.reload, throwsStateError);

          final _mockUser = _createMockUser();
          when(globalProviderContainer.read(firebaseAuthProvider).currentUser)
              .thenReturn(_mockUser);

          await expectLater(unit.reload(), completes);

          verify(_mockUser.reload());
        },
      );

      test(
        'sendEmailVerification',
        () async {
          final unit = globalProviderContainer.read(authAdapterProvider);

          await expectLater(unit.sendEmailVerification, throwsStateError);

          final _mockUser = _createMockUser();
          when(globalProviderContainer.read(firebaseAuthProvider).currentUser)
              .thenReturn(_mockUser);

          await expectLater(unit.sendEmailVerification(), completes);

          verify(_mockUser.sendEmailVerification());
        },
      );

      test(
        'signUpWithEmailPassword',
        () async {
          final unit = globalProviderContainer.read(authAdapterProvider);

          await expectLater(
            unit.signUpWithEmailPassword(
              email: fakeTestEmail,
              password: fakeTestPassword,
            ),
            completion(isTrue),
          );

          verify(
            (globalProviderContainer.read(firebaseAuthProvider)
                    as MockFirebaseAuth)
                .createUserWithEmailAndPassword(
              email: fakeTestEmail,
              password: fakeTestPassword,
            ),
          );
        },
      );

      test(
        'signInWithEmailPassword: No multifactor auth',
        () async {
          final unit = globalProviderContainer.read(authAdapterProvider);

          await expectLater(
            unit.signInWithEmailPassword(
              email: fakeTestEmail,
              password: fakeTestPassword,
            ),
            completion(isTrue),
          );

          verify(
            (globalProviderContainer.read(firebaseAuthProvider)
                    as MockFirebaseAuth)
                .signInWithEmailAndPassword(
              email: fakeTestEmail,
              password: fakeTestPassword,
            ),
          );
        },
      );

      test(
        'signInWithEmailPassword: With multifactor auth',
        () async {
          final firebaseAuth = globalProviderContainer
              .read(firebaseAuthProvider) as MockFirebaseAuth;

          final mock2FAException = _createMock2FAException();

          when(
            firebaseAuth.signInWithEmailAndPassword(
              email: fakeTestEmail,
              password: fakeTestPassword,
            ),
          ).thenThrow(mock2FAException);

          final unit = globalProviderContainer.read(authAdapterProvider);

          await expectLater(
            unit.signInWithEmailPassword(
              email: fakeTestEmail,
              password: fakeTestPassword,
            ),
            throwsA(
              predicate<MultiFactorException>(
                (e) =>
                    e.session.id == 'id' &&
                    e.session.email == fakeTestEmail &&
                    e.session.password == fakeTestPassword,
              ),
            ),
          );

          verify(
            (globalProviderContainer.read(firebaseAuthProvider)
                    as MockFirebaseAuth)
                .signInWithEmailAndPassword(
              email: fakeTestEmail,
              password: fakeTestPassword,
            ),
          );
        },
      );

      test(
        'reauthWithEmailPassword: User signed in',
        () async {
          final firebaseAuth = globalProviderContainer
              .read(firebaseAuthProvider) as MockFirebaseAuth;

          final _mockUser = _createMockUser();
          when(firebaseAuth.currentUser).thenReturn(_mockUser);

          final unit = globalProviderContainer.read(authAdapterProvider);

          await expectLater(
            unit.reauthWithEmailPassword(
              email: fakeTestEmail,
              password: fakeTestPassword,
            ),
            completion(isTrue),
          );

          final captured =
              verify(_mockUser.reauthenticateWithCredential(captureAny));
          final credential = captured.captured.first as EmailAuthCredential;

          expect(credential.email, fakeTestEmail);
          expect(credential.password, fakeTestPassword);
        },
      );

      test(
        'reauthWithEmailPassword: User not signed in',
        () async {
          final firebaseAuth = globalProviderContainer
              .read(firebaseAuthProvider) as MockFirebaseAuth;

          when(firebaseAuth.currentUser).thenReturn(null);

          final unit = globalProviderContainer.read(authAdapterProvider);

          expect(
            () => unit.reauthWithEmailPassword(
              email: fakeTestEmail,
              password: fakeTestPassword,
            ),
            throwsStateError,
          );
        },
      );
    },
  );
}

MockFirebaseAuthMultiFactorException _createMock2FAException() {
  final mockMultiFactorSession = MockMultiFactorSession();
  final mockMultiFactorResolver = MockMultiFactorResolver();
  final mock2FAException = MockFirebaseAuthMultiFactorException();

  when(mockMultiFactorSession.id).thenReturn('id');
  when(mockMultiFactorResolver.session).thenReturn(mockMultiFactorSession);
  when(mock2FAException.resolver).thenReturn(mockMultiFactorResolver);

  return mock2FAException;
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
