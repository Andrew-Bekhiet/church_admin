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
        fixture.analytics.trackedEventsOf<DeviceContactCreateAttempt>(),
        isEmpty,
      );
    },
  );

  testWidgets('a declined device contact is tracked as an attempt, not as a '
      'creation', (tester) async {
    await fixture.pumpSection(tester);

    await tester.tap(find.byTooltip('اضافة الى جهات الاتصال'));
    await tester.pumpAndSettle();
    await tester.tapAt(Offset.zero);
    await tester.pumpAndSettle();

    expect(fixture.analytics.trackedEvents, [
      isA<DeviceContactCreateAttempt>(),
    ]);
  });

  testWidgets('an inserted device contact is tracked as created without a '
      'photo for a person who has none', (tester) async {
    await fixture.addOwnNumberToDeviceContacts(tester);

    expect(fixture.analytics.trackedEventsOf<DeviceContactCreateAttempt>(), [
      isA<DeviceContactCreateAttempt>()
          .having(
            (event) => event.ownerProperties,
            'ownerProperties',
            AnalyticsEntityType.propertiesOf(fixture.person),
          )
          .having(
            (event) => event.outcome,
            'outcome',
            DeviceContactCreateOutcome.created,
          )
          .having((event) => event.hasPhoto, 'hasPhoto', false),
    ]);
  });

  testWidgets('a device contact whose insert fails is tracked as failed', (
    tester,
  ) async {
    fixture.contacts.insertError = Exception('contacts store unavailable');

    await fixture.addOwnNumberToDeviceContacts(tester);

    expect(fixture.analytics.trackedEventsOf<DeviceContactCreateAttempt>(), [
      isA<DeviceContactCreateAttempt>().having(
        (event) => event.outcome,
        'outcome',
        DeviceContactCreateOutcome.failed,
      ),
    ]);
  });

  testWidgets('dismissing the call prompt finishes the phone call with cancel '
      'and no recording answer', (tester) async {
    await fixture.pumpSection(tester);

    await fixture.tapCall(tester);
    await tester.tapAt(Offset.zero);
    await tester.pumpAndSettle();

    expect(fixture.analytics.trackedEvents, [
      isA<PhoneCallFinish>()
          .having(
            (event) => event.ownerProperties,
            'ownerProperties',
            AnalyticsEntityType.propertiesOf(fixture.person),
          )
          .having((event) => event.isFamilyNumber, 'isFamilyNumber', false)
          .having(
            (event) => event.callPromptChoice,
            'callPromptChoice',
            ContactCallPromptChoice.cancel,
          )
          .having(
            (event) => event.isRecordingAccepted,
            'isRecordingAccepted',
            isNull,
          ),
    ]);
  });

  testWidgets('choosing the dialer only finishes the phone call without '
      'asking to record it', (tester) async {
    await fixture.pumpSection(tester);

    await fixture.tapCall(tester);
    await tester.tap(find.text('نسخ في لوحة الاتصال فقط'));
    await tester.pumpAndSettle();

    expect(fixture.analytics.trackedEvents, [
      isA<PhoneCallFinish>()
          .having(
            (event) => event.callPromptChoice,
            'callPromptChoice',
            ContactCallPromptChoice.dialerOnly,
          )
          .having(
            (event) => event.isRecordingAccepted,
            'isRecordingAccepted',
            isNull,
          ),
    ]);
  });

  testWidgets('recording the call date finishes the phone call as accepted', (
    tester,
  ) async {
    await fixture.pumpSection(tester);

    await fixture.tapCall(tester);
    await tester.tap(find.text('اجراء مكالمة الأن'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('تسجيل'));
    await tester.pumpAndSettle();

    expect(fixture.analytics.trackedEvents, [
      isA<PhoneCallFinish>()
          .having(
            (event) => event.callPromptChoice,
            'callPromptChoice',
            ContactCallPromptChoice.call,
          )
          .having(
            (event) => event.isRecordingAccepted,
            'isRecordingAccepted',
            true,
          ),
    ]);
  });

  testWidgets('skipping the call date finishes the phone call as not '
      'accepted', (tester) async {
    await fixture.pumpSection(tester);

    await fixture.tapCall(tester);
    await tester.tap(find.text('اجراء مكالمة الأن'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('تخطي'));
    await tester.pumpAndSettle();

    expect(fixture.analytics.trackedEvents, [
      isA<PhoneCallFinish>()
          .having(
            (event) => event.callPromptChoice,
            'callPromptChoice',
            ContactCallPromptChoice.call,
          )
          .having(
            (event) => event.isRecordingAccepted,
            'isRecordingAccepted',
            false,
          ),
    ]);
  });

  testWidgets('backing out of the call date prompt finishes the phone call as '
      'not accepted', (tester) async {
    await fixture.pumpSection(tester);

    await fixture.tapCall(tester);
    await tester.tap(find.text('اجراء مكالمة الأن'));
    await tester.pumpAndSettle();
    await tester.tapAt(Offset.zero);
    await tester.pumpAndSettle();

    expect(fixture.analytics.trackedEvents, [
      isA<PhoneCallFinish>()
          .having(
            (event) => event.callPromptChoice,
            'callPromptChoice',
            ContactCallPromptChoice.call,
          )
          .having(
            (event) => event.isRecordingAccepted,
            'isRecordingAccepted',
            false,
          ),
    ]);
  });
}
