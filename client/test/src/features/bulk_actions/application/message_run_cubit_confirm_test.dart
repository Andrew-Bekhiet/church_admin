import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'message_run_cubit_fixture.dart';

void main() {
  final mina = MessageRunCubitFixture.mina;
  final mark = MessageRunCubitFixture.mark;
  final peter = MessageRunCubitFixture.peter;
  const minaPhone = MessageRunCubitFixture.minaPhone;
  const minaOtherPhone = MessageRunCubitFixture.minaOtherPhone;
  const markPhone = MessageRunCubitFixture.markPhone;

  late MessageRunCubitFixture fixture;

  setUp(() => fixture = MessageRunCubitFixture());

  List<Recipient> markMinaAndPeter() => [
    fixture.recipientOf(mark, [markPhone]),
    fixture.recipientOf(mina, [minaPhone]),
    fixture.recipientOf(peter, [minaOtherPhone]),
  ];

  blocTest<MessageRunCubit, MessageRunState>(
    'returning from a chat asks whether the message to that person was sent',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeter()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit.askIfSentAndShowNextIfChatWasOpened();
    },
    verify: (cubit) {
      final state = MessageRunCubitFixture.sendingStateOf(cubit);
      expect(state.sentToConfirm?.id, mark.id);
      expect(state.current.person.id, mina.id);
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'the next return asks about the person whose chat was opened last',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeter()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit.askIfSentAndShowNextIfChatWasOpened();
      await cubit.openCurrentChat();
      cubit.askIfSentAndShowNextIfChatWasOpened();
    },
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).sentToConfirm?.id,
      mina.id,
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'the question about a person survives skipping the next one',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeter()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit.askIfSentAndShowNextIfChatWasOpened();
      cubit.skipCurrent();
    },
    verify: (cubit) {
      final state = MessageRunCubitFixture.sendingStateOf(cubit);
      expect(state.sentToConfirm?.id, mark.id);
      expect(state.current.person.id, peter.id);
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'answering not sent marks only the person asked about and ends the '
    'question',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeter()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit.askIfSentAndShowNextIfChatWasOpened();
      await cubit.openCurrentChat();
      cubit.askIfSentAndShowNextIfChatWasOpened();
      cubit.markNotSentIfSent(mina);
    },
    verify: (cubit) {
      final state = MessageRunCubitFixture.sendingStateOf(cubit);
      expect(state.recipients.map((recipient) => recipient.status), [
        RecipientStatus.sent,
        RecipientStatus.notSent,
        RecipientStatus.pending,
      ]);
      expect(state.sentToConfirm, isNull);
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'marking a person who was not sent changes nothing',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeter()),
    act: (cubit) {
      cubit
        ..skipCurrent()
        ..markNotSentIfSent(mark);
    },
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).recipients.first.status,
      RecipientStatus.skipped,
    ),
  );
}
