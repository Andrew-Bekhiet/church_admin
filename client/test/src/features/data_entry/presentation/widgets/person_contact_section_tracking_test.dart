import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../utils.dart';
import 'person_contact_section_fixture.dart';

void main() {
  late PersonContactSectionFixture fixture;

  setUp(() => fixture = PersonContactSectionFixture());

  tearDown(defaultTearDown);

  testWidgets(
    'a device contact still being inserted is not yet tracked as created',
    (tester) async {
      fixture.contacts.insertGate = Completer<void>();

      await fixture.addOwnNumberToDeviceContacts(tester);

      expect(
        fixture.analytics.trackedEventsOf<DeviceContactCreate>(),
        isEmpty,
      );
    },
  );

  testWidgets('an inserted device contact is tracked as created without a '
      'photo for a person who has none', (tester) async {
    await fixture.addOwnNumberToDeviceContacts(tester);

    expect(
      fixture.analytics.singleTrackedPropertiesOf<DeviceContactCreate>(),
      {
        'entity_type': AnalyticsEntityType.person.key,
        'person_id': fixture.person.id,
        'outcome': DeviceContactCreateOutcome.created.name,
        'has_photo': false,
      },
    );
  });

  testWidgets('a device contact whose insert fails is tracked as failed', (
    tester,
  ) async {
    fixture.contacts.insertError = Exception('contacts store unavailable');

    await fixture.addOwnNumberToDeviceContacts(tester);

    expect(
      fixture.analytics.trackedEventsOf<DeviceContactCreate>().map(
        (event) => event.properties['outcome'],
      ),
      [DeviceContactCreateOutcome.failed.name],
    );
  });
}
