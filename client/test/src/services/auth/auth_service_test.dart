import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/subjects.dart';

import 'auth_service_test.mocks.dart';

final initialUser = User(
  uid: 'uid',
  name: 'Display Name',
  authId: 'authId',
  email: 'email@example.com',
  idToken: 'idToken',
  photoUpdatedAt: DateTime.now(),
  passwordKeyHash: 'FakePasswordHash1234',
  permissions: PermissionsSet.fromSet(const {
    'approved',
    'manageAllUsers',
    'readAllData',
    'writeAllData',
    'recordHistory',
    'changeOldHistory',
    'recoverDeleted',
    'exportData',
  }),
);

@GenerateNiceMocks([
  MockSpec<AuthStorage>(),
  MockSpec<AuthAdapter>(),
  MockSpec<MultiFactorManagerAdapter>(),
  MockSpec<LocalAuthService>(),
  MockSpec<ConnectivityService>()
])
void main() {
  group(
    'Authentication Service =>',
    () {
      setUp(_setUp);
      tearDown(resetGlobalProviderContainer);

      group(
        'initialization =>',
        () {
          test(
            'not logged in',
            () async {
              await globalProviderContainer
                  .read(authStorageProvider)
                  .writeUserToCache(null);

              final unit = _createAuthService();
              addTearDown(unit.dispose);

              await unit.userStream.take(1).first;

              expect(unit.currentUser, isNull);
            },
          );

          test(
            'logged in',
            () async {
              final unit = _createAuthService();
              addTearDown(unit.dispose);

              await unit.userStream.take(1).first;

              expect(unit.currentUser, initialUser);
            },
          );

          test(
            'noCachedUser',
            () async {
              final unit = _createAuthService(noCachedUser: true);
              addTearDown(unit.dispose);

              await unit.userStream.take(1).first;

              expect(unit.currentUser, isNull);
            },
          );
        },
      );

      test(
        'userStream',
        () async {
          final unit = _createAuthService();
          addTearDown(unit.dispose);

          expect(
            unit.userStream,
            emitsInOrder([initialUser, isNull, initialUser]),
          );

          await unit.userStream.take(1).first;

          await unit.signOut();
          await unit.userStream.take(1).first;

          await unit.signInWithEmailPassword(
            email: 'email',
            password: 'password',
          );
          await unit.userStream.take(1).first;
        },
      );

      test(
        'isSignedIn',
        () async {
          final unit = _createAuthService();
          addTearDown(unit.dispose);

          await unit.userStream.take(1).first;

          expect(
            unit.isSignedIn,
            isTrue,
          );

          await unit.signOut();
          await unit.userStream.take(1).first;

          expect(
            unit.isSignedIn,
            isFalse,
          );
        },
      );

      test(
        'signUp',
        () async {
          final unit = _createAuthService(noCachedUser: true);
          addTearDown(unit.dispose);

          await unit.userStream.take(1).first;
          expect(unit.currentUser, isNull);

          expect(
            unit.signUpWithEmailPassword(email: 'email', password: 'password'),
            completion(isTrue),
          );
          await unit.userStream.take(1).first;

          expect(unit.currentUser, initialUser);

          verifyInOrder([
            globalProviderContainer
                .read(authAdapterProvider)
                .signUpWithEmailPassword(email: 'email', password: 'password'),
            globalProviderContainer
                .read(authStorageProvider)
                .saveUserPasswordHash('email', 'password'),
            globalProviderContainer
                .read(authAdapterProvider)
                .sendEmailVerification(),
          ]);
        },
      );
      test(
        'signIn',
        () async {
          final unit = _createAuthService(noCachedUser: true);
          addTearDown(unit.dispose);

          await unit.userStream.take(1).first;
          expect(unit.currentUser, isNull);

          expect(
            unit.signInWithEmailPassword(email: 'email', password: 'password'),
            completion(isTrue),
          );
          await unit.userStream.take(1).first;

          expect(unit.currentUser, initialUser);

          verifyInOrder([
            globalProviderContainer
                .read(authAdapterProvider)
                .signInWithEmailPassword(email: 'email', password: 'password'),
            globalProviderContainer
                .read(authStorageProvider)
                .saveUserPasswordHash('email', 'password'),
          ]);
        },
      );

      test(
        'refreshToken',
        () async {
          final unit = _createAuthService();
          addTearDown(unit.dispose);

          await unit.refreshToken();

          verify(unit.refreshToken());
        },
      );

      test(
        'refreshes token on connection change',
        () async {
          final connectivityController = BehaviorSubject.seeded(false);
          addTearDown(connectivityController.close);

          when(
            globalProviderContainer
                .read(connectivityServiceProvider)
                .connectivityStream,
          ).thenAnswer((_) => connectivityController.stream);

          when(
            (globalProviderContainer.read(authAdapterProvider)
                    as MockAuthAdapter)
                .isTokenUpToDate(any),
          ).thenReturn(false);

          final unit = _createAuthService();
          addTearDown(unit.dispose);

          await unit.userStream.take(1).first;

          verifyNever(
            unit.refreshToken(),
          );

          connectivityController.add(true);
          await unit.userStream.take(1).first;

          final captured = verifyInOrder([
            (globalProviderContainer.read(authAdapterProvider)
                    as MockAuthAdapter)
                .isTokenUpToDate(captureAny),
            unit.refreshToken()
          ]).captured;

          expect(captured.first.first, initialUser);
        },
      );

      test(
        'sendEmailVerification',
        () async {
          final unit = _createAuthService();
          addTearDown(unit.dispose);

          await unit.sendEmailVerification();

          verify(
            globalProviderContainer
                .read(authAdapterProvider)
                .sendEmailVerification(),
          );
        },
      );

      test(
        'reload',
        () async {
          final unit = _createAuthService();
          addTearDown(unit.dispose);

          await unit.reload();

          verify(
            globalProviderContainer.read(authAdapterProvider).reload(),
          );
        },
      );

      test(
        'refreshToken',
        () async {
          final unit = _createAuthService();
          addTearDown(unit.dispose);

          await unit.refreshToken();

          verify(
            globalProviderContainer.read(authAdapterProvider).refreshToken(),
          );
        },
      );

      test(
        'getStoredPasswordHash',
        () async {
          final unit = _createAuthService();
          addTearDown(unit.dispose);

          await unit.getStoredPasswordHash();

          verify(
            globalProviderContainer.read(authStorageProvider).getPasswordHash(),
          );
        },
      );

      test(
        'signOut',
        () async {
          final unit = _createAuthService();
          addTearDown(unit.dispose);

          await unit.userStream.take(1).first;
          await unit.signOut();
          await unit.userStream.take(1).first;

          expect(unit.currentUser, isNull);

          final captured = verify(
            globalProviderContainer
                .read(authStorageProvider)
                .writeUserToCache(captureAny),
          ).captured;

          expect(captured[1], isNull);
        },
      );
    },
  );
}

