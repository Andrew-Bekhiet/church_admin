import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../fakes/fake_logging_service.dart';
import '../../fakes/recording_analytics_provider.dart';

abstract final class TestPages {
  static Route<void> showing(Object? arguments) => MaterialPageRoute<void>(
    settings: RouteSettings(arguments: arguments),
    builder: (_) => const SizedBox(),
  );
}

void main() {
  group('AppRouteScreenObserver', () {
    late RecordingAnalyticsProvider provider;
    late AppRouteScreenObserver observer;

    setUp(() {
      provider = RecordingAnalyticsProvider();
      observer = AppRouteScreenObserver(
        AnalyticsService([provider], FakeLoggingService()),
      );
    });

    test('pushing a screen tracks its path with its own entity id', () async {
      observer.didPush(
        TestPages.showing(const ViewPersonRoute(id: 'person-1')),
        null,
      );
      await pumpEventQueue();

      expect(provider.trackedScreens.single.name, ViewPersonRoute.routePath);
      expect(provider.trackedScreens.single.properties, {
        'person_id': 'person-1',
      });
    });

    test('popping back tracks the screen that is revealed again', () async {
      const family = ViewFamilyRoute(id: 'family-1');

      observer.didPop(
        TestPages.showing(const SettingsRoute()),
        TestPages.showing(family),
      );
      await pumpEventQueue();

      expect(provider.trackedScreens.single.name, ViewFamilyRoute.routePath);
      expect(provider.trackedScreens.single.properties, {
        'family_id': family.id,
      });
    });

    test('closing a dialog does not track the screen below again', () async {
      observer.didPop(
        TestPages.showing(null),
        TestPages.showing(const ViewFamilyRoute(id: 'family-1')),
      );
      await pumpEventQueue();

      expect(provider.trackedScreens, isEmpty);
    });

    test('a route that is not an app screen is not tracked', () async {
      observer.didPush(TestPages.showing(null), null);
      await pumpEventQueue();

      expect(provider.trackedScreens, isEmpty);
    });
  });
}
