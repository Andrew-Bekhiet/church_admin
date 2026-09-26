import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:local_auth_platform_interface/local_auth_platform_interface.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart' as mocktail;
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'local_auth_service_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<NotificationsService>(),
    MockSpec<AuthBloc>(),
    MockSpec<AuthStorage>(),
    MockSpec<LocalAuthPlatform>(as: #LocalAuthPlatformMock),
  ],
)
void main() {
  AuthRepository authRepository() =>
      globalProviderContainer.read(authRepositoryProvider);

  setUp(_setUp);

  tearDown(resetGlobalProviderContainer);

  group(
    'LocalAuthService =>',
    () {
      test(
        'local auth without an initial challenge starts unlocked',
        () async {
          final unit = LocalAuthService.noInitialAuth(
            localAuthPlugin: globalProviderContainer.read(
              localAuthPluginProvider,
            ),
            userDataWiper: _MockUserDataWiper(),
            authRepository: authRepository(),
          );

          addTearDown(unit.dispose);

          expect(unit.shouldAuthenticate, isFalse);
          expect(
            NotificationsService.I.isPaused,
            isFalse,
          );
        },
      );

      test(
        'local auth with an initial challenge starts locked',
        () async {
          final unit = globalProviderContainer.read(localAuthServiceProvider);
          addTearDown(unit.dispose);

          expect(unit.shouldAuthenticate, isTrue);
          expect(
            NotificationsService.I.isPaused,
            isTrue,
          );
        },
      );

      test(
        'biometrics are available only on a supported device',
        () async {
          final unit = LocalAuthService.noInitialAuth(
            localAuthPlugin: globalProviderContainer.read(
              localAuthPluginProvider,
            ),
            userDataWiper: _MockUserDataWiper(),
            authRepository: authRepository(),
          );

          addTearDown(unit.dispose);

          LocalAuthPlatform.instance = MockLocalAuthPlatform();

          when(
            LocalAuthPlatform.instance.deviceSupportsBiometrics(),
          ).thenAnswer((_) async => true);
          when(
            LocalAuthPlatform.instance.isDeviceSupported(),
          ).thenAnswer((_) async => true);

          await expectLater(
            unit.canCheckBiometrics(),
            completion(isTrue),
          );

          when(
            LocalAuthPlatform.instance.deviceSupportsBiometrics(),
          ).thenAnswer((_) async => true);
          when(
            LocalAuthPlatform.instance.isDeviceSupported(),
          ).thenAnswer((_) async => false);

          await expectLater(
            unit.canCheckBiometrics(),
            completion(isFalse),
          );

          when(
            LocalAuthPlatform.instance.deviceSupportsBiometrics(),
          ).thenAnswer((_) async => false);
          when(
            LocalAuthPlatform.instance.isDeviceSupported(),
          ).thenAnswer((_) async => true);

          await expectLater(
            unit.canCheckBiometrics(),
            completion(isFalse),
          );

          when(
            LocalAuthPlatform.instance.deviceSupportsBiometrics(),
          ).thenAnswer((_) async => false);
          when(
            LocalAuthPlatform.instance.isDeviceSupported(),
          ).thenAnswer((_) async => false);

          await expectLater(
            unit.canCheckBiometrics(),
            completion(isFalse),
          );
        },
      );

      test(
        'concurrent biometric requests share a successful result',
        () async {
          final authCompleter = Completer<bool>();

          final unit = LocalAuthService.noInitialAuth(
            localAuthPlugin: globalProviderContainer.read(
              localAuthPluginProvider,
            ),
            userDataWiper: _MockUserDataWiper(),
            authRepository: authRepository(),
          );

          addTearDown(unit.dispose);

          LocalAuthPlatform.instance = MockLocalAuthPlatform();

          when(
            (LocalAuthPlatform.instance as MockLocalAuthPlatform).authenticate(
              authMessages: anyNamed('authMessages'),
              localizedReason: 'برجاء التحقق للمتابعة',
              options: anyNamed('options'),
            ),
          ).thenAnswer((_) async => authCompleter.future);

          final future1 = unit.authenticate();
          final future2 = unit.authenticate();
          final future3 = unit.authenticate();

          authCompleter.complete(true);

          final result1 = await future1;
          final result2 = await future2;
          final result3 = await future3;

          expect(result1, isTrue);
          expect(result1 && result2 && result3, isTrue);
        },
      );

      group('Auth for path', () {
        late LocalAuthService unit;

        setUp(() {
          unit = LocalAuthService.noInitialAuth(
            localAuthPlugin: globalProviderContainer.read(
              localAuthPluginProvider,
            ),
            userDataWiper: _MockUserDataWiper(),
            authRepository: authRepository(),
          );
          addTearDown(unit.dispose);
        });

        test('an ungranted path requires authentication', () {
          unit.resetAuthState();

          expect(unit.shouldAuthenticateForPath('/test'), isTrue);
        });

        test('a granted path remains accessible across repeated checks', () {
          unit.resetAuthState(path: '/test');

          expect(unit.shouldAuthenticateForPath('/test'), isFalse);
          expect(unit.shouldAuthenticateForPath('/test'), isFalse);
        });

        test('granting one path leaves other paths locked', () {
          unit.resetAuthState(path: '/test');

          expect(unit.shouldAuthenticateForPath('/other'), isTrue);
        });

        test('revoking a path requires authentication again', () {
          unit
            ..resetAuthState(path: '/test')
            ..revokeAuthForPath('/test');

          expect(unit.shouldAuthenticateForPath('/test'), isTrue);
        });

        test('scheduling reauthentication preserves path grants', () {
          unit
            ..resetAuthState(path: '/test')
            ..scheduleReauth();

          expect(unit.shouldAuthenticateForPath('/test'), isFalse);
        });
      });

      testWidgets(
        'concurrent biometric requests share a rejected result',
        (tester) async {
          final authCompleter = Completer<bool>();

          final unit = LocalAuthService.noInitialAuth(
            localAuthPlugin: globalProviderContainer.read(
              localAuthPluginProvider,
            ),
            userDataWiper: _MockUserDataWiper(),
            authRepository: authRepository(),
          );

          LocalAuthPlatform.instance = MockLocalAuthPlatform();

          when(
            (LocalAuthPlatform.instance as MockLocalAuthPlatform).authenticate(
              authMessages: anyNamed('authMessages'),
              localizedReason: 'برجاء التحقق للمتابعة',
              options: anyNamed('options'),
            ),
          ).thenAnswer((_) async => authCompleter.future);

          final future1 = unit.authenticate();
          final future2 = unit.authenticate();
          final future3 = unit.authenticate();

          authCompleter.complete(false);

          final result1 = await future1;
          final result2 = await future2;
          final result3 = await future3;

          expect(result1, isFalse);
          expect([result1, result2, result3], [isFalse, isFalse, isFalse]);

          await unit.dispose();
        },
      );

      test(
        'a canceled biometric prompt leaves authentication locked',
        () async {
          final unit = LocalAuthService.noInitialAuth(
            localAuthPlugin: globalProviderContainer.read(
              localAuthPluginProvider,
            ),
            userDataWiper: _MockUserDataWiper(),
            authRepository: authRepository(),
          );

          addTearDown(unit.dispose);

          LocalAuthPlatform.instance = MockLocalAuthPlatform();

          when(
            (LocalAuthPlatform.instance as MockLocalAuthPlatform).authenticate(
              authMessages: anyNamed('authMessages'),
              localizedReason: anyNamed('localizedReason'),
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => throw const LocalAuthException(
              code: LocalAuthExceptionCode.userCanceled,
            ),
          );

          final future1 = unit.authenticate();
          final future2 = unit.authenticate();
          final future3 = unit.authenticate();

          await expectLater(future1, completion(isFalse));
          await expectLater(future2, completion(isFalse));
          await expectLater(future3, completion(isFalse));
        },
      );

      test(
        'a biometric prompt can succeed after cancellation',
        () async {
          final unit = LocalAuthService.noInitialAuth(
            localAuthPlugin: globalProviderContainer.read(
              localAuthPluginProvider,
            ),
            userDataWiper: _MockUserDataWiper(),
            authRepository: authRepository(),
          );

          addTearDown(unit.dispose);

          LocalAuthPlatform.instance = MockLocalAuthPlatform();

          var shouldThrow = true;

          when(
            (LocalAuthPlatform.instance as MockLocalAuthPlatform).authenticate(
              authMessages: anyNamed('authMessages'),
              localizedReason: 'برجاء التحقق للمتابعة',
              options: anyNamed('options'),
            ),
          ).thenAnswer((_) async {
            if (shouldThrow) {
              throw const LocalAuthException(
                code: LocalAuthExceptionCode.userCanceled,
              );
            }
            return true;
          });

          await expectLater(unit.authenticate(), completion(isFalse));

          shouldThrow = false;

          await expectLater(unit.authenticate(), completion(isTrue));
        },
      );

      testWidgets(
        'resetting authentication unlocks access and resumes notifications',
        (tester) async {
          tester.binding.handleAppLifecycleStateChanged(
            AppLifecycleState.resumed,
          );

          final unit = globalProviderContainer.read(localAuthServiceProvider);

          addTearDown(unit.dispose);

          tester.binding.handleAppLifecycleStateChanged(
            AppLifecycleState.paused,
          );

          expect(unit.shouldAuthenticate, isTrue);

          await tester.pump(const Duration(seconds: 30));

          expect(
            unit.shouldAuthenticate,
            isTrue,
          );

          expect(unit.refreshUIStream, emits(null));

          unit.resetAuthState();

          expect(unit.shouldAuthenticate, isFalse);

          expect(
            NotificationsService.I.isPaused,
            isFalse,
          );
        },
      );
    },
  );
}

void _setUp() {
  final overrides = [
    _setUpCANotificationsService(),
    _setUpAuthRepository(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpCANotificationsService() {
  var isPaused = false;

  final mockCANotificationsService = MockNotificationsService();

  when(
    mockCANotificationsService.pauseListeners(),
  ).thenAnswer((_) => isPaused = true);
  when(
    mockCANotificationsService.resumeListeners(),
  ).thenAnswer((_) => isPaused = false);

  when(
    mockCANotificationsService.isPaused,
  ).thenAnswer((_) => isPaused);

  return notificationsServiceProvider.overrideWithValue(
    mockCANotificationsService,
  );
}

Override _setUpAuthRepository() {
  final auth = _AuthRepositoryMock();

  mocktail.when(() => auth.isSignedIn).thenReturn(true);
  mocktail.when(() => auth.userChanges).thenAnswer((_) => const Stream.empty());

  return authRepositoryProvider.overrideWithValue(auth);
}

class MockLocalAuthPlatform extends LocalAuthPlatformMock
    with MockPlatformInterfaceMixin {}

final class _MockUserDataWiper extends Mock implements UserDataWiper {}

class _AuthRepositoryMock extends mocktail.Mock implements AuthRepository {}
