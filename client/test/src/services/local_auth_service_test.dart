// ignore_for_file: close_sinks

import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth_platform_interface/local_auth_platform_interface.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:rxdart/rxdart.dart';

import '../widgets/church_admin_app_test.mocks.dart';
import 'local_auth_service_test.mocks.dart';
import 'local_auth_service_test.mocks.dart' as m;

@GenerateMocks([LocalAuthPlatform, CANotificationsService])
void main() {
  group(
    'Local Auth Service tests:',
    () {
      setUp(
        () async {
          final stream = BehaviorSubject<RemoteMessage>();
          final stream2 = BehaviorSubject<String?>();

          final mockCANotificationsService = MockCANotificationsService();
          when(mockCANotificationsService.onFCMTokenRefresh)
              .thenReturn(stream2.stream.listen((_) {}));
          when(mockCANotificationsService.onForegroundMessageSubscription)
              .thenReturn(stream.stream.listen((_) {}));
          when(mockCANotificationsService.onMessageOpenedAppSubscription)
              .thenReturn(stream.stream.listen((_) {}));

          GetIt.I.registerSingleton<CANotificationsService>(
            mockCANotificationsService,
          );

          final auth = MockCAAuthRepository();

          when(auth.isSignedIn).thenReturn(true);

          GetIt.I.registerSingleton<CAAuthRepository>(auth);
        },
      );

      tearDown(GetIt.I.reset);

      testWidgets(
        'Initial State',
        (tester) async {
          final unit = LocalAuthService.noInitialAuth();

          expect(unit.shouldAuthenticate, isFalse);
          expect(
            GetIt.I<CANotificationsService>()
                .onMessageOpenedAppSubscription
                .isPaused,
            isFalse,
          );
          expect(
            GetIt.I<CANotificationsService>().onFCMTokenRefresh!.isPaused,
            isFalse,
          );
          expect(
            GetIt.I<CANotificationsService>()
                .onForegroundMessageSubscription!
                .isPaused,
            isFalse,
          );

          final unit2 = LocalAuthService();

          expect(unit2.shouldAuthenticate, isTrue);
          expect(
            GetIt.I<CANotificationsService>()
                .onMessageOpenedAppSubscription
                .isPaused,
            isTrue,
          );
          expect(
            GetIt.I<CANotificationsService>().onFCMTokenRefresh!.isPaused,
            isTrue,
          );
          expect(
            GetIt.I<CANotificationsService>()
                .onForegroundMessageSubscription!
                .isPaused,
            isTrue,
          );

          await unit.dispose();
          await unit2.dispose();
        },
      );

      testWidgets(
        'Observes App Lifecycle',
        (tester) async {
          tester.binding
              .handleAppLifecycleStateChanged(AppLifecycleState.resumed);

          final unit = LocalAuthService.noInitialAuth();

          tester.binding
              .handleAppLifecycleStateChanged(AppLifecycleState.paused);

          expect(unit.shouldAuthenticate, isFalse);

          await tester.pump(const Duration(seconds: 30));

          expect(
            unit.shouldAuthenticate,
            isTrue,
          );

          expect(
            GetIt.I<CANotificationsService>()
                .onMessageOpenedAppSubscription
                .isPaused,
            isTrue,
          );
          expect(
            GetIt.I<CANotificationsService>().onFCMTokenRefresh!.isPaused,
            isTrue,
          );
          expect(
            GetIt.I<CANotificationsService>()
                .onForegroundMessageSubscription!
                .isPaused,
            isTrue,
          );

          await unit.dispose();
        },
      );

      testWidgets(
        'caCheckBiometrics',
        (tester) async {
          final unit = LocalAuthService.noInitialAuth();

          LocalAuthPlatform.instance = MockLocalAuthPlatform();

          when(LocalAuthPlatform.instance.deviceSupportsBiometrics())
              .thenAnswer((_) async => true);
          when(LocalAuthPlatform.instance.isDeviceSupported())
              .thenAnswer((_) async => true);

          expect(await unit.canCheckBiometrics(), isTrue);

          when(LocalAuthPlatform.instance.deviceSupportsBiometrics())
              .thenAnswer((_) async => true);
          when(LocalAuthPlatform.instance.isDeviceSupported())
              .thenAnswer((_) async => false);

          expect(await unit.canCheckBiometrics(), isFalse);

          when(LocalAuthPlatform.instance.deviceSupportsBiometrics())
              .thenAnswer((_) async => false);
          when(LocalAuthPlatform.instance.isDeviceSupported())
              .thenAnswer((_) async => true);

          expect(await unit.canCheckBiometrics(), isFalse);

          when(LocalAuthPlatform.instance.deviceSupportsBiometrics())
              .thenAnswer((_) async => false);
          when(LocalAuthPlatform.instance.isDeviceSupported())
              .thenAnswer((_) async => false);

          expect(await unit.canCheckBiometrics(), isFalse);

          await unit.dispose();
        },
      );

      testWidgets(
        'Authentication 1',
        (tester) async {
          final _authCompleter = Completer<bool>();

          final unit = LocalAuthService.noInitialAuth();

          LocalAuthPlatform.instance = MockLocalAuthPlatform();

          when((LocalAuthPlatform.instance as MockLocalAuthPlatform)
              .authenticate(
            authMessages: anyNamed('authMessages'),
            localizedReason: 'برجاء التحقق للمتابعة',
            options: anyNamed('options'),
          )).thenAnswer((_) async => _authCompleter.future);

          final future1 = unit.authenticate();
          final future2 = unit.authenticate();
          final future3 = unit.authenticate();

          _authCompleter.complete(true);

          final result1 = await future1;
          final result2 = await future2;
          final result3 = await future3;

          expect(result1, isTrue);
          expect(result1 && result2 && result3, isTrue);

          await unit.dispose();
        },
      );

      testWidgets(
        'Authentication 2',
        (tester) async {
          final _authCompleter = Completer<bool>();

          final unit = LocalAuthService.noInitialAuth();

          LocalAuthPlatform.instance = MockLocalAuthPlatform();

          when((LocalAuthPlatform.instance as MockLocalAuthPlatform)
              .authenticate(
            authMessages: anyNamed('authMessages'),
            localizedReason: 'برجاء التحقق للمتابعة',
            options: anyNamed('options'),
          )).thenAnswer((_) async => _authCompleter.future);

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
        'Reset',
        (tester) async {
          tester.binding
              .handleAppLifecycleStateChanged(AppLifecycleState.resumed);

          final unit = LocalAuthService();

          tester.binding
              .handleAppLifecycleStateChanged(AppLifecycleState.paused);

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
            GetIt.I<CANotificationsService>()
                .onMessageOpenedAppSubscription
                .isPaused,
            isFalse,
          );
          expect(
            GetIt.I<CANotificationsService>().onFCMTokenRefresh!.isPaused,
            isFalse,
          );
          expect(
            GetIt.I<CANotificationsService>()
                .onForegroundMessageSubscription!
                .isPaused,
            isFalse,
          );

          await unit.dispose();
        },
      );
    },
  );
}

class MockLocalAuthPlatform extends m.MockLocalAuthPlatform
    with MockPlatformInterfaceMixin {}
