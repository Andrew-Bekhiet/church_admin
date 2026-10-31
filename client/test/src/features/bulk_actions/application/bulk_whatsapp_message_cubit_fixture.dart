import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_box.dart';
import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/fake_persons_dao.dart';
import '../../../fakes/mock_auth_bloc.dart';
import '../../../fakes/mock_database_service.dart';
import '../../../fakes/mock_launcher_service.dart';
import '../../../fakes/recording_analytics_provider.dart';

class BulkWhatsappMessageCubitFixture {
  static const PhoneNumberService phoneNumbers = PhoneNumberService();
  static const PhoneContact minaPhone = PhoneContact(
    id: 'c1',
    phone: '01000000001',
    isMainPhone: true,
  );
  static const PhoneContact minaOtherPhone = PhoneContact(
    id: 'c2',
    phone: '01000000002',
  );
  static const PhoneContact markPhone = PhoneContact(
    id: 'c3',
    phone: '01000000003',
  );

  static final Person mina = Person(id: 'p1', name: 'مينا');
  static final Person mark = Person(id: 'p2', name: 'مارك');
  static final Person peter = Person(id: 'p3', name: 'بيتر');

  final MessageTemplate template = MessageTemplate(
    text: 'كل سنة وانت طيب يا {name}',
    fields: [PersonFields().name],
  );
  final FakePersonsDAO personsDAO = FakePersonsDAO();
  final MockLauncherService launcher = MockLauncherService();
  final RecordingAnalyticsProvider analytics = RecordingAnalyticsProvider();
  final FakeLoggingService logging = FakeLoggingService();
  final UserPreferencesService userPreferences = UserPreferencesService(
    box: FakeSyncKVStore(),
    databaseService: MockDatabaseService(),
    authBloc: MockAuthBloc(),
  );

  BulkWhatsappMessageCubitFixture() {
    stubWhatsappLaunch(() async => true);
  }

  static BulkWhatsappSending sendingStateOf(BulkWhatsappMessageCubit cubit) =>
      cubit.state as BulkWhatsappSending;

  WhatsappRecipient recipientOf(Person person, List<PhoneContact> contacts) =>
      WhatsappRecipient.of(person.copyWith(contacts: contacts));

  List<WhatsappRecipient> markThenMinaWithTwoPhones() => [
    recipientOf(mark, [markPhone]),
    recipientOf(mina, [minaPhone, minaOtherPhone]),
  ];

  void stubWhatsappLaunch(Future<bool> Function() launch) => when(
    () => launcher.launchWhatsappChat(any(), text: any(named: 'text')),
  ).thenAnswer((_) => launch());

  void stubWhatsappLaunchThrowing(Object error) => when(
    () => launcher.launchWhatsappChat(any(), text: any(named: 'text')),
  ).thenThrow(error);

  Completer<bool> holdWhatsappLaunches() {
    final gate = Completer<bool>();
    stubWhatsappLaunch(() => gate.future);

    return gate;
  }

  BulkWhatsappMessageCubit buildCubit({Set<Person> persons = const {}}) =>
      BulkWhatsappMessageCubit(
        persons: persons,
        personsDAO: personsDAO,
        launcherService: launcher,
        phoneNumberService: phoneNumbers,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
        loggingService: logging,
        userPreferencesService: userPreferences,
      );

  BulkWhatsappSending sendingTo({
    required List<WhatsappRecipient> recipients,
    int currentIndex = 0,
    bool opensNextChatOnReturn = false,
  }) => BulkWhatsappSending(
    recipients: recipients,
    template: template,
    currentIndex: currentIndex,
    opensNextChatOnReturn: opensNextChatOnReturn,
  );

  Future<bool> launchingChatWith(Person person, PhoneContact contact) =>
      launcher.launchWhatsappChat(
        phoneNumbers.formatInternational(contact.phone),
        text: template.renderFor(person),
      );

  void verifyOnlyChatsOpenedInOrder(List<(Person, PhoneContact)> chats) {
    verifyInOrder([
      for (final (person, contact) in chats)
        () => launchingChatWith(person, contact),
    ]);
    verifyNoMoreInteractions(launcher);
  }
}
