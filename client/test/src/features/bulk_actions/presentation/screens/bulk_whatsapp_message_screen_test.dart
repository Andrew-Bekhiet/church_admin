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
  const markPhone = PhoneContact(id: 'c2', phone: '01000000002');
  const minaPhone = PhoneContact(id: 'c1', phone: '01000000001');
  final mark = Person(id: 'p2', name: 'مارك');
  final mina = Person(id: 'p1', name: 'مينا');
  final peterWithoutPhone = Person(id: 'p3', name: 'بيتر');
  final firstNameToken = MessageTemplate.tokenOf(
    WhatsappMessageFields.firstName,
  );

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
          mark.copyWith(contacts: [markPhone]),
          mina.copyWith(contacts: [minaPhone]),
          peterWithoutPhone,
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

  Future<void> pumpScreen(
    WidgetTester tester, {
    required Set<Person> persons,
  }) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemingService.getDefault(
          isDarkOverride: false,
          greatFeastThemeOverride: false,
        ),
        home: BulkWhatsappMessageScreen(persons: persons),
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

  testWidgets(
    'the preview fills the template for the first selected person with a phone',
    (tester) async {
      await pumpScreen(tester, persons: {peterWithoutPhone, mina, mark});

      expect(
        tester
            .widget<Text>(find.byKey(BulkWhatsappComposeViewKeys.preview))
            .data,
        BulkWhatsappMessageScreen.defaultTemplate.renderFor(mina),
      );
    },
  );

  test('the message greets a person by their first name only', () {
    const firstName = 'مينا';
    const familyName = 'عادل';
    final message = BulkWhatsappMessageScreen.defaultTemplate.renderFor(
      Person(id: 'p4', name: ' $firstName $familyName '),
    );

    expect(message, contains(firstName));
    expect(message, isNot(contains(familyName)));
  });

  testWidgets('the preview follows edits to the template', (tester) async {
    await pumpScreen(tester, persons: {mina, mark});

    await tester.enterText(
      find.byKey(MessageTemplateFieldKeys.textField),
      'اهلا $firstNameToken',
    );
    await tester.pumpAndSettle();

    expect(
      tester.widget<Text>(find.byKey(BulkWhatsappComposeViewKeys.preview)).data,
      'اهلا ${mina.name}',
    );
  });

  testWidgets("the edited message is sent to the first person's phone", (
    tester,
  ) async {
    final editedText = 'اهلا $firstNameToken';
    await pumpScreen(tester, persons: {mina, mark});
    await tester.enterText(
      find.byKey(MessageTemplateFieldKeys.textField),
      editedText,
    );
    await tester.pumpAndSettle();

    await startAndOpenFirstChat(tester);

    verify(
      () => launcher.launchWhatsappChat(
        PhoneNumberService.I.formatInternational(minaPhone.phone),
        text: MessageTemplate(
          text: editedText,
          fields: BulkWhatsappMessageScreen.defaultTemplate.fields,
        ).renderFor(mina),
      ),
    ).called(1);
  });

  testWidgets('an opened chat cannot be skipped', (tester) async {
    await pumpScreen(tester, persons: {mina, mark, peterWithoutPhone});
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
    await pumpScreen(tester, persons: {mina, mark, peterWithoutPhone});
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
    await pumpScreen(tester, persons: {mina, mark, peterWithoutPhone});
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
    await pumpScreen(tester, persons: {mina, mark, peterWithoutPhone});

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

  Future<void> openFirstChatThenSkipTheNext(WidgetTester tester) async {
    await startAndOpenFirstChat(tester);
    await tester.tap(find.byKey(BulkWhatsappQueueViewKeys.nextButton));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(BulkWhatsappQueueViewKeys.skipButton));
    await tester.pumpAndSettle();
  }

  testWidgets('the summary counts the opened and skipped chats', (
    tester,
  ) async {
    const openedCount = 1;
    const skippedCount = 1;
    await pumpScreen(tester, persons: {mina, mark});

    await openFirstChatThenSkipTheNext(tester);

    final counts = tester
        .widget<Text>(find.byKey(BulkWhatsappSummaryViewKeys.counts))
        .data;
    expect(
      RegExp(r'\d+').allMatches(counts ?? '').map((match) => match[0]),
      ['$openedCount', '$skippedCount'],
    );
  });

  testWidgets('the summary lists the people who have no phone', (
    tester,
  ) async {
    await pumpScreen(tester, persons: {mina, mark, peterWithoutPhone});

    await openFirstChatThenSkipTheNext(tester);

    expect(
      find.byKey(
        BulkWhatsappSummaryViewKeys.withoutPhoneFor(peterWithoutPhone),
      ),
      findsOneWidget,
    );
  });
}