Future<void> _setUp() async {
  final overrides = [
    await _setUpMockConnectivity(),
    await _setUpMockMultiFactorManagerAdapter(),
    await _setUpMockAuthStorage(initialUser: initialUser),
    await _setUpMockAuthAdapter(userOnSignIn: initialUser),
  ];

  initGlobalProviderContainer(overrides);
}

Future<Override> _setUpMockConnectivity() async {
  final mock = MockConnectivityService();

  when(mock.isConnected()).thenAnswer((_) async => true);
  when(mock.connectivityStream).thenAnswer((_) => BehaviorSubject.seeded(true));

  return connectivityServiceProvider.overrideWithValue(mock);
}

Future<Override> _setUpMockAuthStorage({User? initialUser}) async {
  User? state = initialUser;

  final mock = MockAuthStorage();
  when(mock.getUserFromCache()).thenAnswer((_) async => state);
  when(mock.getPasswordHash()).thenAnswer((_) async => state?.passwordKeyHash);
  when(mock.writeUserToCache(any))
      .thenAnswer((i) async => state = i.positionalArguments[0]);

  return authStorageProvider.overrideWithValue(mock);
}

Future<Override> _setUpMockAuthAdapter({User? userOnSignIn}) async {
  final StreamController<User?> _controller =
      StreamController<User?>.broadcast(sync: true);

  final mock = MockAuthAdapter();

  when(mock.signInWithEmailPassword(email: 'email', password: 'password'))
      .thenAnswer((_) async {
    _controller.add(userOnSignIn);
    return true;
  });
  when(mock.signUpWithEmailPassword(email: 'email', password: 'password'))
      .thenAnswer((_) async {
    _controller.add(userOnSignIn);
    return true;
  });
  when(mock.signOut()).thenAnswer((_) async => _controller..add(null));
  when(mock.userStream).thenAnswer((_) => _controller.stream);
  when(mock.dispose()).thenAnswer((_) => _controller.close());

  return authAdapterProvider.overrideWithValue(mock);
}

AuthService _createAuthService({bool noCachedUser = false}) {
  if (noCachedUser) {
    return AuthService.noCachedUser(
      storage: globalProviderContainer.read(authStorageProvider),
      adapter: globalProviderContainer.read(authAdapterProvider),
      multiFactorAdapter:
          globalProviderContainer.read(multiFactorManagerAdapterProvider),
    );
  }

  return AuthService(
    storage: globalProviderContainer.read(authStorageProvider),
    adapter: globalProviderContainer.read(authAdapterProvider),
    multiFactorAdapter:
        globalProviderContainer.read(multiFactorManagerAdapterProvider),
  );
}

Future<Override> _setUpMockMultiFactorManagerAdapter() async {
  final mock = MockMultiFactorManagerAdapter();

  return multiFactorManagerAdapterProvider.overrideWithValue(mock);
}
