import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import 'send_message_screen_harness.dart';

void main() {
  const minaPhone = PhoneContact(id: 'c1', phone: '01000000001');
  const markPhone = PhoneContact(id: 'c2', phone: '01000000002');
  const markOtherPhone = PhoneContact(id: 'c3', phone: '01000000003');
  final mina = Person(id: 'p1', name: 'مينا');
  final mark = Person(id: 'p2', name: 'مارك');

  late SendMessageScreenHarness harness;

  setUp(() => harness = SendMessageScreenHarness()..install());

  Future<void> start(WidgetTester tester, {bool opensNextChat = false}) async {
    if (opensNextChat) {
      await tester.ensureVisible(
        find.byKey(OpensNextChatOnReturnCheckboxTileKeys.tile),
      );
      await tester.tap(find.byKey(OpensNextChatOnReturnCheckboxTileKeys.tile));
      await tester.pumpAndSettle();
    }
    await tester.ensureVisible(find.byKey(MessageComposeViewKeys.startButton));
    await tester.tap(find.byKey(MessageComposeViewKeys.startButton));
    await tester.pumpAndSettle();
  }

  Future<void> openChatAndReturn(WidgetTester tester) async {
    await tester.tap(find.byKey(MessageQueueViewKeys.openChatButton));
    await tester.pumpAndSettle();
    harness
      ..leaveApp(tester)
      ..returnToApp(tester);
    await tester.pump();
  }

  String? countdownText(WidgetTester tester) => tester
      .widget<Text>(find.byKey(MessageQueueViewKeys.sentConfirmationCountdown))
      .data;

  void verifyChatNeverOpenedWith(PhoneContact contact) => verifyNever(
    () => harness.launcher.launchWhatsappChat(
      PhoneNumberService.I.formatInternational(contact.phone),
      text: any(named: 'text'),
    ),
  );

  testWidgets('returning from a chat asks whether that person was sent', (
    tester,
  ) async {
    harness.personsDAO.personsWithPhoneContacts = [
      mina.copyWith(contacts: [minaPhone]),
      mark.copyWith(contacts: [markPhone]),
    ];
    await harness.open(tester, persons: {mina, mark});
    await start(tester);

    await openChatAndReturn(tester);

    expect(
      tester
          .widget<Text>(find.byKey(MessageQueueViewKeys.sentConfirmationName))
          .data,
      mina.name,
    );
  });

  testWidgets('answering not sent ends the question', (tester) async {
    harness.personsDAO.personsWithPhoneContacts = [
      mina.copyWith(contacts: [minaPhone]),
      mark.copyWith(contacts: [markPhone]),
    ];
    await harness.open(tester, persons: {mina, mark});
    await start(tester);
    await openChatAndReturn(tester);

    await tester.tap(find.byKey(MessageQueueViewKeys.markNotSent));
    await tester.pumpAndSettle();

    expect(find.byKey(MessageQueueViewKeys.sentConfirmation), findsNothing);
  });

  testWidgets('answering not sent stops the countdown', (tester) async {
    harness.personsDAO.personsWithPhoneContacts = [
      mina.copyWith(contacts: [minaPhone]),
      mark.copyWith(contacts: [markPhone]),
    ];
    await harness.open(tester, persons: {mina, mark});
    await start(tester, opensNextChat: true);
    await openChatAndReturn(tester);

    await tester.tap(find.byKey(MessageQueueViewKeys.markNotSent));
    await tester.pump(MessageRunCubit.nextChatDelay);

    verifyChatNeverOpenedWith(markPhone);
  });

  testWidgets('the question counts down the seconds to the next chat', (
    tester,
  ) async {
    harness.personsDAO.personsWithPhoneContacts = [
      mina.copyWith(contacts: [minaPhone]),
      mark.copyWith(contacts: [markPhone]),
    ];
    await harness.open(tester, persons: {mina, mark});
    await start(tester, opensNextChat: true);

    await openChatAndReturn(tester);
    final atStart = countdownText(tester);
    await tester.pump(
      MessageRunCubit.nextChatDelay - const Duration(seconds: 2),
    );
    final twoSecondsLeft = countdownText(tester);
    await tester.pump(const Duration(seconds: 1));
    final oneSecondLeft = countdownText(tester);

    expect(
      [atStart, twoSecondsLeft, oneSecondLeft],
      [
        'خلال ${MessageRunCubit.nextChatDelay.inSeconds} ثوانٍ',
        'خلال ثانيتين',
        'خلال ثانية',
      ],
    );
  });

  testWidgets('leaving the app during the countdown keeps the next chat '
      'closed', (tester) async {
    harness.personsDAO.personsWithPhoneContacts = [
      mina.copyWith(contacts: [minaPhone]),
      mark.copyWith(contacts: [markPhone]),
    ];
    await harness.open(tester, persons: {mina, mark});
    await start(tester, opensNextChat: true);
    await openChatAndReturn(tester);

    harness.leaveApp(tester);
    await tester.pump(MessageRunCubit.nextChatDelay);

    verifyChatNeverOpenedWith(markPhone);
  });

  testWidgets('tapping the message stops the countdown', (tester) async {
    harness.personsDAO.personsWithPhoneContacts = [
      mina.copyWith(contacts: [minaPhone]),
      mark.copyWith(contacts: [markPhone]),
    ];
    await harness.open(tester, persons: {mina, mark});
    await start(tester, opensNextChat: true);
    await openChatAndReturn(tester);

    await tester.tap(find.byKey(MessageQueueViewKeys.messageFieldFor(mark)));
    await tester.pump(MessageRunCubit.nextChatDelay);

    expect(
      find.byKey(MessageQueueViewKeys.sentConfirmationCountdown),
      findsNothing,
    );
    verifyChatNeverOpenedWith(markPhone);
  });

  testWidgets('long-pressing the message stops the countdown', (tester) async {
    harness.personsDAO.personsWithPhoneContacts = [
      mina.copyWith(contacts: [minaPhone]),
      mark.copyWith(contacts: [markPhone]),
    ];
    await harness.open(tester, persons: {mina, mark});
    await start(tester, opensNextChat: true);
    await openChatAndReturn(tester);

    await tester.longPress(
      find.byKey(MessageQueueViewKeys.messageFieldFor(mark)),
    );
    await tester.pump(MessageRunCubit.nextChatDelay);

    verifyChatNeverOpenedWith(markPhone);
  });

  testWidgets('opening the number picker stops the countdown', (tester) async {
    harness.personsDAO.personsWithPhoneContacts = [
      mina.copyWith(contacts: [minaPhone]),
      mark.copyWith(contacts: [markPhone, markOtherPhone]),
    ];
    await harness.open(tester, persons: {mina, mark});
    await start(tester, opensNextChat: true);
    await openChatAndReturn(tester);

    await tester.tap(find.byKey(MessageQueueViewKeys.phonePickerFor(mark)));
    await tester.pump(MessageRunCubit.nextChatDelay);

    verifyChatNeverOpenedWith(markPhone);
  });

  testWidgets('an edited message is the one that opens in the chat', (
    tester,
  ) async {
    const editedMessage = 'مساء الخير يا مينا';
    harness.personsDAO.personsWithPhoneContacts = [
      mina.copyWith(contacts: [minaPhone]),
      mark.copyWith(contacts: [markPhone]),
    ];
    await harness.open(tester, persons: {mina, mark});
    await start(tester);

    await tester.enterText(
      find.byKey(MessageQueueViewKeys.messageFieldFor(mina)),
      editedMessage,
    );
    await tester.tap(find.byKey(MessageQueueViewKeys.openChatButton));
    await tester.pumpAndSettle();

    verify(
      () => harness.launcher.launchWhatsappChat(
        PhoneNumberService.I.formatInternational(minaPhone.phone),
        text: editedMessage,
      ),
    );
  });

  testWidgets('the message of an opened chat is read-only', (tester) async {
    harness.personsDAO.personsWithPhoneContacts = [
      mina.copyWith(contacts: [minaPhone]),
      mark.copyWith(contacts: [markPhone]),
    ];
    await harness.open(tester, persons: {mina, mark});
    await start(tester);

    await tester.tap(find.byKey(MessageQueueViewKeys.openChatButton));
    await tester.pumpAndSettle();

    expect(
      tester.getSemantics(
        find.byKey(MessageQueueViewKeys.messageFieldFor(mina)),
      ),
      isSemantics(isTextField: true, isReadOnly: true),
    );
  });
}
