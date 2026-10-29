import 'dart:async';

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
  Version get latestVersion => _latestVersion;
}

class _ChangingFeatureFlagsRepo extends FakeFeatureFlagsRepo {
  final Stream<void> configChanges;
  Version latest = Version(1, 0, 0);
  Uri? releaseNotes;

  _ChangingFeatureFlagsRepo(this.configChanges);

  @override
  Version get latestVersion => latest;

  @override
  Uri? get releaseNotesUrl => releaseNotes;

  @override
  Stream<void> get onConfigChanged => configChanges;
}

const installedVersion = '1.0.0';
final _latestVersion = Version(2, 0, 0);

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
          version: installedVersion,
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

      expect(analytics.trackedEvents, [
        isA<UpdateBannerShow>()
            .having((e) => e.currentVersion, 'currentVersion', installedVersion)
            .having(
              (e) => e.latestVersion,
              'latestVersion',
              _latestVersion.toString(),
            ),
      ]);
    },
  );

  testWidgets(
    'the banner show reports release notes exactly when the button is shown',
    (tester) async {
      final configChanges = StreamController<void>.broadcast();
      addTearDown(configChanges.close);
      final repo = _ChangingFeatureFlagsRepo(configChanges.stream);
      initGlobalProviderContainer([
        featureFlagsRepoProvider.overrideWithValue(repo),
        packageInfoPluginProvider.overrideWith(
          (_) => PackageInfo(
            appName: 'church_admin',
            packageName: 'church_admin',
            version: installedVersion,
            buildNumber: '1',
          ),
        ),
        analyticsServiceProvider.overrideWithValue(
          AnalyticsService([analytics], FakeLoggingService()),
        ),
      ]);
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: UpdateAvailableWidget())),
      );
      await tester.pumpAndSettle();

      repo
        ..latest = _latestVersion
        ..releaseNotes = Uri.parse('https://example.com/release-notes');
      configChanges.add(null);
      await tester.pumpAndSettle();

      expect(
        analytics.trackedEventsOf<UpdateBannerShow>().single,
        isA<UpdateBannerShow>().having(
          (e) => e.hasReleaseNotes,
          'hasReleaseNotes',
          find.text('ما الجديد؟').evaluate().isNotEmpty,
        ),
      );
      expect(find.text('ما الجديد؟'), findsOneWidget);
    },
  );
}
