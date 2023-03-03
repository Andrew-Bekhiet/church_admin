import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:rxdart/subjects.dart';

import 'auth_service_test.mocks.dart';

final initialUser = User(
  uid: 'uid',
  name: 'Display Name',
  authId: 'authId',
  email: 'email@example.com',
  password: 'password',
  idToken: 'idToken',
  photoUpdatedAt: DateTime.now(),
  permissions: CAPermissionsSet.fromSet(const {
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
  MockSpec<AuthCache>(),
  MockSpec<AuthAdapter>(),
  MockSpec<ConnectivityService>()
])
void main() {
  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  test(
    'Authentication Service => initialization => not logged in',
    () async {
      await globalProviderContainer
          .read(authCacheProvider)
          .writeUserToCache(null);

      final unit = _createAuthService();
      addTearDown(unit.dispose);

      await unit.userStream.take(1).first;

      expect(unit.currentUser, isNull);
    },
  );

  test(
    'Authentication Service => initialization => logged in',
    () async {
      final unit = _createAuthService();
      addTearDown(unit.dispose);

      await unit.userStream.take(1).first;

      expect(unit.currentUser, initialUser);
    },
  );

  test(
    'Authentication Service => initialization => noCachedUser',
    () async {
      final unit = _createAuthService(noCachedUser: true);
      addTearDown(unit.dispose);

      await unit.userStream.take(1).first;

      expect(unit.currentUser, isNull);
    },
  );

  test(
    'Authentication Service => signOut',
    () async {
      final unit = _createAuthService();
      addTearDown(unit.dispose);

      await unit.userStream.take(1).first;
      await unit.signOut();
      await unit.userStream.take(1).first;

      expect(unit.currentUser, isNull);

      final captured = verify(
        globalProviderContainer
            .read(authCacheProvider)
            .writeUserToCache(captureAny),
      ).captured;

      expect(captured[1], isNull);
    },
  );

  test(
    'Authentication Service => userStream',
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

      await unit.signInWithGoogle();
      await unit.userStream.take(1).first;
    },
  );

  test(
    'Authentication Service => isSignedIn',
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
    'Authentication Service => signIn',
    () async {
      final unit = _createAuthService(noCachedUser: true);
      addTearDown(unit.dispose);

      await unit.userStream.take(1).first;
      expect(unit.currentUser, isNull);

      expect(unit.signInWithGoogle(), completion(initialUser));
      await unit.userStream.take(1).first;

      expect(unit.currentUser, initialUser);

      verify(
        unit.signInWithGoogle(),
      );
    },
  );

  test(
    'Authentication Service => refreshToken',
    () async {
      final unit = _createAuthService();
      addTearDown(unit.dispose);

      await unit.refreshToken();

      verify(unit.refreshToken());
    },
  );

  test(
    'Authentication Service => refreshes token on connection change',
    () async {
      final connectivityController = BehaviorSubject.seeded(false);
      addTearDown(connectivityController.close);

      when(
        globalProviderContainer
            .read(connectivityServiceProvider)
            .connectivityStream,
      ).thenAnswer((_) => connectivityController.stream);

      when(
        (globalProviderContainer.read(authAdapterProvider) as MockAuthAdapter)
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
        (globalProviderContainer.read(authAdapterProvider) as MockAuthAdapter)
            .isTokenUpToDate(captureAny),
        unit.refreshToken()
      ]).captured;

      expect(captured.first.first, initialUser);
    },
  );
}

Future<void> _setUp() async {
  final overrides = [
    await _setUpMockConnectivity(),
    await _setUpMockAuthCache(initialUser: initialUser),
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

Future<Override> _setUpMockAuthCache({User? initialUser}) async {
  User? state = initialUser;

  final mock = MockAuthCache();
  when(mock.getUserFromCache()).thenAnswer((_) async => state);
  when(mock.writeUserToCache(any))
      .thenAnswer((i) async => state = i.positionalArguments[0]);

  return authCacheProvider.overrideWithValue(mock);
}

Future<Override> _setUpMockAuthAdapter({User? userOnSignIn}) async {
  final StreamController<User?> _controller =
      StreamController<User?>.broadcast(sync: true);

  final mock = MockAuthAdapter();

  when(mock.signInWithGoogle()).thenAnswer((_) async {
    _controller.add(userOnSignIn);
    return userOnSignIn;
  });
  when(mock.signOut()).thenAnswer((_) async => _controller..add(null));
  when(mock.userStream).thenAnswer((_) => _controller.stream);
  when(mock.dispose()).thenAnswer((_) => _controller.close());

  return authAdapterProvider.overrideWithValue(mock);
}

AuthService _createAuthService({bool noCachedUser = false}) {
  if (noCachedUser) {
    return AuthService.noCachedUser(
      cache: globalProviderContainer.read(authCacheProvider),
      adapter: globalProviderContainer.read(authAdapterProvider),
    );
  }

  return AuthService(
    cache: globalProviderContainer.read(authCacheProvider),
    adapter: globalProviderContainer.read(authAdapterProvider),
  );
}
