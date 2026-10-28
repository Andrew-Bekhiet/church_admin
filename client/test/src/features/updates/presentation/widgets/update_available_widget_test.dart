import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pub_semver/pub_semver.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';

class _NewerVersionFeatureFlagsRepo extends FakeFeatureFlagsRepo {
  @override
  Version get latestVersion => Version(2, 0, 0);
}

void main() {
  late RecordingAnalyticsProvider analytics;

  setUp(() {
    analytics = RecordingAnalyticsProvider();
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(
        _NewerVersionFeatureFlagsRepo(),
      ),
      packageInfoPluginProvider.overrideWith(
        (_) => PackageInfo(
          appName: 'church_admin',
          packageName: 'church_admin',
          version: '1.0.0',
          buildNumber: '1',
        ),
      ),
      analyticsServiceProvider.overrideWithValue(
        AnalyticsService([analytics], FakeLoggingService()),
      ),
    ]);
  });

  tearDown(resetGlobalProviderContainer);

  testWidgets(
    'showing the update banner again for the same version is tracked once',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: UpdateAvailableWidget())),
      );
      await tester.pumpAndSettle();
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: SizedBox())),
      );
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: UpdateAvailableWidget())),
      );
      await tester.pumpAndSettle();

      expect(analytics.trackedEvents, [isA<UpdateBannerShow>()]);
    },
  );
}
