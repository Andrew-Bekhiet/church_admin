import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:spot/spot.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../utils.dart';
import 'home_screen_summary_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<HomeBloc>(),
  MockSpec<ShareService>(),
  MockSpec<PackageInfo>(),
])
void main() {
  late MockHomeBloc homeBloc;
  late MockShareService shareService;

  const mockData = HomeDailyData(
    verse: 'Test Verse',
    sneksar: 'Test Sneksar',
    saying: 'Test Saying',
  );

  setUp(() {
    homeBloc = MockHomeBloc();
    shareService = MockShareService();

    provideDummy<HomeState>(
      HomeState(
        pageController: PageController(),
        pages: const [],
        dailyData: mockData,
      ),
    );

    when(
      homeBloc.state,
    ).thenReturn(
      HomeState(
        dailyData: mockData,
        pageController: PageController(),
        pages: const [],
      ),
    );

    initGlobalProviderContainer([
      homeBlocProvider.overrideWithValue(homeBloc),
      shareServiceProvider.overrideWithValue(shareService),
      packageInfoPluginProvider.overrideWith((_) => MockPackageInfo()),
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]);
  });

  tearDown(defaultTearDown);

  group('HomeModeSelector =>', () {
    testGoldens(
      'displays daily data correctly',
      (tester) => withClock(
        Clock.fixed(DateTime(2025, 11)),
        () async {
          final builder = DeviceBuilder()
            ..overrideDevicesForAllScenarios(devices: [Device.phone])
            ..addScenario(
              widget: Scaffold(
                body: HomeScreenSummary(homeBloc: homeBloc),
              ),
              name: 'Loaded State',
            );

          await tester.pumpDeviceBuilder(
            builder,
            wrapper: materialAppWithThemeAndLocale(),
          );

          spotText(mockData.verse).existsOnce();
          spotText(mockData.sneksar).existsOnce();
          spotText(mockData.saying).existsOnce();

          await screenMatchesGolden(tester, 'home_mode_selector');
        },
      ),
    );

    testWidgets('requests new data on dialog button tap', (tester) async {
      await tester.pumpWidgetBuilder(
        Scaffold(body: HomeScreenSummary(homeBloc: homeBloc)),
        wrapper: materialAppWithThemeAndLocale(),
      );

      await act.tap(spotKey(HomeScreenSummaryKeys.verseButtonKey));
      await tester.pumpAndSettle();

      await act.tap(spotKey(HomeScreenSummaryKeys.newItemButtonKey));

      verify(
        homeBloc.add(const HomeDailyDataGetNew(HomeDailyDataType.verse)),
      ).called(1);
    });

    testWidgets('shares text when share button is tapped', (tester) async {
      await tester.pumpWidgetBuilder(
        Scaffold(body: HomeScreenSummary(homeBloc: homeBloc)),
        wrapper: materialAppWithThemeAndLocale(),
      );

      await act.tap(spotKey(HomeScreenSummaryKeys.verseButtonKey));
      await tester.pumpAndSettle();

      await act.tap(spotKey(HomeScreenSummaryKeys.shareButtonKey));

      verify(shareService.shareText(mockData.verse)).called(1);
    });

    testWidgets('switches to church data mode', (tester) async {
      await tester.pumpWidgetBuilder(
        Scaffold(body: HomeScreenSummary(homeBloc: homeBloc)),
        wrapper: materialAppWithThemeAndLocale(),
      );

      await act.tap(spotKey(HomeScreenSummaryKeys.churchDataButtonKey));

      verify(homeBloc.add(const HomeChangeMode(HomeMode.churchData))).called(1);
    });

    testWidgets('switches to sunday school mode', (tester) async {
      await tester.pumpWidgetBuilder(
        Scaffold(body: HomeScreenSummary(homeBloc: homeBloc)),
        wrapper: materialAppWithThemeAndLocale(),
      );

      await act.tap(spotKey(HomeScreenSummaryKeys.sundaySchoolButtonKey));

      verify(
        homeBloc.add(const HomeChangeMode(HomeMode.sundaySchool)),
      ).called(1);
    });
  });
}
