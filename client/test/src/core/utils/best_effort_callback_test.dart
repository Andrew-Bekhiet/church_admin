import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fakes/fake_logging_service.dart';

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
  group('runBestEffort', () {
    Future<void> failingCallback() async => throw Exception('offline');

    test('a failure is contained even when reporting it fails', () async {
      initGlobalProviderContainer([
        loggingServiceProvider.overrideWithValue(
          _FailingWarningLoggingService(),
        ),
      ]);
      addTearDown(resetGlobalProviderContainer);

      await expectLater(failingCallback.runBestEffort(), completes);
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

        unawaited(failingCallback.runBestEffort().then((_) => finished = true));
        async.flushMicrotasks();

        expect(finished, isTrue);
      });
    });
  });
}
