import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fakes/fake_logging_service.dart';
import '../../fakes/recording_analytics_provider.dart';

void main() {
  group('AnalyticsService', () {
    test('a tracked event reaches every provider', () {
      final first = RecordingAnalyticsProvider();
      final second = RecordingAnalyticsProvider();
      final service = AnalyticsService([first, second], FakeLoggingService());

      const event = SignInSubmit();
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

      const event = SignInSubmit();
      service.track(event);
      await pumpEventQueue();

      expect(healthy.trackedEvents, [event]);
    });
  });
}
