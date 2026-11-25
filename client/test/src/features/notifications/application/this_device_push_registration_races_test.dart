import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_logging_service.dart';
import '../support/push_registration_fixture.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('ThisDevicePushRegistration stop and registration races', () {
    const hasuraUserId = 'hasura-user-id';
    const stopTimeLimit = ThisDevicePushRegistration.stopTimeLimit;
    final pastTheStopTimeLimit = stopTimeLimit + const Duration(seconds: 1);

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
      'a stop that never finishes stops holding back the next registration',
      () {
        fakeAsync((async) {
          var registered = false;
          when(
            () => fixture.firebaseMessaging.unregister(),
          ).thenAnswer((_) => Completer<void>().future);
          when(() => fixture.firebaseMessaging.register())
              .thenAnswer((_) async {
                registered = true;
              });
          unawaited(unit.stop());
          async.flushMicrotasks();

          unawaited(unit.maybeRegisterOnceGranted(Future.value(true)));
          async.elapse(stopTimeLimit * 2 + const Duration(seconds: 1));

          expect(registered, isTrue);
        });
      },
    );

    test(
      'a stop that outlives its time limit never unregisters once a newer registration has started',
      () {
        fakeAsync((async) {
          final outcomes = <String>[];
          final deletionFinishes = Completer<void>();
          fixture
            ..currentUid = hasuraUserId
            ..issueOnNextRegister('installation-id');
          unawaited(unit.maybeRegisterOnceGranted(Future.value(true)));
          async.flushMicrotasks();
          fixture.whenDeletingARow().thenAnswer((_) => deletionFinishes.future);
          fixture.recordFirebaseOutcomesIn(outcomes);
          unawaited(unit.stop());
          async.elapse(pastTheStopTimeLimit);
          unawaited(unit.maybeRegisterOnceGranted(Future.value(true)));
          async.flushMicrotasks();

          deletionFinishes.complete();
          async.flushMicrotasks();

          expect(outcomes, ['registered']);
        });
      },
    );

    test(
      'a stop overtaken by a second stop never unregisters once a newer registration has started',
      () {
        fakeAsync((async) {
          final outcomes = <String>[];
          final deletionFinishes = Completer<void>();
          fixture
            ..currentUid = hasuraUserId
            ..issueOnNextRegister('installation-id');
          unawaited(unit.maybeRegisterOnceGranted(Future.value(true)));
          async.flushMicrotasks();
          fixture.whenDeletingARow().thenAnswer((_) => deletionFinishes.future);
          fixture.recordFirebaseOutcomesIn(outcomes);
          unawaited(unit.stop());
          async.elapse(pastTheStopTimeLimit);
          unawaited(unit.stop());
          async.flushMicrotasks();
          unawaited(unit.maybeRegisterOnceGranted(Future.value(true)));
          async.flushMicrotasks();

          deletionFinishes.complete();
          async.flushMicrotasks();

          expect(outcomes, ['unregistered', 'registered']);
        });
      },
    );

    test('a stop overtaken by disposing never unregisters afterwards', () {
      fakeAsync((async) {
        final outcomes = <String>[];
        final deletionFinishes = Completer<void>();
        fixture
          ..currentUid = hasuraUserId
          ..issueOnNextRegister('installation-id');
        unawaited(unit.maybeRegisterOnceGranted(Future.value(true)));
        async.flushMicrotasks();
        fixture.whenDeletingARow().thenAnswer((_) => deletionFinishes.future);
        fixture.recordFirebaseOutcomesIn(outcomes);
        unawaited(unit.stop());
        async.elapse(pastTheStopTimeLimit);
        unawaited(unit.dispose());

        deletionFinishes.complete();
        async.flushMicrotasks();

        expect(outcomes, isEmpty);
      });
    });

    test(
      'an unregistration still running at the time limit finishes before the next registration',
      () {
        fakeAsync((async) {
          final outcomes = <String>[];
          final unregistrationFinishes = Completer<void>();
          when(() => fixture.firebaseMessaging.unregister()).thenAnswer((
            _,
          ) async {
            await unregistrationFinishes.future;
            outcomes.add('unregistered');
          });
          when(() => fixture.firebaseMessaging.register()).thenAnswer((
            _,
          ) async {
            outcomes.add('registered');
          });
          unawaited(unit.stop());
          async.elapse(pastTheStopTimeLimit);
          unawaited(unit.maybeRegisterOnceGranted(Future.value(true)));
          async.flushMicrotasks();

          unregistrationFinishes.complete();
          async.flushMicrotasks();

          expect(outcomes, ['unregistered', 'registered']);
        });
      },
    );

    test(
      'a stop that outlives its time limit leaves the newer registration for the next stop to wait on',
      () {
        fakeAsync((async) {
          const firstInstallationId = 'first-installation-id';
          const secondInstallationId = 'second-installation-id';
          final backendOutcomes = <String>[];
          final registrationFinishes = {
            firstInstallationId: Completer<void>(),
            secondInstallationId: Completer<void>(),
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
              backendOutcomes.add(
                'deleted ${invocation.namedArguments[#token]}',
              );
            })
            ..issueOnNextRegister(firstInstallationId);
          unawaited(unit.maybeRegisterOnceGranted(Future.value(true)));
          async.flushMicrotasks();
          unawaited(unit.stop());
          async.elapse(pastTheStopTimeLimit);
          fixture.issueOnNextRegister(secondInstallationId);
          unawaited(unit.maybeRegisterOnceGranted(Future.value(true)));
          async.flushMicrotasks();
          registrationFinishes[firstInstallationId]?.complete();
          async.flushMicrotasks();

          unawaited(unit.stop());
          async.flushMicrotasks();
          registrationFinishes[secondInstallationId]?.complete();
          async.flushMicrotasks();

          expect(backendOutcomes, [
            'registered $firstInstallationId',
            'deleted $firstInstallationId',
            'registered $secondInstallationId',
            'deleted $secondInstallationId',
          ]);
        });
      },
    );

    test(
      'a registration that outlives a timed-out stop reaches the server before the newer registration starts',
      () {
        fakeAsync((async) {
          const stoppedInstallationId = 'stopped-installation-id';
          const newerInstallationId = 'newer-installation-id';
          final serverCalls = <String>[];
          final registrationFinishes = {
            stoppedInstallationId: Completer<void>(),
          };
          fixture
            ..whenRegisteringWithServer().thenAnswer((invocation) async {
              final installationId =
                  invocation.positionalArguments.single as String;
              serverCalls.add('started $installationId');
              await registrationFinishes[installationId]?.future;
              serverCalls.add('registered $installationId');
            })
            ..issueOnNextRegister(stoppedInstallationId);
          unawaited(unit.maybeRegisterOnceGranted(Future.value(true)));
          async.flushMicrotasks();
          unawaited(unit.stop());
          async.elapse(pastTheStopTimeLimit);
          fixture.issueOnNextRegister(newerInstallationId);
          unawaited(unit.maybeRegisterOnceGranted(Future.value(true)));
          async.flushMicrotasks();
          final serverCallsBeforeStoppedRegistrationFinished = [...serverCalls];

          registrationFinishes[stoppedInstallationId]?.complete();
          async.flushMicrotasks();

          expect(serverCallsBeforeStoppedRegistrationFinished, [
            'started $stoppedInstallationId',
          ]);
          expect(serverCalls, [
            'started $stoppedInstallationId',
            'registered $stoppedInstallationId',
            'started $newerInstallationId',
            'registered $newerInstallationId',
          ]);
        });
      },
    );
  });
}
