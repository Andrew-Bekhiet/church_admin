import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fakes/fake_launcher_service.dart';
import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/fake_persons_dao.dart';
import '../../../fakes/recording_analytics_provider.dart';

void main() {
  const phoneNumbers = PhoneNumberService();
  final nameField = PersonFields().name;
  final template = MessageTemplate(
    text: 'كل سنة وانت طيب يا {name}',
    fields: [nameField],
  );

  final mina = Person(id: 'p1', name: 'مينا');
  final mark = Person(id: 'p2', name: 'مارك');
  final peter = Person(id: 'p3', name: 'بيتر');

  const minaPhone = PhoneContact(
    id: 'c1',
    phone: '01000000001',
    isMainPhone: true,
  );
  const minaOtherPhone = PhoneContact(id: 'c2', phone: '01000000002');
  const markPhone = PhoneContact(id: 'c3', phone: '01000000003');

  late FakePersonsDAO personsDAO;
  late FakeLauncherService launcher;
  late RecordingAnalyticsProvider analytics;
  late FakeLoggingService logging;

  WhatsappRecipient recipientOf(Person person, List<PhoneContact> contacts) =>
      WhatsappRecipient.of(person.copyWith(contacts: contacts));

  late List<WhatsappRecipient> recipients;

  setUp(() {
    personsDAO = FakePersonsDAO()
      ..personsWithPhoneContacts = [
        mina.copyWith(contacts: [minaPhone, minaOtherPhone]),
        mark.copyWith(contacts: [markPhone]),
        peter,
      ];
    launcher = FakeLauncherService();
    analytics = RecordingAnalyticsProvider();
    logging = FakeLoggingService();
    recipients = [
      recipientOf(mark, [markPhone]),
      recipientOf(mina, [minaPhone, minaOtherPhone]),
      recipientOf(peter, []),
    ];
  });

  BulkWhatsappMessageCubit buildCubit({Set<Person>? persons}) =>
      BulkWhatsappMessageCubit(
        persons: persons ?? {mina, mark, peter},
        personsDAO: personsDAO,
        launcherService: launcher,
        phoneNumberService: phoneNumbers,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
        loggingService: logging,
      );

  BulkWhatsappSending sendingTo(
    int currentIndex, {
    bool opensNextChatOnReturn = false,
  }) => BulkWhatsappSending(
    recipients: recipients,
    template: template,
    currentIndex: currentIndex,
    opensNextChatOnReturn: opensNextChatOnReturn,
  );

  OpenedWhatsappChat chatWith(Person person, PhoneContact phone) =>
      OpenedWhatsappChat(
        phoneNumbers.formatInternational(phone.phone),
        template.renderFor(person),
      );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'loading keeps the persons in the order they were given',
    build: buildCubit,
    act: (cubit) => cubit.load(),
    verify: (cubit) => expect(
      (cubit.state as BulkWhatsappComposing).recipients.map((r) => r.person.id),
      [mina.id, mark.id, peter.id],
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'loading picks each person a phone from the fetched contacts',
    build: buildCubit,
    act: (cubit) => cubit.load(),
    verify: (cubit) => expect(
      (cubit.state as BulkWhatsappComposing).recipients.map(
        (r) => r.selectedPhone,
      ),
      [minaPhone, markPhone, null],
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    "loading keeps the selected persons' other details",
    build: () => buildCubit(
      persons: {mina.copyWith(birthdate: DateTime(2000, 1, 2))},
    ),
    act: (cubit) => cubit.load(),
    verify: (cubit) {
      final person =
          (cubit.state as BulkWhatsappComposing).recipients.single.person;
      expect(person.birthdate, DateTime(2000, 1, 2));
      expect(person.contacts, [minaPhone, minaOtherPhone]);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'a failed load reports the error',
    build: () {
      personsDAO.phoneContactsError = Exception('offline');

      return buildCubit();
    },
    act: (cubit) => cubit.load(),
    verify: (cubit) => expect(cubit.state, isA<BulkWhatsappLoadFailure>()),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'a failed load is logged',
    build: () {
      personsDAO.phoneContactsError = Exception('offline');

      return buildCubit();
    },
    act: (cubit) => cubit.load(),
    verify: (_) => expect(
      logging.reportedExceptions.map((record) => record.error.toString()),
      ['Exception: offline'],
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'starting shows the first person with a phone',
    build: buildCubit,
    seed: () => BulkWhatsappComposing(recipients: recipients),
    act: (cubit) => cubit.start(template),
    verify: (cubit) => expect(
      (cubit.state as BulkWhatsappSending).current.person.id,
      mark.id,
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'starting passes over people without a phone at the front',
    build: buildCubit,
    seed: () => BulkWhatsappComposing(
      recipients: [
        recipientOf(peter, []),
        recipientOf(mina, [minaPhone]),
      ],
    ),
    act: (cubit) => cubit.start(template),
    verify: (cubit) => expect(
      (cubit.state as BulkWhatsappSending).current.person.id,
      mina.id,
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'starting keeps the open-next-chat-on-return choice made while composing',
    build: buildCubit,
    seed: () => BulkWhatsappComposing(recipients: recipients),
    act: (cubit) => cubit
      ..setOpensNextChatOnReturn(isEnabled: true)
      ..start(template),
    verify: (cubit) => expect(
      (cubit.state as BulkWhatsappSending).opensNextChatOnReturn,
      isTrue,
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'starting with nobody reachable finishes right away',
    build: buildCubit,
    seed: () => BulkWhatsappComposing(recipients: [recipientOf(peter, [])]),
    act: (cubit) => cubit.start(template),
    verify: (cubit) => expect(cubit.state, isA<BulkWhatsappFinished>()),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    "opening the chat opens WhatsApp on the person's phone with their message",
    build: buildCubit,
    seed: () => sendingTo(0),
    act: (cubit) => cubit.openCurrentChat(),
    verify: (_) =>
        expect(launcher.openedWhatsappChats, [chatWith(mark, markPhone)]),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'closing while the phones load ends quietly',
    build: () {
      personsDAO.phoneContactsGate = Completer();

      return buildCubit();
    },
    act: (cubit) async {
      final loading = cubit.load();
      await cubit.close();
      personsDAO.phoneContactsGate?.complete();
      await loading;
    },
    expect: () => [const BulkWhatsappLoading()],
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'closing while a failing phone load is pending ends quietly',
    build: () {
      personsDAO
        ..phoneContactsGate = Completer()
        ..phoneContactsError = Exception('offline');

      return buildCubit();
    },
    act: (cubit) async {
      final loading = cubit.load();
      await cubit.close();
      personsDAO.phoneContactsGate?.complete();
      await loading;
    },
    expect: () => [const BulkWhatsappLoading()],
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'a second tap while WhatsApp is opening does not open the chat again',
    build: () {
      launcher.whatsappGate = Completer();

      return buildCubit();
    },
    seed: () => sendingTo(0),
    act: (cubit) async {
      final opening = cubit.openCurrentChat();
      await cubit.openCurrentChat();
      launcher.whatsappGate?.complete();
      await opening;
    },
    verify: (_) =>
        expect(launcher.openedWhatsappChats, [chatWith(mark, markPhone)]),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'skipping while WhatsApp is opening keeps the next person current',
    build: () {
      launcher.whatsappGate = Completer();
      recipients = [
        recipientOf(mark, [markPhone]),
        recipientOf(peter, [markPhone]),
      ];

      return buildCubit();
    },
    seed: () => sendingTo(0),
    act: (cubit) async {
      final opening = cubit.openCurrentChat();
      cubit.skipCurrent();
      launcher.whatsappGate?.complete();
      await opening;
    },
    verify: (cubit) {
      final state = cubit.state as BulkWhatsappSending;
      expect(state.current.person.id, peter.id);
      expect(state.current.status, WhatsappRecipientStatus.pending);
      expect(state.isAwaitingReturn, isFalse);
      expect(state.recipients.first.status, WhatsappRecipientStatus.skipped);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'choosing another phone while WhatsApp is opening leaves it unopened',
    build: () {
      launcher.whatsappGate = Completer();

      return buildCubit();
    },
    seed: () => sendingTo(1),
    act: (cubit) async {
      final opening = cubit.openCurrentChat();
      cubit.selectPhone(minaOtherPhone);
      launcher.whatsappGate?.complete();
      await opening;
    },
    verify: (cubit) {
      final state = cubit.state as BulkWhatsappSending;
      expect(state.current.status, WhatsappRecipientStatus.pending);
      expect(state.isAwaitingReturn, isFalse);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    "skipping while WhatsApp is opening lets the next person's chat open",
    build: () {
      launcher.whatsappGate = Completer();

      return buildCubit();
    },
    seed: () => sendingTo(0),
    act: (cubit) async {
      final opening = cubit.openCurrentChat();
      cubit.skipCurrent();
      final openingNext = cubit.openCurrentChat();
      launcher.whatsappGate?.complete();
      await opening;
      await openingNext;
    },
    verify: (_) => expect(launcher.openedWhatsappChats, [
      chatWith(mark, markPhone),
      chatWith(mina, minaPhone),
    ]),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'stopping while WhatsApp is opening keeps the run finished',
    build: () {
      launcher.whatsappGate = Completer();

      return buildCubit();
    },
    seed: () => sendingTo(0),
    act: (cubit) async {
      final opening = cubit.openCurrentChat();
      cubit.stop();
      launcher.whatsappGate?.complete();
      await opening;
    },
    verify: (cubit) => expect(cubit.state, isA<BulkWhatsappFinished>()),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'a chat opened by a stopped run does not count in the next run',
    build: () {
      launcher.whatsappGate = Completer();

      return buildCubit(persons: {mark});
    },
    seed: () => sendingTo(0),
    act: (cubit) async {
      final opening = cubit.openCurrentChat();
      cubit.stop();
      await cubit.load();
      cubit.start(template);
      launcher.whatsappGate?.complete();
      await opening;
    },
    verify: (cubit) {
      final state = cubit.state as BulkWhatsappSending;
      expect(state.current.person.id, mark.id);
      expect(state.current.status, WhatsappRecipientStatus.pending);
      expect(state.isAwaitingReturn, isFalse);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'returning to the app after opening a chat moves to the next person',
    build: buildCubit,
    seed: () => sendingTo(0),
    act: (cubit) async {
      await cubit.openCurrentChat();
      await cubit.continueAfterOpenedChat();
    },
    verify: (cubit) => expect(
      (cubit.state as BulkWhatsappSending).current.person.id,
      mina.id,
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'returning to the app without opening a chat stays on the same person',
    build: buildCubit,
    seed: () => sendingTo(0),
    act: (cubit) => cubit.continueAfterOpenedChat(),
    verify: (cubit) => expect(
      (cubit.state as BulkWhatsappSending).current.person.id,
      mark.id,
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'opening the next chat on return opens it right away',
    build: buildCubit,
    seed: () => sendingTo(0, opensNextChatOnReturn: true),
    act: (cubit) async {
      await cubit.openCurrentChat();
      await cubit.continueAfterOpenedChat();
    },
    verify: (_) => expect(launcher.openedWhatsappChats, [
      chatWith(mark, markPhone),
      chatWith(mina, minaPhone),
    ]),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'skipping moves to the next person without opening a chat',
    build: buildCubit,
    seed: () => sendingTo(0),
    act: (cubit) => cubit.skipCurrent(),
    verify: (cubit) {
      expect((cubit.state as BulkWhatsappSending).current.person.id, mina.id);
      expect(launcher.openedWhatsappChats, isEmpty);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'choosing another phone opens WhatsApp on that phone',
    build: buildCubit,
    seed: () => sendingTo(1),
    act: (cubit) async {
      cubit.selectPhone(minaOtherPhone);
      await cubit.openCurrentChat();
    },
    verify: (_) => expect(launcher.openedWhatsappChats, [
      chatWith(mina, minaOtherPhone),
    ]),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'when WhatsApp cannot be opened the person stays current with the failure',
    build: () {
      launcher.canOpenWhatsapp = false;

      return buildCubit();
    },
    seed: () => sendingTo(0),
    act: (cubit) async {
      await cubit.openCurrentChat();
      await cubit.continueAfterOpenedChat();
    },
    verify: (cubit) {
      final state = cubit.state as BulkWhatsappSending;
      expect(state.current.person.id, mark.id);
      expect(state.hasOpenFailed, isTrue);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'a launcher error counts as a failed open',
    build: () {
      launcher.whatsappError = Exception('no app handles whatsapp://');

      return buildCubit();
    },
    seed: () => sendingTo(0),
    act: (cubit) => cubit.openCurrentChat(),
    verify: (cubit) {
      final state = cubit.state as BulkWhatsappSending;
      expect(state.hasOpenFailed, isTrue);
      expect(state.isAwaitingReturn, isFalse);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'after a failed launch the chat can be opened again',
    build: () {
      launcher.whatsappError = Exception('no app handles whatsapp://');

      return buildCubit();
    },
    seed: () => sendingTo(0),
    act: (cubit) async {
      await cubit.openCurrentChat();
      launcher.whatsappError = null;
      await cubit.openCurrentChat();
    },
    verify: (_) =>
        expect(launcher.openedWhatsappChats, [chatWith(mark, markPhone)]),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'after the last reachable person the run finishes with each outcome',
    build: buildCubit,
    seed: () => sendingTo(0),
    act: (cubit) async {
      await cubit.openCurrentChat();
      await cubit.continueAfterOpenedChat();
      cubit.skipCurrent();
    },
    verify: (cubit) => expect(
      (cubit.state as BulkWhatsappFinished).recipients.map((r) => r.status),
      [
        WhatsappRecipientStatus.opened,
        WhatsappRecipientStatus.skipped,
        WhatsappRecipientStatus.pending,
      ],
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'stopping finishes the run early',
    build: buildCubit,
    seed: () => sendingTo(0),
    act: (cubit) => cubit.stop(),
    verify: (cubit) => expect(
      cubit.state,
      isA<BulkWhatsappFinished>().having(
        (s) => s.isStopped,
        'isStopped',
        isTrue,
      ),
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'finishing a run tracks how it went',
    build: buildCubit,
    seed: () => sendingTo(0, opensNextChatOnReturn: true),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit.stop();
    },
    verify: (_) {
      final event = analytics.trackedEventsOf<BulkWhatsappRunFinish>().single;
      expect(event.name, 'bulk_whatsapp:run_finish');
      expect(event.properties, {
        'recipient_count': 3,
        'opened_count': 1,
        'skipped_count': 0,
        'without_phone_count': 1,
        'opens_next_chat_on_return': true,
        'is_stopped': true,
      });
    },
  );
}
