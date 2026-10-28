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
    recipients = [
      recipientOf(mark, [markPhone]),
      recipientOf(mina, [minaPhone, minaOtherPhone]),
      recipientOf(peter, []),
    ];
  });

  BulkWhatsappMessageCubit buildCubit() => BulkWhatsappMessageCubit(
    persons: {mina, mark, peter},
    personsDAO: personsDAO,
    launcherService: launcher,
    phoneNumberService: phoneNumbers,
    analyticsService: AnalyticsService([analytics], FakeLoggingService()),
  );

  BulkWhatsappSending sendingTo(int currentIndex, {bool autoAdvance = false}) =>
      BulkWhatsappSending(
        recipients: recipients,
        template: template,
        currentIndex: currentIndex,
        autoAdvance: autoAdvance,
      );

  OpenedWhatsappChat chatWith(Person person, PhoneContact phone) =>
      OpenedWhatsappChat(
        phoneNumbers.formatInternational(phone.phone),
        template.renderFor(person),
      );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'loading lists people with a phone, by name, before people without one',
    build: buildCubit,
    act: (cubit) => cubit.load(),
    verify: (cubit) => expect(
      (cubit.state as BulkWhatsappComposing).recipients.map((r) => r.person.id),
      [mark.id, mina.id, peter.id],
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
      [markPhone, minaPhone, null],
    ),
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
    'starting keeps the auto-advance choice made while composing',
    build: buildCubit,
    seed: () => BulkWhatsappComposing(recipients: recipients),
    act: (cubit) => cubit
      ..setAutoAdvance(isEnabled: true)
      ..start(template),
    verify: (cubit) =>
        expect((cubit.state as BulkWhatsappSending).autoAdvance, isTrue),
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
    'with auto-advance, returning to the app opens the next chat right away',
    build: buildCubit,
    seed: () => sendingTo(0, autoAdvance: true),
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
    seed: () => sendingTo(0, autoAdvance: true),
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
        'is_auto_advance': true,
        'is_stopped': true,
      });
    },
  );
}
