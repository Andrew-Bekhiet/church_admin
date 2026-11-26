import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_logging_service.dart';
import '../support/push_registration_fixture.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('ThisDevicePushRegistration stopping', () {
    final pastTheTimeLimitPerCall =
        ThisDevicePushRegistration.timeLimitPerCall +
        const Duration(seconds: 1);

    late PushRegistrationFixture fixture;
    late ThisDevicePushRegistration unit;

    setUp(() {
      initGlobalProviderContainer([
        loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      ]);
      addTearDown(resetGlobalProviderContainer);
      fixture = PushRegistrationFixture();
      addTearDown(fixture.dispose);
      unit = fixture.buildRegistration();
      addTearDown(unit.dispose);
    });

    test('stopping unregisters this device', () async {
      await unit.maybeRegisterOnceGranted(Future.value(true));

      await unit.stop();

      verify(() => fixture.firebaseMessaging.unregister());
    });

    test('a failing unregistration is contained', () async {
      when(
        () => fixture.firebaseMessaging.unregister(),
      ).thenAnswer((_) async => throw Exception());
      await unit.maybeRegisterOnceGranted(Future.value(true));

      await expectLater(unit.stop(), completes);
    });

    test(
      'installation ids issued after stopping never reach the server',
      () async {
        const lateInstallationId = 'late-installation-id';
        await unit.maybeRegisterOnceGranted(Future.value(true));
        await unit.stop();

        fixture.issueInstallationId(lateInstallationId);
        await pumpEventQueue();

        verifyNever(
          () => fixture.functionsService.registerFirebaseInstallation(
            lateInstallationId,
          ),
        );
      },
    );

    test(
      'an upload still pending when stopping finishes before this device is unregistered',
      () {
        fakeAsync((async) {
          const installationId = 'installation-id';
          final registration = fixture.buildRegistration();
          final outcomes = <String>[];
          final uploadFinishes = Completer<void>();
          fixture
            ..issueOnNextRegister(installationId)
            ..whenRegisteringWithServer().thenAnswer((_) async {
              await uploadFinishes.future;
              outcomes.add('uploaded $installationId');
            });
          when(() => fixture.firebaseMessaging.unregister()).thenAnswer((
            _,
          ) async {
            outcomes.add('unregistered');
          });
          unawaited(registration.maybeRegisterOnceGranted(Future.value(true)));
          async.flushMicrotasks();

          unawaited(registration.stop());
          async.flushMicrotasks();
          uploadFinishes.complete();
          async.flushMicrotasks();

          expect(outcomes, ['uploaded $installationId', 'unregistered']);
        });
      },
    );

    test(
      'stopping while a registration waits on the permission leaves the device unregistered',
      () async {
        final permissionGranted = Completer<bool>();
        final registering = unit.maybeRegisterOnceGranted(
          permissionGranted.future,
        );

        await unit.stop();
        permissionGranted.complete(true);
        await registering;

        verifyNever(() => fixture.firebaseMessaging.register());
      },
    );

    test(
      'disposing while a registration waits on the permission leaves the device unregistered',
      () async {
        final permissionGranted = Completer<bool>();
        final registering = unit.maybeRegisterOnceGranted(
          permissionGranted.future,
        );

        unit.dispose();
        permissionGranted.complete(true);
        await registering;

        verifyNever(() => fixture.firebaseMessaging.register());
      },
    );

    test(
      'an unregistration that never finishes stops holding back the next registration',
      () {
        fakeAsync((async) {
          final registration = fixture.buildRegistration();
          final outcomes = <String>[];
          when(
            () => fixture.firebaseMessaging.unregister(),
          ).thenAnswer((_) => Completer<void>().future);
          when(() => fixture.firebaseMessaging.register()).thenAnswer((
            _,
          ) async {
            outcomes.add('registered');
          });
          unawaited(registration.stop());
          unawaited(registration.maybeRegisterOnceGranted(Future.value(true)));

          async.elapse(pastTheTimeLimitPerCall);

          expect(outcomes, ['registered']);
        });
      },
    );
  });
}
