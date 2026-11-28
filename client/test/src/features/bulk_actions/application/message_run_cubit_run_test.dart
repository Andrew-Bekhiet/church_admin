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

  blocTest<MessageRunCubit, MessageRunState>(
    'starting passes over people without a phone at the front',
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(
      recipients: [
        fixture.recipientOf(peter, []),
        fixture.recipientOf(mina, [minaPhone]),
      ],
      opensNextChatOnReturn: false,
    ),
    act: (cubit) => cubit.saveTextAndStart(fixture.template),
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).current.person.id,
      mina.id,
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'starting keeps the open-next-chat-on-return choice made while composing',
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
      ],
      opensNextChatOnReturn: false,
    ),
    act: (cubit) => cubit
      ..setOpensNextChatOnReturn(isEnabled: true)
      ..saveTextAndStart(fixture.template),
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).opensNextChatOnReturn,
      isTrue,
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'starting with nobody who has a phone ends the pass right away',
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(
      recipients: [fixture.recipientOf(peter, [])],
      opensNextChatOnReturn: false,
    ),
    act: (cubit) => cubit.saveTextAndStart(fixture.template),
    verify: (cubit) => expect(cubit.state, isA<MessageRunPassEnded>()),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    "opening the chat opens WhatsApp on the person's phone with their message",
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
      ],
    ),
    act: (cubit) => cubit.openCurrentChat(),
    verify: (_) => verify(
      () => fixture.launcher.launchWhatsappChat(
        '+201000000003',
        text: fixture.template.renderFor(mark),
      ),
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'returning to the app twice after one chat moves on only once',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
      ],
    ),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit
        ..returnFromChat()
        ..returnFromChat();
    },
    verify: (cubit) {
      expect(
        MessageRunCubitFixture.sendingStateOf(cubit).current.person.id,
        mina.id,
      );
      expect(
        MessageRunCubitFixture.sendingStateOf(cubit).current.status,
        RecipientStatus.pending,
      );
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'returning to the app without opening a chat stays on the same person',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
      ],
    ),
    act: (cubit) => cubit.returnFromChat(),
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).current.person.id,
      mark.id,
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'skipping moves to the next person without opening a chat',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
      ],
    ),
    act: (cubit) => cubit.skipCurrent(),
    verify: (cubit) {
      expect(
        MessageRunCubitFixture.sendingStateOf(cubit).current.person.id,
        mina.id,
      );
      verifyZeroInteractions(fixture.launcher);
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'choosing another phone opens WhatsApp on that phone',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
      ],
      currentIndex: 1,
    ),
    act: (cubit) async {
      cubit.selectPhone(minaOtherPhone);
      await cubit.openCurrentChat();
    },
    verify: (_) =>
        fixture.verifyOnlyChatsOpenedInOrder([(mina, minaOtherPhone)]),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'when WhatsApp cannot be opened the person stays current with the failure',
    build: () {
      fixture.stubWhatsappLaunch(() async => false);

      return fixture.buildCubit();
    },
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
      ],
    ),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit.returnFromChat();
    },
    verify: (cubit) {
      expect(
        MessageRunCubitFixture.sendingStateOf(cubit).current.person.id,
        mark.id,
      );
      expect(
        MessageRunCubitFixture.sendingStateOf(cubit).hasCurrentOpenFailed,
        isTrue,
      );
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'a launcher error counts as a failed open',
    build: () {
      fixture.stubWhatsappLaunchThrowing(
        Exception('no app handles whatsapp://'),
      );

      return fixture.buildCubit();
    },
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
      ],
    ),
    act: (cubit) => cubit.openCurrentChat(),
    verify: (cubit) {
      expect(
        MessageRunCubitFixture.sendingStateOf(cubit).hasCurrentOpenFailed,
        isTrue,
      );
      expect(
        MessageRunCubitFixture.sendingStateOf(cubit).isAwaitingReturn,
        isFalse,
      );
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'opening the chat again after a failed launch clears the failure',
    build: () {
      fixture.stubWhatsappLaunchThrowing(
        Exception('no app handles whatsapp://'),
      );

      return fixture.buildCubit();
    },
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
      ],
    ),
    act: (cubit) async {
      await cubit.openCurrentChat();
      fixture.stubWhatsappLaunch(() async => true);
      await cubit.openCurrentChat();
    },
    verify: (cubit) {
      expect(
        MessageRunCubitFixture.sendingStateOf(cubit).hasCurrentOpenFailed,
        isFalse,
      );
      expect(
        MessageRunCubitFixture.sendingStateOf(cubit).isAwaitingReturn,
        isTrue,
      );
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    "skipping after a failed open does not carry the failure to the next person",
    build: () {
      fixture.stubWhatsappLaunch(() async => false);

      return fixture.buildCubit();
    },
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
      ],
    ),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit.skipCurrent();
    },
    verify: (cubit) {
      expect(
        MessageRunCubitFixture.sendingStateOf(cubit).current.person.id,
        mina.id,
      );
      expect(
        MessageRunCubitFixture.sendingStateOf(cubit).hasCurrentOpenFailed,
        isFalse,
      );
    },
  );
}
