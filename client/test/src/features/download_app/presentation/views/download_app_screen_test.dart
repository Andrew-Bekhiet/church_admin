import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_database_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';

class _MockReleasesDAO extends Mock implements ReleasesDAO {}

class _MockLauncherService extends Mock implements LauncherService {}

void main() {
  final link = AppDownloadLink(
    url: 'https://example.com/app.apk',
    version: '1.0.0',
    expiresAt: DateTime.utc(2026),
  );

  late _MockReleasesDAO releases;
  late _MockLauncherService launcher;
  late RecordingAnalyticsProvider analytics;

  setUpAll(() => registerFallbackValue(Uri()));

  setUp(() {
    releases = _MockReleasesDAO();
    launcher = _MockLauncherService();
    analytics = RecordingAnalyticsProvider();
    when(() => launcher.launchUrl(any())).thenAnswer((_) async => true);

    final database = MockDatabaseService();
    when(() => database.releases).thenReturn(releases);
    final logging = FakeLoggingService();
    initGlobalProviderContainer([
      databaseServiceProvider.overrideWithValue(database),
      launcherServiceProvider.overrideWithValue(launcher),
      loggingServiceProvider.overrideWithValue(logging),
      analyticsServiceProvider.overrideWithValue(
        AnalyticsService([analytics], logging),
      ),
    ]);
  });

  tearDown(resetGlobalProviderContainer);

  Future<void> tapDownloadFor(WidgetTester tester, Key button) async {
    tester.view.physicalSize = const Size(1080, 1920);
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(const MaterialApp(home: DownloadAppScreen()));
    await tester.tap(find.byKey(button));
    await tester.pump();
    await tester.pump();
    await tester.pump();
  }

  testWidgets('tapping download opens the link fetched for the platform', (
    tester,
  ) async {
    when(
      () => releases.appDownloadLink(
        platform: Enum_AppPlatform.IOS,
      ),
    ).thenAnswer((_) async => link);

    await tapDownloadFor(tester, DownloadAppScreenKeys.iosButton);

    verify(() => launcher.launchUrl(Uri.parse(link.url)));
  });

  testWidgets('a fetched link is tracked as a successful fetch', (
    tester,
  ) async {
    when(
      () => releases.appDownloadLink(
        platform: Enum_AppPlatform.ANDROID,
      ),
    ).thenAnswer((_) async => link);

    await tapDownloadFor(tester, DownloadAppScreenKeys.androidButton);

    expect(
      analytics.trackedEventsOf<AppDownloadLinkFetchFinish>().single.isSuccess,
      isTrue,
    );
  });
}
