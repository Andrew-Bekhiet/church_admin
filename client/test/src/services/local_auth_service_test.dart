// ignore_for_file: close_sinks

import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
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

  tearDown(resetGlobalProviderContainer);

  test(
    'LocalAuthService => Initial State (noInitialAuth)',
    () async {
      final unit = LocalAuthService.noInitialAuth(
        localAuthPlugin: globalProviderContainer.read(localAuthPluginProvider),
      );

      addTearDown(unit.dispose);

      expect(unit.shouldAuthenticate, isFalse);
      expect(
        globalProviderContainer.read(notificationsServiceProvider).isPaused,
        isFalse,
      );
    },
  );

  test(
    'LocalAuthService => Initial State (default constructor)',
    () async {
      final unit = globalProviderContainer.read(localAuthServiceProvider);
      addTearDown(unit.dispose);

      expect(unit.shouldAuthenticate, isTrue);
      expect(
        globalProviderContainer.read(notificationsServiceProvider).isPaused,
        isTrue,
      );
    },
  );

  testWidgets(
    'LocalAuthService => Observes App Lifecycle',
    (tester) async {
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

      final unit = LocalAuthService.noInitialAuth(
        localAuthPlugin: globalProviderContainer.read(localAuthPluginProvider),
      );

      addTearDown(unit.dispose);

      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);

      expect(unit.shouldAuthenticate, isFalse);

      await tester.pump(const Duration(seconds: 30));

      expect(
        unit.shouldAuthenticate,
        isTrue,
      );

      expect(
        globalProviderContainer.read(notificationsServiceProvider).isPaused,
        isTrue,
      );
    },
  );

  test(
    'LocalAuthService => canCheckBiometrics',
    () async {
      final unit = LocalAuthService.noInitialAuth(
        localAuthPlugin: globalProviderContainer.read(localAuthPluginProvider),
      );

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

      final unit = LocalAuthService.noInitialAuth(
        localAuthPlugin: globalProviderContainer.read(localAuthPluginProvider),
      );

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

      final unit = LocalAuthService.noInitialAuth(
        localAuthPlugin: globalProviderContainer.read(localAuthPluginProvider),
      );

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
    'LocalAuthService => Authentication => cancels timer if '
    'lifecycle changed in timer duration',
    (tester) async {
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

      LocalAuthPlatform.instance = MockLocalAuthPlatform();

      final unit = LocalAuthService(
        localAuthPlugin: globalProviderContainer.read(localAuthPluginProvider),
        timeToReauth: const Duration(minutes: 1),
      )..resetAuthState();

      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);

      await tester.pump(const Duration(seconds: 30));
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

      expect(unit.shouldAuthenticate, isFalse);

      await tester.pump(const Duration(seconds: 32));
      expect(unit.shouldAuthenticate, isFalse);

      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);

      await tester.pump(const Duration(minutes: 1, seconds: 2));
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

      expect(unit.shouldAuthenticate, isTrue);

      await unit.dispose();
    },
  );

  testWidgets(
    'LocalAuthService => reset',
    (tester) async {
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

      final unit = globalProviderContainer.read(localAuthServiceProvider);

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
        globalProviderContainer.read(notificationsServiceProvider).isPaused,
        isFalse,
      );
    },
  );
}

void _setUp() {
  final overrides = [
    _setUpCANotificationsService(),
    _setUpAuthService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpCANotificationsService() {
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

  return notificationsServiceProvider
      .overrideWithValue(mockCANotificationsService);
}

Override _setUpAuthService() {
  final auth = MockAuthService();

  when(auth.isSignedIn).thenReturn(true);

  return authServiceProvider.overrideWithValue(auth);
}

class MockLocalAuthPlatform extends LocalAuthPlatformMock
    with MockPlatformInterfaceMixin {}
