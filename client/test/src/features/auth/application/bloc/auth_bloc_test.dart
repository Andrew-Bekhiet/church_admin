import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../fakes/fake_user_data_wiper.dart';
import '../../../../utils.dart';
import 'auth_bloc_test.mocks.dart';

final initialUserData = User(
  uid: 'uid',
  name: 'Display Name',
  person: Person(id: 'id', name: 'name'),
  permissions: const PermissionsSet.fromSet({
    UserPermission.approved,
    UserPermission.manageAllUsers,
    UserPermission.readAllData,
    UserPermission.writeAllData,
    UserPermission.recordAllAttendance,
    UserPermission.recoverDeleted,
    UserPermission.exportAllData,
  }),
  photoUpdatedAt: DateTime.now(),
  lastEdit: LastRecordedByInfo(
    time: DateTime.now(),
    recordedBy: 'recordedBy',
  ),
);

final unclaimedAuthUser = AuthUser(
  uid: 'uid',
  email: 'email',
  emailVerified: true,
  idToken: 'idToken',
  claims: {
    'exp':
        DateTime.now().add(const Duration(hours: 1)).millisecondsSinceEpoch ~/
        1000,
  },
);

AuthUser initialAuthUser = AuthUser(
  uid: 'uid',
  email: 'email',
  emailVerified: true,
  idToken: 'idToken',
  claims: {
    'x-hasura-user-id': 'hasura-user-id',
    'exp':
        DateTime.now().add(const Duration(hours: 1)).millisecondsSinceEpoch ~/
        1000,
  },
);

late FakeUserDataWiper userDataWiper;
late StreamController<AuthUser?> userChangesController;
late BehaviorSubject<bool> connectivityController;

