import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions.dart';
import 'package:firebase_auth/firebase_auth.dart'
    hide MultiFactorInfo, MultiFactorSession, User;
import 'package:firebase_auth/firebase_auth.dart' as auth
    show MultiFactor, MultiFactorInfo, MultiFactorSession, User;
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart'
    hide MultiFactorInfo, MultiFactorSession;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_data/mock_data.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:rxdart_ext/rxdart_ext.dart';

import 'firebase_auth_adapter_test.mocks.dart';

final mockFirebaseUser = _createMockUser();
final idTokenResult = IdTokenResult(
  PigeonIdTokenResult(
    claims: {
      'x-hasura-user-id': 'x-hasura-user-id-asdasdas',
      'password': 'vdvdvpassword',
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
  MockSpec<MultiFactorResolver>(),
  MockSpec<auth.MultiFactorSession>(as: #MockAuthMultiFactorSession),
  MockSpec<auth.MultiFactor>(as: #MockAuthMultiFactor),
  MockSpec<PhoneMultiFactorGeneratorPlatform>(
    as: #MockPhoneMultiFactorGeneratorPlatform_,
  ),
  MockSpec<MultiFactorAssertionPlatform>(
    as: #MockMultiFactorAssertionPlatform_,
  ),
  MockSpec<MultiFactorSession>(),
  MockSpec<DatabaseService>(),
  MockSpec<UsersDAO>(),
])
void main() {
  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  group(
    'Firebase Auth Adapter =>',
    () {
      test(
        'signInWithGoogle',
        () async {
          final unit = AuthAdapter.I;

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
          final unit = AuthAdapter.I;

          await unit.signOut();

          verifyInOrder([
            globalProviderContainer.read(firebaseAuthProvider).signOut(),
          ]);
        },
      );

      test(
        'userStream',
        () async {
          final unit = AuthAdapter.I;

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
            mockUsersDAO.streamSingleById(id: captureAnyNamed('id')),
          ).captured;

          expect(captured.first, expectedDomainUser.uid);
        },
      );

      test(
        'refreshToken',
        () async {
          final unit = AuthAdapter.I;

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

          final unit = AuthAdapter.I;

          when(globalProviderContainer.read(firebaseAuthProvider).userChanges())
              .thenAnswer((_) => idTokenController.stream);

          final tokens = [
            mockString(),
            mockString(),
            mockString(),
            mockString(),
            mockString(),
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
          final unit = AuthAdapter.I;

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
          final unit = AuthAdapter.I;

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
          final unit = AuthAdapter.I;

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
          final unit = AuthAdapter.I;

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
          final unit = AuthAdapter.I;

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

          final unit = AuthAdapter.I;

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

          final unit = AuthAdapter.I;

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

          final unit = AuthAdapter.I;

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

  group(
    'FirebaseMultifactorManagerAdapter =>',
    () {
      test(
        'addPendingMultiFactorSession',
        () async {
          final unit = FirebaseMultiFactorManagerAdapter(
            firebaseAuth: globalProviderContainer.read(firebaseAuthProvider),
          );

          final mockMultiFactorSession = MockMultiFactorSession();

          unit.addPendingMultiFactorLogin(
            mockMultiFactorSession,
            _createMock2FAException(),
          );

          expect(unit.hasPendingMultifactorLogin, isTrue);
          expect(unit.pendingMultifactorLogin, mockMultiFactorSession);
        },
      );

      group(
        'enrollNewMultiFactor =>',
        () {
          test(
            'enrollNewMultiFactor: user signed in',
            () async {
              const sessionId = 'a2r32wq';

              final mockUser = _createMockUser(
                mockAuthSession: _createMockAuthSession(sessionId),
              );
              when(mockUser.email).thenReturn(fakeTestEmail);

              final firebaseAuth =
                  globalProviderContainer.read(firebaseAuthProvider);
              when(firebaseAuth.currentUser).thenReturn(mockUser);

              final unit = FirebaseMultiFactorManagerAdapter(
                firebaseAuth: firebaseAuth,
              );

              final session = await unit.enrollNewMultiFactor(
                password: fakeTestPassword,
              );

              expect(session.email, fakeTestEmail);
              expect(session.password, fakeTestPassword);
              expect(session.id, sessionId);

              final multiFactor = mockUser.multiFactor;
              verify(multiFactor.getSession());
            },
          );

          test(
            'enrollNewMultiFactor: no user',
            () async {
              final firebaseAuth =
                  globalProviderContainer.read(firebaseAuthProvider);
              when(firebaseAuth.currentUser).thenReturn(null);

              final unit = FirebaseMultiFactorManagerAdapter(
                firebaseAuth: firebaseAuth,
              );

              expect(
                () => unit.enrollNewMultiFactor(
                  password: fakeTestPassword,
                ),
                throwsStateError,
              );
            },
          );
        },
      );

      test(
        'getMultiFactorInfoForPendingSession',
        () async {
          final expectedInfo = MultiFactorInfo(
            uid: 'uid',
            displayName: 'displayName',
            factorId: 'factorId',
            enrollmentTimestamp: DateTime.now().millisecondsSinceEpoch,
          );

          final mock2FAException = _createMock2FAException();
          final resolver = mock2FAException._resolver;
          final session = MockMultiFactorSession();

          final hints = [
            PhoneMultiFactorInfo(
              phoneNumber: 'phoneNumber',
              displayName: 'displayName',
              enrollmentTimestamp: expectedInfo.enrollmentTimestamp.toDouble(),
              factorId: 'factorId',
              uid: 'uid',
            ),
          ];
          when(resolver.hints).thenReturn(hints);

          final unit = FirebaseMultiFactorManagerAdapter(
            firebaseAuth: globalProviderContainer.read(firebaseAuthProvider),
          )..addPendingMultiFactorLogin(
              session,
              mock2FAException,
            );

          expect(unit.getMultiFactorInfoForPendingSession(), expectedInfo);
        },
      );

      group(
        'initiateMultifactorLogin',
        () {
          test(
            'codeSent',
            () async {
              void Function(String, int?)? codeSent;

              final session = MockMultiFactorSession();
              when(session.id).thenReturn('dasda');

              final firebaseAuth = globalProviderContainer
                  .read(firebaseAuthProvider) as MockFirebaseAuth;
              _mockFirebaseAuthVerifyPhoneNumber(
                firebaseAuth,
                session,
                (i) async => codeSent = i.namedArguments[#codeSent],
              );

              final unit =
                  FirebaseMultiFactorManagerAdapter(firebaseAuth: firebaseAuth);

              expect(
                unit.initiateMultifactorLogin(
                  session,
                  phoneNumber: 'phoneNumber',
                ),
                completion(('verificationId', 2352)),
              );

              codeSent!('verificationId', 2352);
            },
          );

          test(
            'codeAutoRetrievalTimeout',
            () async {
              void Function(String)? codeAutoRetrievalTimeout;

              final session = MockMultiFactorSession();
              when(session.id).thenReturn('dasda');

              final firebaseAuth = globalProviderContainer
                  .read(firebaseAuthProvider) as MockFirebaseAuth;
              _mockFirebaseAuthVerifyPhoneNumber(
                firebaseAuth,
                session,
                (i) async => codeAutoRetrievalTimeout =
                    i.namedArguments[#codeAutoRetrievalTimeout],
              );

              final unit =
                  FirebaseMultiFactorManagerAdapter(firebaseAuth: firebaseAuth);

              expect(
                unit.initiateMultifactorLogin(
                  session,
                  phoneNumber: 'phoneNumber',
                ),
                completion(('verificationId', null)),
              );

              codeAutoRetrievalTimeout!('verificationId');
            },
          );

          test(
            'verificationFailed',
            () async {
              void Function(FirebaseAuthException)? verificationFailed;

              final session = MockMultiFactorSession();
              when(session.id).thenReturn('dasda');

              final firebaseAuth = globalProviderContainer
                  .read(firebaseAuthProvider) as MockFirebaseAuth;
              _mockFirebaseAuthVerifyPhoneNumber(
                firebaseAuth,
                session,
                (i) async =>
                    verificationFailed = i.namedArguments[#verificationFailed],
              );

              final unit =
                  FirebaseMultiFactorManagerAdapter(firebaseAuth: firebaseAuth);

              final expectedException = FirebaseAuthException(code: 'code');

              expect(
                unit.initiateMultifactorLogin(
                  session,
                  phoneNumber: 'phoneNumber',
                ),
                throwsA(expectedException),
              );

              verificationFailed!(expectedException);
            },
          );
        },
      );

      test(
        'finishMultiFactorSession: login',
        () async {
          final mockPhoneMultiFactorGeneratorPlatform =
              _createMockPhoneMultiFactorGeneratorPlatform();
          PhoneMultiFactorGeneratorPlatform.instance =
              mockPhoneMultiFactorGeneratorPlatform;

          final mock2FAException = _createMock2FAException();
          final resolver = mock2FAException._resolver;
          final session = MockMultiFactorSession();

          final unit = FirebaseMultiFactorManagerAdapter(
            firebaseAuth: globalProviderContainer.read(firebaseAuthProvider),
          )..addPendingMultiFactorLogin(
              session,
              mock2FAException,
            );

          await unit.finishMultiFactorSession(
            'verificationId',
            'smsCode',
          );

          verifyInOrder([
            mockPhoneMultiFactorGeneratorPlatform.getAssertion(
              argThat(
                predicate<PhoneAuthCredential>(
                  (c) =>
                      c.verificationId == 'verificationId' &&
                      c.smsCode == 'smsCode',
                ),
              ),
            ),
            resolver.resolveSignIn(any),
          ]);
        },
      );

      test(
        'finishMultiFactorSession: enrollment',
        () async {
          final mockPhoneMultiFactorGeneratorPlatform =
              _createMockPhoneMultiFactorGeneratorPlatform();
          PhoneMultiFactorGeneratorPlatform.instance =
              mockPhoneMultiFactorGeneratorPlatform;

          final firebaseAuth =
              globalProviderContainer.read(firebaseAuthProvider);

          final mockUser = _createMockUser();
          when(firebaseAuth.currentUser).thenReturn(mockUser);

          final unit = FirebaseMultiFactorManagerAdapter(
            firebaseAuth: firebaseAuth,
          );

          await unit.finishMultiFactorSession(
            'verificationId',
            'smsCode',
          );

          final multiFactor = mockUser.multiFactor;
          verifyInOrder([
            mockPhoneMultiFactorGeneratorPlatform.getAssertion(
              argThat(
                predicate<PhoneAuthCredential>(
                  (c) =>
                      c.verificationId == 'verificationId' &&
                      c.smsCode == 'smsCode',
                ),
              ),
            ),
            (multiFactor as MockMultiFactor).enroll(any),
          ]);
        },
      );

      test(
        'clearPendingMultiFactorSession',
        () {
          final unit = FirebaseMultiFactorManagerAdapter(
            firebaseAuth: globalProviderContainer.read(firebaseAuthProvider),
          );

          final mockMultiFactorSession = MockMultiFactorSession();

          unit
            ..addPendingMultiFactorLogin(
              mockMultiFactorSession,
              _createMock2FAException(),
            )
            ..clearPendingMultiFactorLogin();

          expect(unit.hasPendingMultifactorLogin, isFalse);
          expect(unit.pendingMultifactorLogin, isNull);
        },
      );
    },
  );
}

void _mockFirebaseAuthVerifyPhoneNumber(
  MockFirebaseAuth firebaseAuth,
  MockMultiFactorSession session,
  Answering<Future<void>> answer,
) {
  when(
    firebaseAuth.verifyPhoneNumber(
      phoneNumber: 'phoneNumber',
      multiFactorSession: argThat(
        predicate<auth.MultiFactorSession>(
          (a) => a.id == session.id,
        ),
        named: 'multiFactorSession',
      ),
      verificationCompleted: captureAnyNamed('verificationCompleted'),
      verificationFailed: captureAnyNamed('verificationFailed'),
      codeSent: captureAnyNamed('codeSent'),
      codeAutoRetrievalTimeout: captureAnyNamed(
        'codeAutoRetrievalTimeout',
      ),
    ),
  ).thenAnswer(answer);
}

MockPhoneMultiFactorGeneratorPlatform
    _createMockPhoneMultiFactorGeneratorPlatform() {
  final mockPhoneMultiFactorGeneratorPlatform =
      MockPhoneMultiFactorGeneratorPlatform();
  when(mockPhoneMultiFactorGeneratorPlatform.getAssertion(any))
      .thenReturn(MockMultiFactorAssertionPlatform());
  return mockPhoneMultiFactorGeneratorPlatform;
}

MockAuthMultiFactorSession _createMockAuthSession(String sessionId) {
  final mockAuthSession = MockAuthMultiFactorSession();
  when(mockAuthSession.id).thenReturn(sessionId);
  return mockAuthSession;
}

MockFirebaseAuthMultiFactorException _createMock2FAException() {
  final mockMultiFactorSession = MockAuthMultiFactorSession();
  final mockMultiFactorResolver = MockMultiFactorResolver();

  when(mockMultiFactorSession.id).thenReturn('id');
  when(mockMultiFactorResolver.session).thenReturn(mockMultiFactorSession);

  return MockFirebaseAuthMultiFactorException(mockMultiFactorResolver);
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

MockUser _createMockUser({
  IdTokenResult? idTokenResult$,
  MockAuthMultiFactorSession? mockAuthSession,
}) {
  final mockUser = MockUser();
  final mockMultiFactor = MockMultiFactor();

  when(mockMultiFactor.getEnrolledFactors()).thenAnswer(
    (_) async => [
      const auth.MultiFactorInfo(
        factorId: 'factorId',
        enrollmentTimestamp: 0,
        uid: 'uid',
        displayName: 'displayName',
      ),
    ],
  );

  // ignore: discarded_futures
  when(mockUser.getIdTokenResult()).thenAnswer(
    (_) async => idTokenResult$ ?? idTokenResult,
  );

  if (mockAuthSession != null) {
    when(mockMultiFactor.getSession()).thenAnswer((_) async => mockAuthSession);
  }

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
  when(mockUsersDAO.streamSingleById(id: anyNamed('id')))
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

class MockFirebaseAuthMultiFactorException
    implements FirebaseAuthMultiFactorException {
  final MockMultiFactorResolver _resolver;

  MockFirebaseAuthMultiFactorException(this._resolver);

  @override
  String get code => 'code';

  @override
  AuthCredential? get credential => null;

  @override
  String? get email => 'email';

  @override
  String? get message => 'message';

  @override
  String? get phoneNumber => 'phoneNumber';

  @override
  String get plugin => 'plugin';

  @override
  MultiFactorResolver get resolver => _resolver;

  @override
  StackTrace? get stackTrace => null;

  @override
  String? get tenantId => 'tenantId';
}

class MockPhoneMultiFactorGeneratorPlatform
    extends MockPhoneMultiFactorGeneratorPlatform_
    with MockPlatformInterfaceMixin {}

class MockMultiFactorAssertionPlatform extends MockMultiFactorAssertionPlatform_
    with MockPlatformInterfaceMixin {}
