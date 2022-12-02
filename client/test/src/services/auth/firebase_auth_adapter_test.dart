import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_auth/firebase_auth.dart' as auth show User;
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mock_data/mock_data.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/subjects.dart';

import 'firebase_auth_adapter_test.mocks.dart';

final mockFirebaseUser = _createMockUser();
final idTokenResult = IdTokenResult({
  'claims': {
    'x-hasura-user-id': 'x-hasura-user-id-asdasdas',
    'password': 'vdvdvpassword'
  },
  'token': 'header.token.signature'
});
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
  MockSpec<CADatabaseRepository>(),
  MockSpec<UsersQueries>(),
])
void main() {
  setUp(_setUp);
  tearDown(GetIt.I.reset);

  test(
    'Firebase Auth Adapter => signInWithGoogle',
    () async {
      final unit = FirebaseAuthAdapter();

      await unit.signInWithGoogle();

      verifyInOrder([
        GetIt.I<GoogleSignIn>().signIn(),
        (GetIt.I<FirebaseAuth>() as MockFirebaseAuth).signInWithCredential(
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
      final unit = FirebaseAuthAdapter();

      await unit.signOut();

      verifyInOrder([
        GetIt.I<GoogleSignIn>().signOut(),
        GetIt.I<FirebaseAuth>().signOut(),
      ]);
    },
  );

  test(
    'Firebase Auth Adapter => userStream',
    () async {
      final unit = FirebaseAuthAdapter();

      expect(unit.userStream, emitsInOrder([expectedDomainUser, isNull]));

      await unit.signInWithGoogle();
      await unit.signOut();

      final mockUsersQueries =
          GetIt.I<CADatabaseRepository>().users as MockUsersQueries;
      final captured = verify(
        mockUsersQueries.getUserInfoStream(uid: captureAnyNamed('uid')),
      ).captured;

      expect(captured.first, expectedDomainUser.uid);
    },
  );

  test(
    'Firebase Auth Adapter => refreshToken',
    () async {
      final unit = FirebaseAuthAdapter();

      final _mockUser = _createMockUser();
      when(GetIt.I<FirebaseAuth>().currentUser).thenReturn(_mockUser);

      await unit.refreshToken();

      verify(_mockUser.getIdToken(true));

      when(GetIt.I<FirebaseAuth>().currentUser).thenReturn(null);

      expect(unit.refreshToken(), throwsStateError);
    },
  );

  test(
    'Firebase Auth Adapter => idTokenResult',
    () async {
      final idTokenController = StreamController<auth.User?>();
      addTearDown(idTokenController.close);

      final unit = FirebaseAuthAdapter();

      when(GetIt.I<FirebaseAuth>().userChanges())
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
              {'token': t},
            ),
          ),
        );
      }
    },
  );

  test(
    'Firebase Auth Adapter => isTokenUpToDate',
    () async {
      final unit = FirebaseAuthAdapter();

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
  await _setUpGoogleSignIn();
  await _setUpFirebaseAuth();
  _setUpCADatabaseRepository();
}

void _setUpCADatabaseRepository() {
  final dbRepo = MockCADatabaseRepository();

  final mockUsersQueries = _createMockUsersQueries();
  when(dbRepo.users).thenReturn(mockUsersQueries);

  GetIt.I.registerSingleton<CADatabaseRepository>(dbRepo);
}

MockUsersQueries _createMockUsersQueries() {
  final mockUsersQueries = MockUsersQueries();
  when(mockUsersQueries.getUserInfoStream(uid: anyNamed('uid')))
      .thenAnswer((_) => Stream.value(expectedDomainUser));

  return mockUsersQueries;
}

Future<void> _setUpFirebaseAuth() async {
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

  GetIt.I.registerSingleton<FirebaseAuth>(
    mockFirebaseAuth,
    dispose: (_) => stateController.close(),
  );
}

Future<void> _setUpGoogleSignIn() async {
  final mockAccount = _setUpMockGAccount();

  final mockGoogleSignIn = MockGoogleSignIn();

  when(mockGoogleSignIn.signIn()).thenAnswer((_) async => mockAccount);
  when(mockGoogleSignIn.signOut()).thenAnswer((_) async => null);

  GetIt.I.registerSingleton<GoogleSignIn>(mockGoogleSignIn);
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
