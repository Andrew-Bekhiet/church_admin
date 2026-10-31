import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/fake_persons_dao.dart';
import '../../../../fakes/mock_database_service.dart';
import '../../../../fakes/mock_launcher_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';
import '../../../../utils.dart';

void main() {
  final mark = Person(id: 'p2', name: 'مارك');
  final mina = Person(id: 'p1', name: 'مينا');
  final peter = Person(id: 'p3', name: 'بيتر');

  late MockLauncherService launcher;

  setUp(() {
    launcher = MockLauncherService();
    when(
      () => launcher.launchWhatsappChat(any(), text: any(named: 'text')),
    ).thenAnswer((_) async => true);
    final database = MockDatabaseService();
    when(() => database.persons).thenReturn(
      FakePersonsDAO()
        ..personsWithPhoneContacts = [
          mark.copyWith(
            contacts: [const PhoneContact(id: 'c2', phone: '01000000002')],
          ),
          mina.copyWith(
            contacts: [const PhoneContact(id: 'c1', phone: '01000000001')],
          ),
          peter,
        ],
    );

    initGlobalProviderContainer([
      databaseServiceProvider.overrideWithValue(database),
      launcherServiceProvider.overrideWithValue(launcher),
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      analyticsServiceProvider.overrideWithValue(
        AnalyticsService([RecordingAnalyticsProvider()], FakeLoggingService()),
      ),
    ]);
  });

  tearDown(defaultTearDown);

  Future<void> pumpScreen(WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemingService.getDefault(
          isDarkOverride: false,
          greatFeastThemeOverride: false,
        ),
        home: BulkWhatsappMessageScreen(persons: {mina, mark, peter}),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> startAndOpenFirstChat(WidgetTester tester) async {
    await tester.ensureVisible(
      find.byKey(BulkWhatsappComposeViewKeys.startButton),
    );
    await tester.tap(find.byKey(BulkWhatsappComposeViewKeys.startButton));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(BulkWhatsappQueueViewKeys.openChatButton));
    await tester.pumpAndSettle();
  }

  testWidgets('the preview fills the template for the first reachable person', (
    tester,
  ) async {
    await pumpScreen(tester);

    expect(
      tester.widget<Text>(find.byKey(BulkWhatsappComposeViewKeys.preview)).data,
      'كل سنة وانت طيب يا مينا 🎂',
    );
  });

  testWidgets('the preview follows edits to the template', (tester) async {
    await pumpScreen(tester);

    await tester.enterText(
      find.byKey(MessageTemplateFieldKeys.textField),
      'اهلا {name}',
    );
    await tester.pumpAndSettle();

    expect(
      tester.widget<Text>(find.byKey(BulkWhatsappComposeViewKeys.preview)).data,
      'اهلا ${mina.name}',
    );
  });

  testWidgets('an opened chat cannot be skipped', (tester) async {
    await pumpScreen(tester);
    await startAndOpenFirstChat(tester);

    expect(
      tester
          .widget<TextButton>(find.byKey(BulkWhatsappQueueViewKeys.skipButton))
          .onPressed,
      isNull,
    );
  });

  testWidgets('returning to the app after a chat shows the next person', (
    tester,
  ) async {
    await pumpScreen(tester);
    await startAndOpenFirstChat(tester);

    tester.binding
      ..handleAppLifecycleStateChanged(AppLifecycleState.inactive)
      ..handleAppLifecycleStateChanged(AppLifecycleState.hidden)
      ..handleAppLifecycleStateChanged(AppLifecycleState.paused)
      ..handleAppLifecycleStateChanged(AppLifecycleState.hidden)
      ..handleAppLifecycleStateChanged(AppLifecycleState.inactive)
      ..handleAppLifecycleStateChanged(AppLifecycleState.resumed);
    await tester.pumpAndSettle();

    expect(
      tester
          .widget<Text>(find.byKey(BulkWhatsappQueueViewKeys.currentName))
          .data,
      mark.name,
    );
  });

  testWidgets('a dialog over the app does not count as returning from a chat', (
    tester,
  ) async {
    await pumpScreen(tester);
    await startAndOpenFirstChat(tester);

    tester.binding
      ..handleAppLifecycleStateChanged(AppLifecycleState.inactive)
      ..handleAppLifecycleStateChanged(AppLifecycleState.resumed);
    await tester.pumpAndSettle();

    expect(
      tester
          .widget<Text>(find.byKey(BulkWhatsappQueueViewKeys.currentName))
          .data,
      mina.name,
    );
  });

  testWidgets('an empty message cannot be started', (tester) async {
    await pumpScreen(tester);

    await tester.enterText(find.byKey(MessageTemplateFieldKeys.textField), ' ');
    await tester.pumpAndSettle();

    expect(
      tester
          .widget<ButtonStyleButton>(
            find.byKey(BulkWhatsappComposeViewKeys.startButton),
          )
          .onPressed,
      isNull,
    );
  });

  testWidgets('the summary lists the people who have no phone', (
    tester,
  ) async {
    await pumpScreen(tester);
    await startAndOpenFirstChat(tester);
    await tester.tap(find.byKey(BulkWhatsappQueueViewKeys.nextButton));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(BulkWhatsappQueueViewKeys.skipButton));
    await tester.pumpAndSettle();

    expect(
      tester.widget<Text>(find.byKey(BulkWhatsappSummaryViewKeys.counts)).data,
      'تم فتح 1 محادثة وتخطي 1',
    );
    expect(
      find.byKey(BulkWhatsappSummaryViewKeys.withoutPhoneFor(peter)),
      findsOneWidget,
    );
  });
}
