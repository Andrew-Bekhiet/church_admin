import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fakes/fake_logging_service.dart';
import '../../fakes/recording_analytics_provider.dart';
import '../../fakes/throwing_logging_service.dart';

void main() {
  group('AnalyticsService', () {
    test('a tracked event reaches every provider', () {
      final first = RecordingAnalyticsProvider();
      final second = RecordingAnalyticsProvider();
      final service = AnalyticsService([first, second], FakeLoggingService());

      const event = SignInSubmit(AuthAttemptSucceeded());
      service.track(event);

      expect(first.trackedEvents, [event]);
      expect(second.trackedEvents, [event]);
    });

    test('a failing provider does not stop the others', () async {
      final failing = RecordingAnalyticsProvider()..failure = StateError('x');
      final healthy = RecordingAnalyticsProvider();
      final service = AnalyticsService(
        [failing, healthy],
        FakeLoggingService(),
      );

      const event = SignInSubmit(AuthAttemptSucceeded());
      service.track(event);
      await pumpEventQueue();

      expect(healthy.trackedEvents, [event]);
    });

    test(
      'a failure while reporting a provider failure stays contained',
      () async {
        final failing = RecordingAnalyticsProvider()
          ..failure = StateError('provider');
        final healthy = RecordingAnalyticsProvider();
        final service = AnalyticsService(
          [failing, healthy],
          ThrowingLoggingService(StateError('logging')),
        );
        final uncaughtErrors = <Object>[];

        const event = SignInSubmit(AuthAttemptSucceeded());
        await runZonedGuarded(() async {
          service.track(event);
          await pumpEventQueue();
        }, (error, stackTrace) => uncaughtErrors.add(error));

        expect(uncaughtErrors, isEmpty);
        expect(healthy.trackedEvents, [event]);
      },
    );

    group('while analytics is disabled', () {
      test('drops events, screens and identities', () async {
        final provider = RecordingAnalyticsProvider();
        final service = AnalyticsService(
          [provider],
          FakeLoggingService(),
          isAnalyticsEnabled: () => false,
        );

        service
          ..track(const SignInSubmit(AuthAttemptSucceeded()))
          ..trackScreen('home');
        await service.identify(null);
        await pumpEventQueue();

        expect(provider.trackedEvents, isEmpty);
        expect(provider.trackedScreens, isEmpty);
        expect(provider.identifiedUsers, isEmpty);
      });

      test('resumes tracking once analytics is enabled again', () {
        var isEnabled = false;
        final provider = RecordingAnalyticsProvider();
        final service = AnalyticsService(
          [provider],
          FakeLoggingService(),
          isAnalyticsEnabled: () => isEnabled,
        );

        const event = SignInSubmit(AuthAttemptSucceeded());
        service.track(event);
        isEnabled = true;
        service.track(event);

        expect(provider.trackedEvents, [event]);
      });
    });
  });
}
