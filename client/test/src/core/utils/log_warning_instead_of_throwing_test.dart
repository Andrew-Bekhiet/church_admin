import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../fakes/fake_logging_service.dart';

class _MockLoggingService extends Mock implements LoggingService {}

class _FailingWarningLoggingService extends FakeLoggingService {
  @override
  Future<void> warning(LogRecord record) async =>
      throw Exception('logging provider failed');
}

class _HangingWarningLoggingService extends FakeLoggingService {
  @override
  Future<void> warning(LogRecord record) => Completer<void>().future;
}

void main() {
  group('logWarningInsteadOfThrowing', () {
    Future<void> failingWork() async => throw Exception('offline');

    setUpAll(() => registerFallbackValue(const LogRecord()));

    test(
      'a failing future completes normally and warns with its error',
      () async {
        final loggingService = _MockLoggingService();
        when(() => loggingService.warning(any())).thenAnswer((_) async {});
        initGlobalProviderContainer([
          loggingServiceProvider.overrideWithValue(loggingService),
        ]);
        addTearDown(resetGlobalProviderContainer);
        final failure = Exception('offline');

        await expectLater(
          Future<void>.error(failure).logWarningInsteadOfThrowing(),
          completes,
        );

        final warned =
            verify(() => loggingService.warning(captureAny())).captured.single
                as LogRecord;
        expect(warned.error, failure);
      },
    );

    test('a timed-out future completes normally once the timeout passes', () {
      fakeAsync((async) {
        initGlobalProviderContainer([
          loggingServiceProvider.overrideWithValue(FakeLoggingService()),
        ]);
        addTearDown(resetGlobalProviderContainer);
        const timeout = Duration(seconds: 5);
        var finished = false;

        unawaited(
          Completer<void>().future
              .timeout(timeout)
              .logWarningInsteadOfThrowing()
              .then((_) => finished = true),
        );
        async.elapse(timeout);

        expect(finished, isTrue);
      });
    });

    test('a failure is contained even when reporting it fails', () async {
      initGlobalProviderContainer([
        loggingServiceProvider.overrideWithValue(
          _FailingWarningLoggingService(),
        ),
      ]);
      addTearDown(resetGlobalProviderContainer);

      await expectLater(failingWork().logWarningInsteadOfThrowing(), completes);
    });

    test('a failure is contained even when reporting it never finishes', () {
      fakeAsync((async) {
        initGlobalProviderContainer([
          loggingServiceProvider.overrideWithValue(
            _HangingWarningLoggingService(),
          ),
        ]);
        addTearDown(resetGlobalProviderContainer);
        var finished = false;

        unawaited(
          failingWork().logWarningInsteadOfThrowing().then(
            (_) => finished = true,
          ),
        );
        async.flushMicrotasks();

        expect(finished, isTrue);
      });
    });
  });
}
