import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_logging_service.dart';
import '../support/push_registration_fixture.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('ThisDevicePushRegistration stopping', () {
    const hasuraUserId = 'hasura-user-id';

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

    test('stopping deletes the row of this device installation id', () async {
      const installationId = 'installation-id';
      fixture
        ..currentUid = hasuraUserId
        ..issueOnNextRegister(installationId);
      await unit.maybeRegisterOnceGranted(Future.value(true));

      await unit.stop();

      verify(
        () => fixture.fcmTokens.deleteByUidAndToken(
          uid: hasuraUserId,
          token: installationId,
        ),
      );
    });

    test('stopping unregisters this device', () async {
      await unit.maybeRegisterOnceGranted(Future.value(true));

      await unit.stop();

      verify(() => fixture.firebaseMessaging.unregister());
    });

    test('a failing row deletion still unregisters this device', () async {
      fixture
        ..currentUid = hasuraUserId
        ..issueOnNextRegister('installation-id')
        ..whenDeletingARow().thenAnswer(
          (_) async => throw Exception('offline'),
        );
      await unit.maybeRegisterOnceGranted(Future.value(true));

      await expectLater(unit.stop(), completes);

      verify(() => fixture.firebaseMessaging.unregister());
    });

    test('a failing unregistration is contained', () async {
      when(
        () => fixture.firebaseMessaging.unregister(),
      ).thenAnswer((_) async => throw Exception());
      await unit.maybeRegisterOnceGranted(Future.value(true));

      await expectLater(unit.stop(), completes);
    });

    test('no row is deleted when no installation id was ever issued', () async {
      fixture.currentUid = hasuraUserId;

      await unit.stop();

      verifyNever(
        () => fixture.fcmTokens.deleteByUidAndToken(
          uid: any(named: 'uid'),
          token: any(named: 'token'),
        ),
      );
      verify(() => fixture.firebaseMessaging.unregister());
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
      'a registration still pending when stopping finishes before the row is deleted',
      () async {
        const installationId = 'installation-id';
        final backendOutcomes = <String>[];
        final registrationFinishes = Completer<void>();
        fixture
          ..currentUid = hasuraUserId
          ..issueOnNextRegister(installationId)
          ..whenRegisteringWithServer().thenAnswer((_) async {
            await registrationFinishes.future;
            backendOutcomes.add('registered $installationId');
          })
          ..whenDeletingARow().thenAnswer((invocation) async {
            backendOutcomes.add('deleted ${invocation.namedArguments[#token]}');
          });
        await unit.maybeRegisterOnceGranted(Future.value(true));

        final stopping = unit.stop();
        await pumpEventQueue();
        registrationFinishes.complete();
        await stopping;

        expect(backendOutcomes, [
          'registered $installationId',
          'deleted $installationId',
        ]);
      },
    );

    test(
      'the registration in flight when stopping finishes before the row is deleted and the one queued behind it is dropped',
      () async {
        const earlierInstallationId = 'earlier-installation-id';
        const laterInstallationId = 'later-installation-id';
        final backendOutcomes = <String>[];
        final registrationFinishes = {
          earlierInstallationId: Completer<void>(),
          laterInstallationId: Completer<void>(),
        };
        fixture
          ..currentUid = hasuraUserId
          ..whenRegisteringWithServer().thenAnswer((invocation) async {
            final installationId =
                invocation.positionalArguments.single as String;
            await registrationFinishes[installationId]?.future;
            backendOutcomes.add('registered $installationId');
          })
          ..whenDeletingARow().thenAnswer((invocation) async {
            backendOutcomes.add('deleted ${invocation.namedArguments[#token]}');
          });
        await unit.maybeRegisterOnceGranted(Future.value(true));
        fixture
          ..issueInstallationId(earlierInstallationId)
          ..issueInstallationId(laterInstallationId);
        await pumpEventQueue();

        final stopping = unit.stop();
        registrationFinishes[laterInstallationId]?.complete();
        await pumpEventQueue();
        registrationFinishes[earlierInstallationId]?.complete();
        await stopping;

        expect(backendOutcomes, [
          'registered $earlierInstallationId',
          'deleted $laterInstallationId',
        ]);
      },
    );
  });
}
