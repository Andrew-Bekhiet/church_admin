import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'message_run_cubit_fixture.dart';

void main() {
  final mina = MessageRunCubitFixture.mina;
  final mark = MessageRunCubitFixture.mark;
  const minaPhone = MessageRunCubitFixture.minaPhone;
  const markPhone = MessageRunCubitFixture.markPhone;

  late MessageRunCubitFixture fixture;

  setUp(() => fixture = MessageRunCubitFixture());

  blocTest<MessageRunCubit, MessageRunState>(
    'starting gives each person the message rendered for them',
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone]),
      ],
    ),
    act: (cubit) => cubit.saveTextAndStart(fixture.template),
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(
        cubit,
      ).recipients.map((recipient) => recipient.message),
      [fixture.template.renderFor(mark), fixture.template.renderFor(mina)],
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'an edited message is the one that opens in the chat',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone]),
      ],
    ),
    act: (cubit) async {
      cubit.editCurrentMessageUnlessChatOpened('مساء الخير يا مارك');
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
    "editing the message leaves the other people's messages as they were",
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone]),
      ],
    ),
    act: (cubit) =>
        cubit.editCurrentMessageUnlessChatOpened('مساء الخير يا مارك'),
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(
        cubit,
      ).recipients.map((recipient) => recipient.message),
      ['مساء الخير يا مارك', fixture.template.renderFor(mina)],
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'the message of an opened chat cannot be edited',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone]),
      ],
    ),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit.editCurrentMessageUnlessChatOpened('مساء الخير يا مارك');
    },
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).current.message,
      fixture.template.renderFor(mark),
    ),
  );
}
