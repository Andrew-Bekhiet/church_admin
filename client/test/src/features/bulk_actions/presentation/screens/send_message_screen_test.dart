import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../utils.dart';
import 'send_message_screen_harness.dart';

void main() {
  const markPhone = PhoneContact(id: 'c2', phone: '01000000002');
  const minaPhone = PhoneContact(id: 'c1', phone: '01000000001');
  const johnPhone = PhoneContact(id: 'c4', phone: '01000000004');
  final mark = Person(id: 'p2', name: 'مارك');
  final mina = Person(id: 'p1', name: 'مينا');
  final peterWithoutPhone = Person(id: 'p3', name: 'بيتر');
  final john = Person(id: 'p4', name: 'يوحنا');
  final firstNameToken = MessageTemplate.tokenOf(
    PersonMessageFields.firstName,
  );

  late SendMessageScreenHarness harness;

  setUp(() {
    harness = SendMessageScreenHarness()..install();
    harness.personsDAO.personsWithPhoneContacts = [
      mark.copyWith(contacts: [markPhone]),
      mina.copyWith(contacts: [minaPhone]),
      john.copyWith(contacts: [johnPhone]),
      peterWithoutPhone,
    ];
  });

  tearDown(defaultTearDown);

  Future<void> pumpScreen(
    WidgetTester tester, {
    required Set<Person> persons,
  }) => harness.open(tester, persons: persons);

  Future<void> startAndOpenFirstChat(WidgetTester tester) async {
    await tester.ensureVisible(
      find.byKey(MessageComposeViewKeys.startButton),
    );
    await tester.tap(find.byKey(MessageComposeViewKeys.startButton));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(MessageQueueViewKeys.openChatButton));
    await tester.pumpAndSettle();
  }

  testWidgets(
    'the preview fills the template for the first selected person with a phone',
    (tester) async {
      await pumpScreen(tester, persons: {peterWithoutPhone, mina, mark});

      expect(
        tester.widget<Text>(find.byKey(MessageComposeViewKeys.preview)).data,
        SendMessageScreen.defaultTemplate.renderFor(mina),
      );
    },
  );

  testWidgets('the screen opens with the last message that was sent', (
    tester,
  ) async {
    final lastText = 'اهلا $firstNameToken';
    await harness.userPreferences.setLastWhatsappMessageText(lastText);

    await pumpScreen(tester, persons: {mina, mark});

    expect(
      tester.widget<Text>(find.byKey(MessageComposeViewKeys.preview)).data,
      MessageTemplate(
        text: lastText,
        fields: SendMessageScreen.defaultTemplate.fields,
      ).renderFor(mina),
    );
  });

  test('the message greets a person by their first name only', () {
    const firstName = 'مينا';
    const familyName = 'عادل';
    final message = SendMessageScreen.defaultTemplate.renderFor(
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
      tester.widget<Text>(find.byKey(MessageComposeViewKeys.preview)).data,
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
      () => harness.launcher.launchWhatsappChat(
        PhoneNumberService.I.formatInternational(minaPhone.phone),
        text: MessageTemplate(
          text: editedText,
          fields: SendMessageScreen.defaultTemplate.fields,
        ).renderFor(mina),
      ),
    ).called(1);
  });

  testWidgets('an opened chat cannot be skipped', (tester) async {
    await pumpScreen(tester, persons: {mina, mark, peterWithoutPhone});
    await startAndOpenFirstChat(tester);

    expect(
      tester
          .widget<TextButton>(find.byKey(MessageQueueViewKeys.skipButton))
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
      tester.widget<Text>(find.byKey(MessageQueueViewKeys.currentName)).data,
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
      tester.widget<Text>(find.byKey(MessageQueueViewKeys.currentName)).data,
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
            find.byKey(MessageComposeViewKeys.startButton),
          )
          .onPressed,
      isNull,
    );
  });

  Future<void> openFirstChatThenSkipTheNext(WidgetTester tester) async {
    await startAndOpenFirstChat(tester);
    await tester.tap(find.byKey(MessageQueueViewKeys.nextButton));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(MessageQueueViewKeys.skipButton));
    await tester.pumpAndSettle();
  }

  testWidgets('the summary counts the sent and skipped people', (
    tester,
  ) async {
    const sentCount = 2;
    const skippedCount = 1;
    await pumpScreen(tester, persons: {mina, mark, john});

    await startAndOpenFirstChat(tester);
    await tester.tap(find.byKey(MessageQueueViewKeys.nextButton));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(MessageQueueViewKeys.openChatButton));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(MessageQueueViewKeys.nextButton));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(MessageQueueViewKeys.skipButton));
    await tester.pumpAndSettle();

    expect(
      [
        MessageSummaryViewKeys.sentTitle,
        MessageSummaryViewKeys.skippedTitle,
      ].map(
        (key) => RegExp(
          r'\d+',
        ).firstMatch(tester.widget<Text>(find.byKey(key)).data ?? '')?[0],
      ),
      ['$sentCount', '$skippedCount'],
    );
  });

  testWidgets('the summary lists the people who have no phone', (
    tester,
  ) async {
    await pumpScreen(tester, persons: {mina, mark, peterWithoutPhone});

    await openFirstChatThenSkipTheNext(tester);

    expect(
      find.byKey(
        MessageSummaryViewKeys.withoutPhoneFor(peterWithoutPhone),
      ),
      findsOneWidget,
    );
  });

  testWidgets(
    'tapping a person without a phone in the summary opens that person',
    (tester) async {
      await pumpScreen(tester, persons: {mina, mark, peterWithoutPhone});
      await openFirstChatThenSkipTheNext(tester);

      await tester.tap(
        find.byKey(MessageSummaryViewKeys.withoutPhoneFor(peterWithoutPhone)),
      );
      await tester.pumpAndSettle();

      expect(
        find
            .byKey(
              SendMessageScreenHarnessKeys.pageFor(
                ViewPersonRoute(
                  id: peterWithoutPhone.id,
                  person: peterWithoutPhone,
                ),
              ),
            )
            .hitTestable(),
        findsOneWidget,
      );
    },
  );
}
