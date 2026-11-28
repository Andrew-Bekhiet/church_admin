import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'message_run_cubit_fixture.dart';

void main() {
  final mina = MessageRunCubitFixture.mina;
  final mark = MessageRunCubitFixture.mark;
  const minaPhone = MessageRunCubitFixture.minaPhone;
  const markPhone = MessageRunCubitFixture.markPhone;
  final nameField = PersonFields().name;

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
      opensNextChatOnReturn: false,
    ),
    act: (cubit) => cubit.saveTextAndStart(
      MessageTemplate(
        text: 'اهلا ${MessageTemplate.tokenOf(nameField)}',
        fields: [nameField],
      ),
    ),
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(
        cubit,
      ).recipients.map((recipient) => recipient.message),
      ['اهلا ${mark.name}', 'اهلا ${mina.name}'],
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    "editing the message leaves the other people's messages as they were",
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone]),
      ],
      opensNextChatOnReturn: false,
    ),
    act: (cubit) => cubit
      ..saveTextAndStart(
        MessageTemplate(
          text: 'اهلا ${MessageTemplate.tokenOf(nameField)}',
          fields: [nameField],
        ),
      )
      ..editCurrentMessageUnlessChatOpened('مساء الخير يا مارك'),
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(
        cubit,
      ).recipients.map((recipient) => recipient.message),
      ['مساء الخير يا مارك', 'اهلا ${mina.name}'],
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'the message of an opened chat cannot be edited',
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone]),
      ],
      opensNextChatOnReturn: false,
    ),
    act: (cubit) async {
      cubit.saveTextAndStart(
        MessageTemplate(
          text: 'اهلا ${MessageTemplate.tokenOf(nameField)}',
          fields: [nameField],
        ),
      );
      await cubit.openCurrentChat();
      cubit.editCurrentMessageUnlessChatOpened('مساء الخير يا مارك');
    },
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).current.message,
      'اهلا ${mark.name}',
    ),
  );
}
