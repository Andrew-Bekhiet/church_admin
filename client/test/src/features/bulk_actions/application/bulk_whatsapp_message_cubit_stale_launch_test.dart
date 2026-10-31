import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

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

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'a second tap while WhatsApp is opening does not open the chat again',
    build: () => fixture.buildCubit(),
    seed: () =>
        fixture.sendingTo(recipients: fixture.markThenMinaWithTwoPhones()),
    act: (cubit) async {
      final gate = fixture.holdWhatsappLaunches();
      final opening = cubit.openCurrentChat();
      await cubit.openCurrentChat();
      gate.complete(true);
      await opening;
    },
    verify: (_) => fixture.verifyOnlyChatsOpenedInOrder([(mark, markPhone)]),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'skipping while WhatsApp is opening keeps the next person current '
    'even on the same phone',
    build: () => fixture.buildCubit(),
    seed: () {
      const sharedPhone = markPhone;

      return fixture.sendingTo(
        recipients: [
          fixture.recipientOf(mark, [sharedPhone]),
          fixture.recipientOf(peter, [sharedPhone]),
        ],
      );
    },
    act: (cubit) async {
      final gate = fixture.holdWhatsappLaunches();
      final opening = cubit.openCurrentChat();
      cubit.skipCurrent();
      gate.complete(true);
      await opening;
    },
    verify: (cubit) {
      final state = BulkWhatsappMessageCubitFixture.sendingStateOf(cubit);
      expect(state.current.person.id, peter.id);
      expect(state.current.status, WhatsappRecipientStatus.pending);
      expect(state.isAwaitingReturn, isFalse);
      expect(state.recipients.first.status, WhatsappRecipientStatus.skipped);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'choosing another phone while WhatsApp is opening keeps the person pending',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(
      recipients: fixture.markThenMinaWithTwoPhones(),
      currentIndex: 1,
    ),
    act: (cubit) async {
      final gate = fixture.holdWhatsappLaunches();
      final opening = cubit.openCurrentChat();
      cubit.selectPhone(minaOtherPhone);
      gate.complete(true);
      await opening;
    },
    verify: (cubit) {
      expect(
        BulkWhatsappMessageCubitFixture.sendingStateOf(cubit).current.status,
        WhatsappRecipientStatus.pending,
      );
      expect(
        BulkWhatsappMessageCubitFixture.sendingStateOf(cubit).isAwaitingReturn,
        isFalse,
      );
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    "skipping while WhatsApp is opening lets the next person's chat open",
    build: () => fixture.buildCubit(),
    seed: () =>
        fixture.sendingTo(recipients: fixture.markThenMinaWithTwoPhones()),
    act: (cubit) async {
      final gate = fixture.holdWhatsappLaunches();
      final opening = cubit.openCurrentChat();
      cubit.skipCurrent();
      final openingNext = cubit.openCurrentChat();
      gate.complete(true);
      await opening;
      await openingNext;
    },
    verify: (_) => fixture.verifyOnlyChatsOpenedInOrder([
      (mark, markPhone),
      (mina, minaPhone),
    ]),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'stopping while WhatsApp is opening keeps the run finished',
    build: () => fixture.buildCubit(),
    seed: () =>
        fixture.sendingTo(recipients: fixture.markThenMinaWithTwoPhones()),
    act: (cubit) async {
      final gate = fixture.holdWhatsappLaunches();
      final opening = cubit.openCurrentChat();
      cubit.stop();
      gate.complete(true);
      await opening;
    },
    verify: (cubit) => expect(cubit.state, isA<BulkWhatsappFinished>()),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'a chat opened by a stopped run does not count in the next run',
    build: () {
      fixture.personsDAO.personsWithPhoneContacts = [
        mark.copyWith(contacts: [markPhone]),
      ];

      return fixture.buildCubit(persons: {mark});
    },
    seed: () => fixture.sendingTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
      ],
    ),
    act: (cubit) async {
      final gate = fixture.holdWhatsappLaunches();
      final opening = cubit.openCurrentChat();
      cubit.stop();
      await cubit.load();
      cubit.saveTextAndStart(fixture.template);
      gate.complete(true);
      await opening;
    },
    verify: (cubit) {
      final state = BulkWhatsappMessageCubitFixture.sendingStateOf(cubit);
      expect(state.current.person.id, mark.id);
      expect(state.current.status, WhatsappRecipientStatus.pending);
      expect(state.isAwaitingReturn, isFalse);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'closing while WhatsApp is opening ends quietly',
    build: () => fixture.buildCubit(),
    seed: () =>
        fixture.sendingTo(recipients: fixture.markThenMinaWithTwoPhones()),
    act: (cubit) async {
      final gate = fixture.holdWhatsappLaunches();
      final opening = cubit.openCurrentChat();
      await cubit.close();
      gate.complete(true);
      await opening;
    },
    expect: () => <BulkWhatsappMessageState>[],
  );
}
