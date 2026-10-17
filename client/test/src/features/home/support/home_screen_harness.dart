import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../fakes/fake_feature_flags_repo.dart';
import '../../../fakes/mock_auth_bloc.dart';
import '../../../fakes/mock_image_url_cache_service.dart';
import 'fake_home_daily_data_repository.dart';
import 'home_database_fixture.dart';
import 'in_memory_user_preferences_service.dart';
import 'recording_share_service.dart';
import 'recording_user_persistence_service.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockLocalAuthService extends Mock implements LocalAuthService {}

class HomeScreenHarness {
  static const Map<String, List<String>> _appFonts = {
    AppTypography.cairo: ['assets/fonts/Cairo-VariableFont.ttf'],
    AppTypography.elMessiri: ['assets/fonts/ElMessiri-VariableFont.ttf'],
    AppTypography.amiri: [
      'assets/fonts/Amiri-Regular.ttf',
      'assets/fonts/Amiri-Bold.ttf',
    ],
  };

  static final DateTime outsideAnySeason = DateTime(2026, 7);

  final InMemoryUserPreferencesService preferences =
      InMemoryUserPreferencesService(lastHomeMode: HomeMode.sundaySchool);
  final RecordingUserPersistenceService persistence =
      RecordingUserPersistenceService();
  final RecordingShareService share = RecordingShareService();
  final List<Object?> advancedSearchExtras = [];

  FakeHomeDailyDataRepository dailyData = FakeHomeDailyDataRepository();
  HomeDatabaseFixture database = HomeDatabaseFixture();
  AuthState authState = const AuthUnauthenticated();
  bool isLocked = false;

  void signInAs(User user) {
    authState = AuthAuthenticated(
      authUser: AuthUser(
        uid: user.uid,
        email: 'user@example.com',
        emailVerified: true,
        idToken: 'token',
      ),
      userData: user,
    );
  }

  Future<void> openDrawer(WidgetTester tester) async {
    final scaffold = find.descendant(
      of: find.byType(HomeScreen),
      matching: find.byType(Scaffold),
    );
    tester.state<ScaffoldState>(scaffold.first).openDrawer();
    await tester.pumpAndSettle();
  }

  Future<void> pump(WidgetTester tester, {bool settle = true}) async {
    await _loadAppFonts();
    tester.view
      ..physicalSize = const Size(720, 1600)
      ..devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    _installProviders();
    final router = GoRouter(
      routes: [
        GoRoute(path: '/', builder: (_, _) => const HomeScreen()),
        GoRoute(
          path: const AdvancedSearchRoute().location,
          builder: (_, state) {
            advancedSearchExtras.add(state.extra);

            return const Scaffold(body: Text('advanced search'));
          },
        ),
      ],
    );
    addTearDown(router.dispose);

    await withClock(
      Clock.fixed(outsideAnySeason),
      () => tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          supportedLocales: const [Locale('ar', 'EG')],
          theme: ThemingService.getDefault(
            isDarkOverride: false,
            greatFeastThemeOverride: false,
          ).copyWith(platform: TargetPlatform.android),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
    if (settle) await tester.pumpAndSettle();
  }

  Future<void> openSummarySection(WidgetTester tester, Key sectionKey) async {
    final text = find.descendant(
      of: find.byKey(sectionKey),
      matching: find.byType(Text),
    );
    await tester.tap(text.last);
    await tester.pumpAndSettle();
  }

  void moveAppToBackground(WidgetTester tester) {
    for (final state in [
      AppLifecycleState.inactive,
      AppLifecycleState.hidden,
      AppLifecycleState.paused,
    ]) {
      tester.binding.handleAppLifecycleStateChanged(state);
    }
  }

  void returnAppToInactive(WidgetTester tester) {
    for (final state in [
      AppLifecycleState.hidden,
      AppLifecycleState.inactive,
    ]) {
      tester.binding.handleAppLifecycleStateChanged(state);
    }
  }

  void resumeApp(WidgetTester tester) {
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
  }

  Future<void> unmount(WidgetTester tester) async {
    await tester.pumpWidget(const SizedBox.shrink());
    resetGlobalProviderContainer();
    await tester.pump();
  }

  Future<void> _loadAppFonts() async {
    for (final font in _appFonts.entries) {
      final loader = FontLoader(font.key);
      for (final asset in font.value) {
        loader.addFont(rootBundle.load(asset));
      }
      await loader.load();
    }
  }

  void _installProviders() {
    final authBloc = MockAuthBloc();
    when(() => authBloc.userDataStream).thenAnswer((_) => const Stream.empty());
    when(() => authBloc.state).thenAnswer((_) => authState);
    when(() => authBloc.stream).thenAnswer((_) => const Stream.empty());
    when(() => authBloc.isSignedIn).thenReturn(true);
    when(
      () => authBloc.isSignedInStream,
    ).thenAnswer((_) => Stream.value(true));

    final localAuthService = _MockLocalAuthService();
    when(() => localAuthService.shouldAuthenticate).thenAnswer((_) => isLocked);
    when(
      () => localAuthService.refreshUIStream,
    ).thenAnswer((_) => const Stream.empty());
    when(localAuthService.canCheckBiometrics).thenAnswer((_) async => false);

    final authRepository = _MockAuthRepository();
    when(
      () => authRepository.userChanges,
    ).thenAnswer((_) => const Stream.empty());

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      authRepositoryProvider.overrideWithValue(authRepository),
      databaseServiceProvider.overrideWithValue(database.service),
      homeDailyDataRepositoryProvider.overrideWithValue(dailyData),
      localAuthServiceProvider.overrideWithValue(localAuthService),
      userPersistenceServiceProvider.overrideWithValue(persistence),
      userPreferencesServiceProvider.overrideWithValue(preferences),
      shareServiceProvider.overrideWithValue(share),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      packageInfoPluginProvider.overrideWith(
        (_) => PackageInfo(
          appName: 'church_admin',
          packageName: 'church_admin',
          version: '1.0.0',
          buildNumber: '1',
        ),
      ),
    ]);
  }
}
