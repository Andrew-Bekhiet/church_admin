import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';

final class AdvancedSearchAnalyticsFixture {
  final analytics = RecordingAnalyticsProvider();

  int get queryEditCount =>
      analytics.trackedEventsOf<AdvancedSearchQueryEdit>().length;

  AdvancedSearchController createController() => AdvancedSearchController(
    analyticsService: AnalyticsService([analytics], FakeLoggingService()),
  );

  void typeUntilSettled(
    void Function(AdvancedSearchController controller, FakeAsync time) typing,
  ) => fakeAsync((time) {
    final controller = createController();
    typing(controller, time);
    time.elapse(AdvancedSearchController.typingSettleDuration);
    unawaited(controller.dispose());
    time.flushMicrotasks();
  });
}
