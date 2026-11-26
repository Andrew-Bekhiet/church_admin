import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'send_message_screen_harness.dart';

void main() {
  const minaPhone = PhoneContact(id: 'c1', phone: '01000000001');
  const markPhone = PhoneContact(id: 'c2', phone: '01000000002');
  final mina = Person(id: 'p1', name: 'مينا');
  final mark = Person(id: 'p2', name: 'مارك');

  late SendMessageScreenHarness harness;

  setUp(() => harness = SendMessageScreenHarness()..install());

  Future<void> tapKey(WidgetTester tester, Key key) async {
    await tester.ensureVisible(find.byKey(key));
    await tester.tap(find.byKey(key));
    await tester.pumpAndSettle();
  }

  Future<void> openChatAndReturn(WidgetTester tester) async {
    await tapKey(tester, MessageQueueViewKeys.openChatButton);
    harness
      ..leaveApp(tester)
      ..returnToApp(tester);
    await tester.pumpAndSettle();
  }

  testWidgets(
    'resuming a stopped run goes on with the first person remaining',
    (
      tester,
    ) async {
      harness.personsDAO.personsWithPhoneContacts = [
        mina.copyWith(contacts: [minaPhone]),
        mark.copyWith(contacts: [markPhone]),
      ];
      await harness.open(tester, persons: {mina, mark});
      await tapKey(tester, MessageComposeViewKeys.startButton);
      await tapKey(tester, MessageQueueViewKeys.skipButton);
      await tapKey(tester, MessageQueueViewKeys.stopButton);

      await tapKey(tester, MessageSummaryViewKeys.resumeButton);

      expect(
        tester.widget<Text>(find.byKey(MessageQueueViewKeys.currentName)).data,
        mark.name,
      );
    },
  );

  testWidgets('a run stopped after its last chat opened offers no resume', (
    tester,
  ) async {
    harness.personsDAO.personsWithPhoneContacts = [
      mina.copyWith(contacts: [minaPhone]),
    ];
    await harness.open(tester, persons: {mina});
    await tapKey(tester, MessageComposeViewKeys.startButton);
    await tapKey(tester, MessageQueueViewKeys.openChatButton);

    await tapKey(tester, MessageQueueViewKeys.stopButton);

    expect(find.byKey(MessageSummaryViewKeys.resumeButton), findsNothing);
  });

  testWidgets('marking a sent person not sent in the summary moves only them', (
    tester,
  ) async {
    harness.personsDAO.personsWithPhoneContacts = [
      mina.copyWith(contacts: [minaPhone]),
      mark.copyWith(contacts: [markPhone]),
    ];
    await harness.open(tester, persons: {mina, mark});
    await tapKey(tester, MessageComposeViewKeys.startButton);
    await openChatAndReturn(tester);
    await openChatAndReturn(tester);

    await tapKey(tester, MessageSummaryViewKeys.markNotSentFor(mina));

    expect(
      [
        find.byKey(MessageSummaryViewKeys.notSentOrOpenFailedFor(mina)),
        find.byKey(MessageSummaryViewKeys.sentFor(mina)),
        find.byKey(MessageSummaryViewKeys.sentFor(mark)),
      ].map((finder) => finder.evaluate().length),
      [1, 0, 1],
    );
  });
}
