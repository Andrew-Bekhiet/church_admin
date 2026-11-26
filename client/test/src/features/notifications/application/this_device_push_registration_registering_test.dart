import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_logging_service.dart';
import '../support/push_registration_fixture.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('ThisDevicePushRegistration registering', () {
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

    test(
      'the installation id issued on registering reaches the server',
      () async {
        const installationId = 'installation-id';
        fixture.issueOnNextRegister(installationId);

        await unit.maybeRegisterOnceGranted(Future.value(true));
        await pumpEventQueue();

        verify(
          () => fixture.functionsService.registerFirebaseInstallation(
            installationId,
          ),
        );
      },
    );

    test('nothing is registered when the permission is not granted', () async {
      fixture.issueOnNextRegister('installation-id');

      await unit.maybeRegisterOnceGranted(Future.value(false));
      await pumpEventQueue();

      verifyNever(() => fixture.firebaseMessaging.register());
    });

    test('a replacement installation id also reaches the server', () async {
      const replacementInstallationId = 'replacement-installation-id';
      await unit.maybeRegisterOnceGranted(Future.value(true));

      fixture.issueInstallationId(replacementInstallationId);
      await pumpEventQueue();

      verify(
        () => fixture.functionsService.registerFirebaseInstallation(
          replacementInstallationId,
        ),
      );
    });

    test(
      'registering again after stopping registers the device again',
      () async {
        const firstInstallationId = 'first-installation-id';
        const secondInstallationId = 'second-installation-id';
        fixture.issueOnNextRegister(firstInstallationId);
        await unit.maybeRegisterOnceGranted(Future.value(true));
        await unit.stop();
        fixture.issueOnNextRegister(secondInstallationId);

        await unit.maybeRegisterOnceGranted(Future.value(true));
        await pumpEventQueue();

        verify(
          () => fixture.functionsService.registerFirebaseInstallation(
            secondInstallationId,
          ),
        );
      },
    );

    test(
      'an installation id is sent once after registering twice without stopping',
      () async {
        const installationId = 'installation-id';
        await unit.maybeRegisterOnceGranted(Future.value(true));
        await unit.maybeRegisterOnceGranted(Future.value(true));

        fixture.issueInstallationId(installationId);
        await pumpEventQueue();

        verify(
          () => fixture.functionsService.registerFirebaseInstallation(
            installationId,
          ),
        ).called(1);
      },
    );

    test(
      'a failure to issue an installation id does not stop later ones from registering',
      () async {
        const installationId = 'installation-id';
        await unit.maybeRegisterOnceGranted(Future.value(true));

        fixture
          ..failIssuingAnInstallationId(Exception('no installation id'))
          ..issueInstallationId(installationId);
        await pumpEventQueue();

        verify(
          () => fixture.functionsService.registerFirebaseInstallation(
            installationId,
          ),
        );
      },
    );

    test(
      'a server rejection does not stop later installation ids from registering',
      () async {
        const rejectedInstallationId = 'rejected-installation-id';
        const acceptedInstallationId = 'accepted-installation-id';
        when(
          () => fixture.functionsService.registerFirebaseInstallation(
            rejectedInstallationId,
          ),
        ).thenAnswer(
          (_) async => throw Exception('server rejected the installation id'),
        );
        fixture.issueOnNextRegister(rejectedInstallationId);
        await unit.maybeRegisterOnceGranted(Future.value(true));
        await pumpEventQueue();

        fixture.issueInstallationId(acceptedInstallationId);
        await pumpEventQueue();

        verify(
          () => fixture.functionsService.registerFirebaseInstallation(
            acceptedInstallationId,
          ),
        );
      },
    );

    test(
      'a registration waits for a pending stop before registering the device again',
      () async {
        final outcomes = <String>[];
        final unregistrationFinishes = Completer<void>();
        when(() => fixture.firebaseMessaging.unregister()).thenAnswer((
          _,
        ) async {
          await unregistrationFinishes.future;
          outcomes.add('unregistered');
        });
        when(() => fixture.firebaseMessaging.register()).thenAnswer((_) async {
          outcomes.add('registered');
        });

        final stopping = unit.stop();
        await pumpEventQueue();
        final registering = unit.maybeRegisterOnceGranted(Future.value(true));
        await pumpEventQueue();
        unregistrationFinishes.complete();
        await Future.wait([stopping, registering]);

        expect(outcomes, ['unregistered', 'registered']);
      },
    );
  });
}
