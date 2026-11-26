import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

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
    'stopping leaves the current person and the ones after them remaining',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeter()),
    act: (cubit) => cubit
      ..skipCurrent()
      ..stop(),
    verify: (cubit) {
      final finished = cubit.state as MessageRunFinished;
      expect(finished.remaining.map((recipient) => recipient.person.id), [
        mina.id,
        peter.id,
      ]);
      expect(finished.isStopped, isTrue);
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'resuming starts with the first person remaining, not one skipped before',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeter()),
    act: (cubit) => cubit
      ..skipCurrent()
      ..stop()
      ..resume(),
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).current.person.id,
      mina.id,
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'a resumed pass passes over the people already sent',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeter()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit
        ..askIfSentShowNextAndMaybeCountDownToItsChatIfChatWasOpened()
        ..stop()
        ..resume();
    },
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).current.person.id,
      mina.id,
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'resuming opens the chat with the message edited before the stop',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeter()),
    act: (cubit) async {
      cubit
        ..editCurrentMessage('مساء الخير يا مارك')
        ..stop()
        ..resume();
      await cubit.openCurrentChat();
    },
    verify: (_) => verify(
      () => fixture.launcher.launchWhatsappChat(
        MessageRunCubitFixture.phoneNumbers.formatInternational(
          markPhone.phone,
        ),
        text: 'مساء الخير يا مارك',
      ),
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'a chat that opens after its pass was stopped does not count in the '
    'resumed pass',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeter()),
    act: (cubit) async {
      final gate = fixture.holdWhatsappLaunches();
      final opening = cubit.openCurrentChat();
      cubit
        ..stop()
        ..resume();
      gate.complete(true);
      await opening;
    },
    verify: (cubit) {
      final state = MessageRunCubitFixture.sendingStateOf(cubit);
      expect(state.current.person.id, mark.id);
      expect(state.current.status, RecipientStatus.pending);
      expect(state.isAwaitingReturn, isFalse);
    },
  );
}
