import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'bulk_whatsapp_message_cubit_fixture.dart';

void main() {
  final mina = BulkWhatsappMessageCubitFixture.mina;
  final mark = BulkWhatsappMessageCubitFixture.mark;
  final peter = BulkWhatsappMessageCubitFixture.peter;
  const minaPhone = BulkWhatsappMessageCubitFixture.minaPhone;
  const minaOtherPhone = BulkWhatsappMessageCubitFixture.minaOtherPhone;
  const markPhone = BulkWhatsappMessageCubitFixture.markPhone;

  late BulkWhatsappMessageCubitFixture fixture;

  setUp(() => fixture = BulkWhatsappMessageCubitFixture());

  List<WhatsappRecipient> markThenMina() => [
    fixture.recipientOf(mark, [markPhone]),
    fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
  ];

  BulkWhatsappSending sendingState(BulkWhatsappMessageCubit cubit) =>
      cubit.state as BulkWhatsappSending;

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'starting passes over people without a phone at the front',
    build: () => fixture.buildCubit(),
    seed: () => BulkWhatsappComposing(
      recipients: [
        fixture.recipientOf(peter, []),
        fixture.recipientOf(mina, [minaPhone]),
      ],
    ),
    act: (cubit) => cubit.start(fixture.template),
    verify: (cubit) => expect(sendingState(cubit).current.person.id, mina.id),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'starting keeps the open-next-chat-on-return choice made while composing',
    build: () => fixture.buildCubit(),
    seed: () => BulkWhatsappComposing(recipients: markThenMina()),
    act: (cubit) => cubit
      ..setOpensNextChatOnReturn(isEnabled: true)
      ..start(fixture.template),
    verify: (cubit) =>
        expect(sendingState(cubit).opensNextChatOnReturn, isTrue),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'starting with nobody reachable on a phone finishes right away',
    build: () => fixture.buildCubit(),
    seed: () =>
        BulkWhatsappComposing(recipients: [fixture.recipientOf(peter, [])]),
    act: (cubit) => cubit.start(fixture.template),
    verify: (cubit) => expect(cubit.state, isA<BulkWhatsappFinished>()),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    "opening the chat opens WhatsApp on the person's phone with their message",
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markThenMina()),
    act: (cubit) => cubit.openCurrentChat(),
    verify: (_) => verify(
      () => fixture.launcher.launchWhatsappChat(
        '+201000000003',
        text: 'كل سنة وانت طيب يا مارك',
      ),
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'returning to the app after opening a chat moves to the next person',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markThenMina()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      await cubit.showNextAndMaybeOpenItsChat();
    },
    verify: (cubit) => expect(sendingState(cubit).current.person.id, mina.id),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'returning to the app twice after one chat moves on only once',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markThenMina()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      await cubit.showNextAndMaybeOpenItsChat();
      await cubit.showNextAndMaybeOpenItsChat();
    },
    verify: (cubit) {
      expect(sendingState(cubit).current.person.id, mina.id);
      expect(
        sendingState(cubit).current.status,
        WhatsappRecipientStatus.pending,
      );
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'returning to the app without opening a chat stays on the same person',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markThenMina()),
    act: (cubit) => cubit.showNextAndMaybeOpenItsChat(),
    verify: (cubit) => expect(sendingState(cubit).current.person.id, mark.id),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'opening the next chat on return opens it right away',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(
      recipients: markThenMina(),
      opensNextChatOnReturn: true,
    ),
    act: (cubit) async {
      await cubit.openCurrentChat();
      await cubit.showNextAndMaybeOpenItsChat();
    },
    verify: (_) => fixture.verifyOnlyChatsOpenedInOrder([
      (mark, markPhone),
      (mina, minaPhone),
    ]),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'turning on opening the next chat mid-run opens it on return',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markThenMina()),
    act: (cubit) async {
      cubit.setOpensNextChatOnReturn(isEnabled: true);
      await cubit.openCurrentChat();
      await cubit.showNextAndMaybeOpenItsChat();
    },
    verify: (_) => fixture.verifyOnlyChatsOpenedInOrder([
      (mark, markPhone),
      (mina, minaPhone),
    ]),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'skipping moves to the next person without opening a chat',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markThenMina()),
    act: (cubit) => cubit.skipCurrent(),
    verify: (cubit) {
      expect(sendingState(cubit).current.person.id, mina.id);
      verifyZeroInteractions(fixture.launcher);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'choosing another phone opens WhatsApp on that phone',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markThenMina(), currentIndex: 1),
    act: (cubit) async {
      cubit.selectPhone(minaOtherPhone);
      await cubit.openCurrentChat();
    },
    verify: (_) =>
        fixture.verifyOnlyChatsOpenedInOrder([(mina, minaOtherPhone)]),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'when WhatsApp cannot be opened the person stays current with the failure',
    build: () {
      fixture.stubWhatsappLaunch(() async => false);

      return fixture.buildCubit();
    },
    seed: () => fixture.sendingTo(recipients: markThenMina()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      await cubit.showNextAndMaybeOpenItsChat();
    },
    verify: (cubit) {
      expect(sendingState(cubit).current.person.id, mark.id);
      expect(sendingState(cubit).hasOpenFailed, isTrue);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'a launcher error counts as a failed open',
    build: () {
      fixture.stubWhatsappLaunchThrowing(
        Exception('no app handles whatsapp://'),
      );

      return fixture.buildCubit();
    },
    seed: () => fixture.sendingTo(recipients: markThenMina()),
    act: (cubit) => cubit.openCurrentChat(),
    verify: (cubit) {
      expect(sendingState(cubit).hasOpenFailed, isTrue);
      expect(sendingState(cubit).isAwaitingReturn, isFalse);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'opening the chat again after a failed launch clears the failure',
    build: () {
      fixture.stubWhatsappLaunchThrowing(
        Exception('no app handles whatsapp://'),
      );

      return fixture.buildCubit();
    },
    seed: () => fixture.sendingTo(recipients: markThenMina()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      fixture.stubWhatsappLaunch(() async => true);
      await cubit.openCurrentChat();
    },
    verify: (cubit) {
      expect(sendingState(cubit).hasOpenFailed, isFalse);
      expect(sendingState(cubit).isAwaitingReturn, isTrue);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    "skipping after a failed open does not carry the failure to the next person",
    build: () {
      fixture.stubWhatsappLaunch(() async => false);

      return fixture.buildCubit();
    },
    seed: () => fixture.sendingTo(recipients: markThenMina()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit.skipCurrent();
    },
    verify: (cubit) {
      expect(sendingState(cubit).current.person.id, mina.id);
      expect(sendingState(cubit).hasOpenFailed, isFalse);
    },
  );
}