@GenerateNiceMocks([
  MockSpec<AuthStorage>(),
  MockSpec<FirebaseAuthRepository>(),
  MockSpec<DatabaseService>(),
  MockSpec<LocalAuthService>(),
  MockSpec<ConnectivityService>(),
  MockSpec<UsersDAO>(),
  MockSpec<FunctionsService>(),
])
void main() {
  group('AuthBloc =>', () {
    setUp(_setUp);
    tearDown(defaultTearDown);

    group('initialization =>', () {
      blocTest<AuthBloc, AuthState>(
        'not logged in',
        setUp: () async {
          await AuthStorage.I.writeAuthDataToCache(null);
          await AuthStorage.I.writeUserToCache(null);
        },
        build: _createAuthBloc,
        expect: () => [
          isA<AuthUnauthenticated>(),
        ],
        verify: (bloc) {
          expect(bloc.currentUser, isNull);
          expect(bloc.currentUserData, isNull);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'logged in',
        build: _createAuthBloc,
        expect: () => [
          isA<AuthAuthenticated>()
              .having((s) => s.authUser, 'authUser', initialAuthUser)
              .having((s) => s.userData, 'userData', initialUserData),
        ],
        verify: (bloc) {
          expect(bloc.currentUser, initialAuthUser);
          expect(bloc.currentUserData, initialUserData);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'no cached user',
        build: () => _createAuthBloc(noCachedUser: true),
        expect: () => [
          isA<AuthUnauthenticated>(),
        ],
        verify: (bloc) {
          expect(bloc.currentUser, isNull);
          expect(bloc.currentUserData, isNull);
        },
      );
    });

    group('sign in/out =>', () {
      blocTest<AuthBloc, AuthState>(
        'sign in with email and password',
        build: () => _createAuthBloc(noCachedUser: true),
        act: (bloc) => bloc.add(
          const SignInWithEmailPassword(
            email: 'email',
            password: 'password',
          ),
        ),
        expect: () => [
          isA<AuthUnauthenticated>(),
          isA<AuthLoading>(),
          isA<AuthAuthenticated>()
              .having((s) => s.authUser, 'authUser', initialAuthUser)
              .having((s) => s.userData, 'userData', isNull),
          isA<AuthAuthenticated>()
              .having((s) => s.authUser, 'authUser', initialAuthUser)
              .having((s) => s.userData, 'userData', initialUserData),
        ],
        verify: (bloc) {
          final mockRepo =
              globalProviderContainer.read(authRepositoryProvider)
                  as MockFirebaseAuthRepository;

          verifyInOrder([
            mockRepo.signInWithEmailPassword(
              email: 'email',
              password: 'password',
            ),
            AuthStorage.I.saveUserPasswordHash('email', 'password'),
          ]);

          verifyInOrder([
            AuthStorage.I.writeAuthDataToCache(initialAuthUser),
            AuthStorage.I.writeUserToCache(initialUserData),
          ]);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'sign up with email and password',
        setUp: () {
          final oldUser = initialAuthUser;
          initialAuthUser = initialAuthUser.copyWith(emailVerified: false);

          addTearDown(() => initialAuthUser = oldUser);
        },
        build: () => _createAuthBloc(noCachedUser: true),
        act: (bloc) => bloc.add(
          const SignUpWithEmailPassword(
            email: 'email',
            password: 'password',
          ),
        ),
        expect: () => [
          isA<AuthUnauthenticated>(),
          isA<AuthLoading>(),
          isA<AuthAuthenticated>()
              .having((s) => s.authUser, 'authUser', initialAuthUser)
              .having((s) => s.userData, 'userData', isNull),
          isA<AuthAuthenticated>()
              .having((s) => s.authUser, 'authUser', initialAuthUser)
              .having((s) => s.userData, 'userData', initialUserData),
        ],
        verify: (bloc) {
          final mockRepo =
              globalProviderContainer.read(authRepositoryProvider)
                  as MockFirebaseAuthRepository;

          verifyInOrder([
            mockRepo.signUpWithEmailPassword(
              email: 'email',
              password: 'password',
            ),
            AuthStorage.I.saveUserPasswordHash('email', 'password'),
            mockRepo.sendEmailVerification(),
          ]);

          verifyInOrder([
            AuthStorage.I.writeAuthDataToCache(initialAuthUser),
            AuthStorage.I.writeUserToCache(initialUserData),
          ]);
        },
      );

      blocTest<AuthBloc, AuthState>(
        "signing out ends the session and wipes the user's local data",
        setUp: () async {
          await AuthStorage.I.writeAuthDataToCache(initialAuthUser);
          await AuthStorage.I.writeUserToCache(initialUserData);
        },
        build: _createAuthBloc,
        act: (bloc) async {
          await Future.delayed(Duration.zero);
          bloc.add(const SignOut());
        },
        expect: () => [
          isA<AuthAuthenticated>()
              .having((s) => s.authUser, 'authUser', initialAuthUser)
              .having((s) => s.userData, 'userData', initialUserData),
          isA<AuthLoading>(),
          isA<AuthUnauthenticated>(),
        ],
        verify: (bloc) {
          expect(bloc.currentUser, isNull);
          expect(bloc.currentUserData, isNull);

          verify(
            globalProviderContainer.read(authRepositoryProvider).signOut(),
          );

          expect(AuthStorage.I.getAuthDataFromCache(), completion(isNull));
          expect(AuthStorage.I.getUserFromCache(), completion(isNull));
          expect(AuthStorage.I.getPasswordHash(), completion(isNull));
          expect(userDataWiper.wasWiped, isTrue);
        },
      );
    });

    group('session ending =>', () {
      blocTest<AuthBloc, AuthState>(
        "a session ended remotely wipes the user's local data",
        build: _createAuthBloc,
        act: (bloc) async {
          await Future.delayed(Duration.zero);
          userChangesController.add(null);
        },
        expect: () => [
          isA<AuthAuthenticated>(),
          isA<AuthUnauthenticated>(),
        ],
        verify: (bloc) {
          expect(userDataWiper.wasWiped, isTrue);
          expect(AuthStorage.I.getPasswordHash(), completion(isNull));
        },
      );

      blocTest<AuthBloc, AuthState>(
        'starting without a signed-in user does not wipe local data',
        build: () => _createAuthBloc(noCachedUser: true),
        act: (bloc) async {
          await Future.delayed(Duration.zero);
          userChangesController.add(null);
        },
        expect: () => [isA<AuthUnauthenticated>()],
        verify: (bloc) {
          expect(userDataWiper.wasWiped, isFalse);
          expect(AuthStorage.I.getPasswordHash(), completion(isNotNull));
        },
      );

      blocTest<AuthBloc, AuthState>(
        'a session revoked on the server is signed out and wiped when the app reconnects',
        setUp: () {
          final mockRepo =
              globalProviderContainer.read(authRepositoryProvider)
                  as MockFirebaseAuthRepository;
          when(mockRepo.refreshToken()).thenAnswer(
            (_) async => throw const SessionRevokedException(null, null),
          );
        },
        build: _createAuthBloc,
        act: (bloc) async {
          await Future.delayed(Duration.zero);
          connectivityController
            ..add(false)
            ..add(true);
        },
        expect: () => [
          isA<AuthAuthenticated>(),
          isA<AuthLoading>(),
          isA<AuthUnauthenticated>(),
        ],
        verify: (bloc) {
          expect(userDataWiper.wasWiped, isTrue);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'failing to reach the server while checking the session keeps the user signed in',
        setUp: () {
          final mockRepo =
              globalProviderContainer.read(authRepositoryProvider)
                  as MockFirebaseAuthRepository;
          when(mockRepo.refreshToken()).thenAnswer(
            (_) async => throw const AuthNetworkException(null, null),
          );
        },
        build: _createAuthBloc,
        act: (bloc) async {
          await Future.delayed(Duration.zero);
          connectivityController
            ..add(false)
            ..add(true);
        },
        expect: () => [isA<AuthAuthenticated>()],
        verify: (bloc) {
          expect(userDataWiper.wasWiped, isFalse);
        },
      );
    });

    group('password reset =>', () {
      blocTest<AuthBloc, AuthState>(
        'unauthenticated user',
        build: () => _createAuthBloc(noCachedUser: true),
        act: (bloc) =>
            bloc.add(const SendPasswordResetEmail(email: 'email@example.com')),
        wait: const Duration(milliseconds: 10),
        expect: () => [
          isA<AuthUnauthenticated>(),
          isA<AuthLoading>(),
          isA<AuthUnauthenticated>(),
        ],
        verify: (bloc) {
          final mockRepo =
              globalProviderContainer.read(authRepositoryProvider)
                  as MockFirebaseAuthRepository;
          verify(mockRepo.sendPasswordResetEmail(email: 'email@example.com'));
        },
      );

      blocTest<AuthBloc, AuthState>(
        'authenticated user',
        build: _createAuthBloc,
        act: (bloc) async {
          await Future.delayed(Duration.zero);
          bloc.add(const SendPasswordResetEmail(email: 'email@example.com'));
        },
        wait: const Duration(milliseconds: 10),
        expect: () => [
          isA<AuthAuthenticated>()
              .having((s) => s.authUser, 'authUser', initialAuthUser)
              .having((s) => s.userData, 'userData', initialUserData),
          isA<AuthLoading>(),
          isA<AuthAuthenticated>()
              .having((s) => s.authUser, 'authUser', initialAuthUser)
              .having((s) => s.userData, 'userData', initialUserData),
        ],
        verify: (bloc) {
          final mockRepo =
              globalProviderContainer.read(authRepositoryProvider)
                  as MockFirebaseAuthRepository;
          verify(mockRepo.sendPasswordResetEmail(email: 'email@example.com'));
        },
      );
    });

    group('token management =>', () {
      blocTest<AuthBloc, AuthState>(
        'refresh token when the app reconnects',
        setUp: () async {
          connectivityController.add(false);

          final oldUser = initialAuthUser;
          addTearDown(() => initialAuthUser = oldUser);

          initialAuthUser = initialAuthUser.copyWith(
            idToken: 'stale-token',
            claims: {
              ...initialAuthUser.claims,
              'exp': 0,
            },
          );

          await AuthStorage.I.writeAuthDataToCache(initialAuthUser);
        },
        build: _createAuthBloc,
        act: (bloc) async {
          await Future.delayed(Duration.zero);

          initialAuthUser = initialAuthUser.copyWith(
            idToken: 'refreshed',
            claims: {
              ...initialAuthUser.claims,
              'exp':
                  DateTime.now()
                      .add(const Duration(hours: 1))
                      .millisecondsSinceEpoch ~/
                  1000,
            },
          );
          connectivityController.add(true);
        },
        expect: () => [
          isA<AuthAuthenticated>().having(
            (s) => s.authUser.idToken,
            'idToken',
            'stale-token',
          ),
          isA<AuthAuthenticated>().having(
            (s) => s.authUser.idToken,
            'idToken',
            'refreshed',
          ),
        ],
        verify: (bloc) {
          final mockRepo =
              globalProviderContainer.read(authRepositoryProvider)
                  as MockFirebaseAuthRepository;
          verify(mockRepo.refreshToken());
        },
      );

      blocTest<AuthBloc, AuthState>(
        'refresh token automatically when expiry time is reached',
        setUp: () async {
          final oldUser = initialAuthUser;
          addTearDown(() => initialAuthUser = oldUser);

          initialAuthUser = initialAuthUser.copyWith(
            idToken: 'initial-token',
            claims: {
              ...initialAuthUser.claims,
              'exp':
                  DateTime.now()
                      .add(const Duration(seconds: 2))
                      .millisecondsSinceEpoch ~/
                  1000,
            },
          );

          await AuthStorage.I.writeAuthDataToCache(initialAuthUser);
        },
        build: _createAuthBloc,
        wait: const Duration(seconds: 2),
        expect: () => [
          isA<AuthAuthenticated>().having(
            (s) => s.authUser.idToken,
            'idToken',
            'initial-token',
          ),
          isA<AuthAuthenticated>().having(
            (s) => s.authUser.idToken,
            'idToken',
            'refreshed',
          ),
        ],
        verify: (bloc) {
          final mockRepo =
              globalProviderContainer.read(authRepositoryProvider)
                  as MockFirebaseAuthRepository;
          verify(mockRepo.refreshToken()).called(1);
        },
      );
    });

    group('user management =>', () {
      blocTest<AuthBloc, AuthState>(
        'send email verification',
        build: _createAuthBloc,
        act: (bloc) async {
          await Future.delayed(Duration.zero);

          bloc.add(const SendEmailVerification());
          await Future.delayed(Duration.zero);
        },
        expect: () => [
          isA<AuthAuthenticated>()
              .having((s) => s.authUser, 'authUser', initialAuthUser)
              .having((s) => s.userData, 'userData', initialUserData),
          isA<AuthLoading>(),
          isA<AuthAuthenticated>()
              .having((s) => s.authUser, 'authUser', initialAuthUser)
              .having((s) => s.userData, 'userData', initialUserData),
        ],
        verify: (bloc) {
          final mockRepo =
              globalProviderContainer.read(authRepositoryProvider)
                  as MockFirebaseAuthRepository;
          verify(mockRepo.sendEmailVerification());
        },
      );

      blocTest<AuthBloc, AuthState>(
        'reload user',
        build: _createAuthBloc,
        act: (bloc) async {
          await Future.delayed(Duration.zero);
          bloc.add(const ReloadUser());
          await Future.delayed(Duration.zero);
        },
        wait: const Duration(seconds: 1),
        expect: () => [
          isA<AuthAuthenticated>()
              .having((s) => s.authUser.idToken, 'idToken', 'idToken')
              .having((s) => s.userData, 'userData', initialUserData),
          isA<AuthLoading>(),
          isA<AuthAuthenticated>()
              .having((s) => s.authUser.idToken, 'idToken', 'reloaded')
              .having((s) => s.userData, 'userData', initialUserData),
        ],
        verify: (bloc) {
          final mockRepo =
              globalProviderContainer.read(authRepositoryProvider)
                  as MockFirebaseAuthRepository;
          verify(mockRepo.reload());
        },
      );

      blocTest<AuthBloc, AuthState>(
        'reloadUser_whenTokenCarriesNoHasuraUserId_onboardsTheInvitee',
        setUp: () async {
          final functionsMock =
              globalProviderContainer.read(functionsServiceProvider)
                  as MockFunctionsService;
          when(functionsMock.tryClaimAccount()).thenAnswer((_) async => true);

          await AuthStorage.I.clearAll();
          await AuthStorage.I.writeAuthDataToCache(unclaimedAuthUser);

          final mockRepo =
              globalProviderContainer.read(authRepositoryProvider)
                  as MockFirebaseAuthRepository;

          when(mockRepo.reload()).thenAnswer((_) async {});
        },
        build: _createAuthBloc,
        act: (bloc) async {
          await Future.delayed(Duration.zero);
          bloc.add(const ReloadUser());
          await Future.delayed(Duration.zero);
        },
        wait: const Duration(seconds: 1),
        verify: (bloc) {
          expect(
            bloc.state.unwrapped,
            isA<AuthAuthenticated>().having(
              (s) => s.userData,
              'userData',
              initialUserData,
            ),
          );
        },
      );

      blocTest<AuthBloc, AuthState>(
        'applyInvitationCode_whenApplyingFails_restoresThePreloadingState',
        setUp: () {
          final mockFunctions =
              globalProviderContainer.read(functionsServiceProvider)
                  as MockFunctionsService;
          when(
            mockFunctions.applyInvitationCode('INVITE-CODE'),
          ).thenThrow(StateError('invalid invitation code'));
        },
        build: () => _createAuthBloc(noCachedUser: true),
        act: (bloc) async {
          await Future<void>.delayed(Duration.zero);
          bloc.add(const ApplyInvitationCode('INVITE-CODE'));
        },
        wait: const Duration(milliseconds: 100),
        expect: () => [
          isA<AuthUnauthenticated>(),
          isA<AuthLoading>().having(
            (state) => state.previousState,
            'previousState',
            isA<AuthUnauthenticated>(),
          ),
          isA<AuthExceptionState>().having(
            (state) => state.previousState,
            'previousState',
            isA<AuthUnauthenticated>(),
          ),
        ],
      );
    });

    group('loaded =>', () {
      test(
        'loaded_whenTokenCarriesNoHasuraUserId_settlesWithoutWaiting',
        () async {
          await AuthStorage.I.clearAll();
          await AuthStorage.I.writeAuthDataToCache(unclaimedAuthUser);

          final bloc = _createAuthBloc();
          addTearDown(bloc.close);

          await expectLater(
            bloc.loaded.timeout(const Duration(seconds: 1)),
            completes,
          );
        },
      );
    });
  });
}

Future<void> _setUp() async {
  final overrides = [
    await _setUpMockConnectivity(),
    await _setUpMockAuthRepository(),
    await _setUpMockDatabaseService(),
    await _setUpMockAuthStorage(),
    await _setUpMockFunctionsService(),
  ];

  initGlobalProviderContainer(overrides);

  userDataWiper = FakeUserDataWiper(AuthStorage.I);
}

Future<Override> _setUpMockFunctionsService() async {
  final mock = MockFunctionsService();

  when(mock.tryClaimAccount()).thenAnswer((_) async => false);

  return functionsServiceProvider.overrideWithValue(mock);
}

Future<Override> _setUpMockConnectivity() async {
  final mock = MockConnectivityService();

  when(mock.isConnected()).thenAnswer((_) async => true);
  final controller = connectivityController = BehaviorSubject.seeded(true);
  when(mock.connectivityStream).thenAnswer((_) => controller.stream);
  addTearDown(controller.close);

  return connectivityServiceProvider.overrideWithValue(mock);
}

Future<Override> _setUpMockAuthStorage() async {
  final mock = MockAuthStorage();

  User? user = initialUserData;
  AuthUser? authUser = initialAuthUser;
  String? passwordHash = 'passwordHash';

  when(mock.clearAll()).thenAnswer((_) async {
    user = null;
    authUser = null;
    passwordHash = null;
    return;
  });
  when(
    mock.writeAuthDataToCache(captureAny),
  ).thenAnswer((i) async => authUser = i.positionalArguments[0]);
  when(
    mock.writeUserToCache(captureAny),
  ).thenAnswer((i) async => user = i.positionalArguments[0]);
  when(mock.saveUserPasswordHash(captureAny, captureAny)).thenAnswer(
    (i) async => passwordHash =
        '${i.positionalArguments[0]}-hash-${i.positionalArguments[1]}',
  );
  when(mock.getAuthDataFromCache()).thenAnswer((_) async => authUser);
  when(mock.getUserFromCache()).thenAnswer((_) async => user);
  when(mock.getPasswordHash()).thenAnswer((_) async => passwordHash);

  return authStorageProvider.overrideWithValue(mock);
}

Future<Override> _setUpMockAuthRepository() async {
  final controller = userChangesController =
      StreamController<AuthUser?>.broadcast(sync: true);

  final mock = MockFirebaseAuthRepository();

  when(
    mock.signInWithEmailPassword(email: 'email', password: 'password'),
  ).thenAnswer((_) async => controller.add(initialAuthUser));
  when(
    mock.signUpWithEmailPassword(email: 'email', password: 'password'),
  ).thenAnswer((_) async => controller.add(initialAuthUser));

  when(mock.signOut()).thenAnswer((_) async => controller.add(null));
  when(mock.refreshToken()).thenAnswer(
    (_) async => controller.add(
      initialAuthUser.copyWith(
        idToken: 'refreshed',
        claims: {
          ...initialAuthUser.claims,
          'exp':
              DateTime.now()
                  .add(const Duration(hours: 1))
                  .millisecondsSinceEpoch ~/
              1000,
        },
      ),
    ),
  );
  when(mock.reload()).thenAnswer(
    (_) async => controller.add(initialAuthUser.copyWith(idToken: 'reloaded')),
  );

  when(mock.userChanges).thenAnswer((_) => controller.stream);

  when(mock.dispose()).thenAnswer((_) => controller.close());

  return authRepositoryProvider.overrideWithValue(mock);
}

Future<Override> _setUpMockDatabaseService() async {
  final mock = MockDatabaseService();
  final mockUsersDAO = MockUsersDAO();

  when(mock.users).thenReturn(mockUsersDAO);
  when(
    mockUsersDAO.streamSingleById(
      id: initialAuthUser.claims['x-hasura-user-id'],
      fullData: true,
    ),
  ).thenAnswer((_) => Stream.value(initialUserData));

  return databaseServiceProvider.overrideWithValue(mock);
}

AuthBloc _createAuthBloc({
  bool noCachedUser = false,
  bool enableAccountClaimingByEmail = true,
}) {
  return AuthBloc(
    connectivityStream: globalProviderContainer
        .read(connectivityServiceProvider)
        .connectivityStream,
    authRepository: globalProviderContainer.read(authRepositoryProvider),
    databaseService: globalProviderContainer.read(databaseServiceProvider),
    authStorage: globalProviderContainer.read(authStorageProvider),
    functionsService: globalProviderContainer.read(functionsServiceProvider),
    featureFlagsRepository: FakeFeatureFlagsRepo(
      enableAccountClaimingByEmail: enableAccountClaimingByEmail,
    ),
    userDataWiper: userDataWiper,
    loadCachedUser: !noCachedUser,
  );
}
