import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';

void main() {
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);
  const ownMain = PhoneContact(
    id: 'own-main',
    phone: '+201001111111',
    isMainPhone: true,
  );
  const ownWork = PhoneContact(
    id: 'own-work',
    phone: '+201002222222',
    label: 'عمل',
  );

  const roleLabel = RolePhoneContactLabel(father);
  const homeLabel = FreePhoneContactLabel('بيت');

  late RecordingAnalyticsProvider analytics;
  late PersonPhoneContactsFormController form;

  PhoneContactFormController contactOf(PhoneContact phone) =>
      form.contacts.fieldValue.firstWhere((contact) => contact.key == phone.id);

  setUp(() {
    analytics = RecordingAnalyticsProvider();
    form = PersonPhoneContactsFormController(
      own: const [ownMain, ownWork],
      family: const [],
      analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      newKey: () => 'new',
    );
    addTearDown(form.dispose);
  });

  test('adding a role number is tracked by its role, not its number', () {
    form.add(roleLabel);

    expect(
      analytics.trackedEventsOf<ContactsPhoneAdd>().single,
      isA<ContactsPhoneAdd>()
          .having((event) => event.label, 'label', roleLabel)
          .having((event) => event.isAutoMain, 'isAutoMain', false),
    );
  });

  test('relabeling a number is tracked by the label kind, not its text', () {
    form.changeLabel(contactOf(ownWork), homeLabel);

    expect(
      analytics.trackedEventsOf<ContactsPhoneLabelChange>().single,
      isA<ContactsPhoneLabelChange>().having(
        (event) => event.label,
        'label',
        homeLabel,
      ),
    );
  });

  test('picking the label a number already has is not tracked', () {
    form.changeLabel(
      contactOf(ownWork),
      FreePhoneContactLabel(ownWork.label),
    );

    expect(analytics.trackedEvents, isEmpty);
  });

  test('making another number the main one is tracked as becoming main', () {
    form.toggleMain(contactOf(ownWork));

    expect(
      analytics.trackedEventsOf<ContactsMainPhoneToggle>().single,
      isA<ContactsMainPhoneToggle>().having(
        (event) => event.isMain,
        'isMain',
        true,
      ),
    );
  });

  test('removing a number is tracked by its label kind', () {
    form.remove(contactOf(ownWork));

    expect(
      analytics.trackedEventsOf<ContactsPhoneRemove>().single,
      isA<ContactsPhoneRemove>().having(
        (event) => event.label,
        'label',
        FreePhoneContactLabel(ownWork.label),
      ),
    );
  });
}
