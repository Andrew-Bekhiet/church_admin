// ignore_for_file: close_sinks

import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_platform_interface/local_auth_platform_interface.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'local_auth_service_test.mocks.dart';

@GenerateMocks(
  [CANotificationsService, AuthService],
  customMocks: [
    MockSpec<LocalAuthPlatform>(as: #LocalAuthPlatformMock),
  ],
)
void main() {
  setUp(_setUp);

  tearDown(GetIt.I.reset);

  test(
    'LocalAuthService => Initial State (noInitialAuth)',
    () async {
      final unit = LocalAuthService.noInitialAuth();

      addTearDown(unit.dispose);

      expect(unit.shouldAuthenticate, isFalse);
      expect(
        GetIt.I<CANotificationsService>().isPaused,
        isFalse,
      );
    },
  );

  test(
    'LocalAuthService => Initial State (default constructor)',
    () async {
      final unit = LocalAuthService();
      addTearDown(unit.dispose);

      expect(unit.shouldAuthenticate, isTrue);
      expect(
        GetIt.I<CANotificationsService>().isPaused,
        isTrue,
      );
    },
  );

  testWidgets(
    'LocalAuthService => Observes App Lifecycle',
    (tester) async {
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

      final unit = LocalAuthService.noInitialAuth();

      addTearDown(unit.dispose);

      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);

      expect(unit.shouldAuthenticate, isFalse);

      await tester.pump(const Duration(seconds: 30));

      expect(
        unit.shouldAuthenticate,
        isTrue,
      );

      expect(
        GetIt.I<CANotificationsService>().isPaused,
        isTrue,
      );
    },
  );

  test(
    'LocalAuthService => canCheckBiometrics',
    () async {
      final unit = LocalAuthService.noInitialAuth();

      addTearDown(unit.dispose);

      LocalAuthPlatform.instance = MockLocalAuthPlatform();

      when(LocalAuthPlatform.instance.deviceSupportsBiometrics())
          .thenAnswer((_) async => true);
      when(LocalAuthPlatform.instance.isDeviceSupported())
          .thenAnswer((_) async => true);

      await expectLater(
        unit.canCheckBiometrics(),
        completion(isTrue),
      );

      when(LocalAuthPlatform.instance.deviceSupportsBiometrics())
          .thenAnswer((_) async => true);
      when(LocalAuthPlatform.instance.isDeviceSupported())
          .thenAnswer((_) async => false);

      await expectLater(
        unit.canCheckBiometrics(),
        completion(isFalse),
      );

      when(LocalAuthPlatform.instance.deviceSupportsBiometrics())
          .thenAnswer((_) async => false);
      when(LocalAuthPlatform.instance.isDeviceSupported())
          .thenAnswer((_) async => true);

      await expectLater(
        unit.canCheckBiometrics(),
        completion(isFalse),
      );

      when(LocalAuthPlatform.instance.deviceSupportsBiometrics())
          .thenAnswer((_) async => false);
      when(LocalAuthPlatform.instance.isDeviceSupported())
          .thenAnswer((_) async => false);

      await expectLater(
        unit.canCheckBiometrics(),
        completion(isFalse),
      );
    },
  );

  test(
    'LocalAuthService => Authentication (all finish true)',
    () async {
      final _authCompleter = Completer<bool>();

      final unit = LocalAuthService.noInitialAuth();

      addTearDown(unit.dispose);

      LocalAuthPlatform.instance = MockLocalAuthPlatform();

      when(
        (LocalAuthPlatform.instance as MockLocalAuthPlatform).authenticate(
          authMessages: anyNamed('authMessages'),
          localizedReason: 'برجاء التحقق للمتابعة',
          options: anyNamed('options'),
        ),
      ).thenAnswer((_) async => _authCompleter.future);

      final future1 = unit.authenticate();
      final future2 = unit.authenticate();
      final future3 = unit.authenticate();

      _authCompleter.complete(true);

      final result1 = await future1;
      final result2 = await future2;
      final result3 = await future3;

      expect(result1, isTrue);
      expect(result1 && result2 && result3, isTrue);
    },
  );

  testWidgets(
    'LocalAuthService => Authentication (all finish false)',
    (tester) async {
      final _authCompleter = Completer<bool>();

      final unit = LocalAuthService.noInitialAuth();

      LocalAuthPlatform.instance = MockLocalAuthPlatform();

      when(
        (LocalAuthPlatform.instance as MockLocalAuthPlatform).authenticate(
          authMessages: anyNamed('authMessages'),
          localizedReason: 'برجاء التحقق للمتابعة',
          options: anyNamed('options'),
        ),
      ).thenAnswer((_) async => _authCompleter.future);

      final future1 = unit.authenticate();
      final future2 = unit.authenticate();
      final future3 = unit.authenticate();

      _authCompleter.complete(false);

      final result1 = await future1;
      final result2 = await future2;
      final result3 = await future3;

      expect(result1, isFalse);
      expect(result1 || result2 || result3, isFalse);

      await unit.dispose();
    },
  );

  testWidgets(
    'LocalAuthService => reset',
    (tester) async {
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

      final unit = LocalAuthService();

      addTearDown(unit.dispose);

      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);

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
        GetIt.I<CANotificationsService>().isPaused,
        isFalse,
      );
    },
  );
}

void _setUp() {
  _setUpCANotificationsService();

  _setUpAuthService();

  _registerLocalAuthPlugin();
}

void _registerLocalAuthPlugin() {
  GetIt.I.registerSingleton(LocalAuthentication());
}

void _setUpCANotificationsService() {
  bool isPaused = false;

  final mockCANotificationsService = MockCANotificationsService();

  when(
    mockCANotificationsService.pauseListeners(),
  ).thenAnswer((_) => isPaused = true);
  when(
    mockCANotificationsService.resumeListeners(),
  ).thenAnswer((_) => isPaused = false);

  when(
    mockCANotificationsService.isPaused,
  ).thenAnswer((_) => isPaused);

  GetIt.I.registerSingleton<CANotificationsService>(
    mockCANotificationsService,
  );
}

void _setUpAuthService() {
  final auth = MockAuthService();

  when(auth.isSignedIn).thenReturn(true);

  GetIt.I.registerSingleton<AuthService>(auth);
}

class MockLocalAuthPlatform extends LocalAuthPlatformMock
    with MockPlatformInterfaceMixin {}
