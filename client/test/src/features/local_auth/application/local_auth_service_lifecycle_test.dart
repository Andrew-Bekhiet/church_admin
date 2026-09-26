import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart' as mocktail;

import 'local_auth_service_test.mocks.dart';

void main() {
  setUp(() {
    var isPaused = false;
    final notifications = MockNotificationsService();
    when(notifications.isPaused).thenAnswer((_) => isPaused);
    when(notifications.pauseListeners()).thenAnswer((_) => isPaused = true);
    when(notifications.resumeListeners()).thenAnswer((_) => isPaused = false);

    final auth = _AuthRepositoryMock();
    mocktail.when(() => auth.isSignedIn).thenReturn(true);

    initGlobalProviderContainer([
      notificationsServiceProvider.overrideWithValue(notifications),
      authRepositoryProvider.overrideWithValue(auth),
    ]);
  });

  tearDown(resetGlobalProviderContainer);

  testWidgets(
    'local auth after the inactivity threshold locks and refreshes the UI',
    (
      tester,
    ) async {
      var now = DateTime(2026);
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

      final unit = LocalAuthService.noInitialAuth(
        localAuthPlugin: globalProviderContainer.read(localAuthPluginProvider),
        userDataWiper: _MockUserDataWiper(),
        authRepository: globalProviderContainer.read(authRepositoryProvider),
        clock: Clock(() => now),
      );
      addTearDown(unit.dispose);

      var refreshCount = 0;
      final subscription = unit.refreshUIStream.listen((_) => refreshCount++);
      addTearDown(subscription.cancel);

      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
      now = now.add(const Duration(seconds: 31));

      expect(unit.shouldAuthenticate, isTrue);
      expect(refreshCount, 0);

      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pump();

      expect(unit.shouldAuthenticate, isTrue);
      expect(NotificationsService.I.isPaused, isTrue);
      expect(refreshCount, 1);
    },
  );

  testWidgets('local auth after short inactive intervals stays unlocked', (
    tester,
  ) async {
    var now = DateTime(2026);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

    final unit = LocalAuthService.noInitialAuth(
      localAuthPlugin: globalProviderContainer.read(localAuthPluginProvider),
      userDataWiper: _MockUserDataWiper(),
      authRepository: globalProviderContainer.read(authRepositoryProvider),
      timeToReauth: const Duration(minutes: 1),
      clock: Clock(() => now),
    );
    addTearDown(unit.dispose);

    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
    now = now.add(const Duration(seconds: 30));
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
    now = now.add(const Duration(seconds: 32));

    expect(unit.shouldAuthenticate, isFalse);

    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
    now = now.add(const Duration(minutes: 1, seconds: 2));
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

    expect(unit.shouldAuthenticate, isTrue);
  });

  testWidgets(
    'local auth reset while inactive cancels pending reauthentication',
    (
      tester,
    ) async {
      var now = DateTime(2026);
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

      final unit = LocalAuthService.noInitialAuth(
        localAuthPlugin: globalProviderContainer.read(localAuthPluginProvider),
        userDataWiper: _MockUserDataWiper(),
        authRepository: globalProviderContainer.read(authRepositoryProvider),
        clock: Clock(() => now),
      );
      addTearDown(unit.dispose);

      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
      now = now.add(const Duration(seconds: 31));
      unit.resetAuthState();
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

      expect(unit.shouldAuthenticate, isFalse);
    },
  );
}

class _AuthRepositoryMock extends mocktail.Mock implements AuthRepository {}

final class _MockUserDataWiper extends Mock implements UserDataWiper {}
