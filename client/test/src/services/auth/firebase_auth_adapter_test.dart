import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_auth/firebase_auth.dart' as auth show User;
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mock_data/mock_data.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/subjects.dart';

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
  password: idTokenResult.claims!['password'],
  idToken: idTokenResult.token,
);

@GenerateNiceMocks([
  MockSpec<GoogleSignInAuthentication>(),
  MockSpec<GoogleSignInAccount>(),
  MockSpec<GoogleSignIn>(),
  MockSpec<FirebaseAuth>(),
  MockSpec<auth.User>(),
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

      await unit.signInWithGoogle();

      verifyInOrder([
        globalProviderContainer.read(googleSignInProvider).signIn(),
        (globalProviderContainer.read(firebaseAuthProvider) as MockFirebaseAuth)
            .signInWithCredential(
          argThat(
            predicate<GoogleAuthCredential>(
              (c) => c.idToken == 'idToken' && c.accessToken == 'accessToken',
            ),
          ),
        ),
      ]);
    },
  );

  test(
    'Firebase Auth Adapter => signOut',
    () async {
      final unit = globalProviderContainer.read(authAdapterProvider);

      await unit.signOut();

      verifyInOrder([
        globalProviderContainer.read(googleSignInProvider).signOut(),
        globalProviderContainer.read(firebaseAuthProvider).signOut(),
      ]);
    },
  );

  test(
    'Firebase Auth Adapter => userStream',
    () async {
      final unit = globalProviderContainer.read(authAdapterProvider);

      expect(unit.userStream, emitsInOrder([expectedDomainUser, isNull]));

      await unit.signInWithGoogle();
      await unit.signOut();

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

  // ignore: discarded_futures
  when(mockUser.getIdTokenResult()).thenAnswer(
    (_) async => idTokenResult$ ?? idTokenResult,
  );
  return mockUser;
}

Future<void> _setUp() async {
  final overrides = [
    _setUpGoogleSignIn(),
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

  when(mockFirebaseAuth.signInWithCredential(any)).thenAnswer((i) async {
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

Override _setUpGoogleSignIn() {
  final mockAccount = _setUpMockGAccount();

  final mockGoogleSignIn = MockGoogleSignIn();

  when(mockGoogleSignIn.signIn()).thenAnswer((_) async => mockAccount);
  when(mockGoogleSignIn.signOut()).thenAnswer((_) async => null);

  return googleSignInProvider.overrideWithValue(mockGoogleSignIn);
}

MockGoogleSignInAccount _setUpMockGAccount() {
  final mockSignInAuth = _setupMockGSignInAuth();

  final mockGAccount = MockGoogleSignInAccount();

  when(mockGAccount.authentication).thenAnswer((_) async => mockSignInAuth);
  return mockGAccount;
}

MockGoogleSignInAuthentication _setupMockGSignInAuth() {
  final mockGoogleSignInAuthentication = MockGoogleSignInAuthentication();

  when(mockGoogleSignInAuthentication.accessToken).thenReturn('accessToken');
  when(mockGoogleSignInAuthentication.idToken).thenReturn('idToken');

  return mockGoogleSignInAuthentication;
}
