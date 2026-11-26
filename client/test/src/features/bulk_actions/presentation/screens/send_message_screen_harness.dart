import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/fake_box.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/fake_persons_dao.dart';
import '../../../../fakes/mock_auth_bloc.dart';
import '../../../../fakes/mock_database_service.dart';
import '../../../../fakes/mock_launcher_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';

class SendMessageScreenHarness {
  static const Size _phoneSize = Size(720, 1600);
  static const double _phonePixelRatio = 2;

  final MockLauncherService launcher = MockLauncherService();
  final FakePersonsDAO personsDAO = FakePersonsDAO();
  final RecordingAnalyticsProvider analytics = RecordingAnalyticsProvider();
  late final UserPreferencesService userPreferences;

  void install() {
    when(
      () => launcher.launchWhatsappChat(any(), text: any(named: 'text')),
    ).thenAnswer((_) async => true);
    final database = MockDatabaseService();
    when(() => database.persons).thenReturn(personsDAO);

    userPreferences = UserPreferencesService(
      box: FakeSyncKVStore(),
      databaseService: database,
      authBloc: MockAuthBloc(),
    );

    initGlobalProviderContainer([
      databaseServiceProvider.overrideWithValue(database),
      userPreferencesServiceProvider.overrideWithValue(userPreferences),
      launcherServiceProvider.overrideWithValue(launcher),
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      analyticsServiceProvider.overrideWithValue(
        AnalyticsService([analytics], FakeLoggingService()),
      ),
    ]);
  }

  Future<void> open(WidgetTester tester, {required Set<Person> persons}) async {
    tester.view
      ..physicalSize = _phoneSize
      ..devicePixelRatio = _phonePixelRatio;
    addTearDown(tester.view.reset);

    final routerConfig = KaiselRouterConfig<AppRoute>(
      initial: const HomeScreenRoute(),
      builder: (context, route) => switch (route) {
        HomeScreenRoute() => Scaffold(
          body: FilledButton(
            key: SendMessageScreenHarnessKeys.runAction,
            onPressed: () => unawaited(
              const SendWhatsappMessageBulkAction().run(context, persons),
            ),
            child: const Text('run'),
          ),
        ),
        _ => Scaffold(key: SendMessageScreenHarnessKeys.pageFor(route)),
      },
    );
    addTearDown(routerConfig.dispose);

    await tester.pumpWidget(
      MaterialApp.router(
        routerConfig: routerConfig,
        locale: const Locale('ar', 'EG'),
        supportedLocales: const [Locale('ar', 'EG')],
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        theme: ThemingService.getDefault(
          isDarkOverride: false,
          greatFeastThemeOverride: false,
        ),
      ),
    );
    await tester.tap(find.byKey(SendMessageScreenHarnessKeys.runAction));
    await tester.pumpAndSettle();
  }

  void leaveApp(WidgetTester tester) => tester.binding
    ..handleAppLifecycleStateChanged(AppLifecycleState.inactive)
    ..handleAppLifecycleStateChanged(AppLifecycleState.hidden)
    ..handleAppLifecycleStateChanged(AppLifecycleState.paused);

  void returnToApp(WidgetTester tester) => tester.binding
    ..handleAppLifecycleStateChanged(AppLifecycleState.hidden)
    ..handleAppLifecycleStateChanged(AppLifecycleState.inactive)
    ..handleAppLifecycleStateChanged(AppLifecycleState.resumed);
}

abstract final class SendMessageScreenHarnessKeys extends WidgetKeys {
  static const Key runAction = ValueKey((
    SendMessageScreenHarnessKeys,
    #runAction,
  ));

  static Key pageFor(AppRoute route) =>
      ValueKey((SendMessageScreenHarnessKeys, #pageFor, route));
}
