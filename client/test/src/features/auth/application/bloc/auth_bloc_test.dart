import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

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

AuthUser initialAuthUser = AuthUser(
  uid: 'uid',
  email: 'email',
  idToken: 'idToken',
  claims: {
    'x-hasura-user-id': 'hasura-user-id',
    'exp':
        DateTime.now().add(const Duration(hours: 1)).millisecondsSinceEpoch ~/
        1000,
  },
);

@GenerateNiceMocks([
  MockSpec<AuthStorage>(),
  MockSpec<FirebaseAuthRepository>(),
  MockSpec<DatabaseService>(),
  MockSpec<LocalAuthService>(),
  MockSpec<ConnectivityService>(),
  MockSpec<UsersDAO>(),
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
          ]);

          verifyInOrder([
            AuthStorage.I.writeAuthDataToCache(initialAuthUser),
            AuthStorage.I.writeUserToCache(initialUserData),
          ]);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'sign out',
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
      late BehaviorSubject<bool> connectivityController;

      blocTest<AuthBloc, AuthState>(
        'refresh token on connectivity change when token expired',
        setUp: () async {
          connectivityController = BehaviorSubject.seeded(false);
          when(
            ConnectivityService.I.connectivityStream,
          ).thenAnswer((_) => connectivityController.stream);

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
        tearDown: () async {
          await connectivityController.close();
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
    });
  });
}

Future<void> _setUp() async {
  final overrides = [
    await _setUpMockConnectivity(),
    await _setUpMockAuthRepository(),
    await _setUpMockDatabaseService(),
    await _setUpMockAuthStorage(),
  ];

  initGlobalProviderContainer(overrides);
}

Future<Override> _setUpMockConnectivity() async {
  final mock = MockConnectivityService();

  when(mock.isConnected()).thenAnswer((_) async => true);
  when(mock.connectivityStream).thenAnswer((_) => BehaviorSubject.seeded(true));

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
  late final controller = StreamController<AuthUser?>.broadcast(sync: true);

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

AuthBloc _createAuthBloc({bool noCachedUser = false}) {
  return AuthBloc(
    connectivityStream: globalProviderContainer
        .read(connectivityServiceProvider)
        .connectivityStream,
    authRepository: globalProviderContainer.read(authRepositoryProvider),
    databaseService: globalProviderContainer.read(databaseServiceProvider),
    authStorage: globalProviderContainer.read(authStorageProvider),
    loadCachedUser: !noCachedUser,
  );
}
