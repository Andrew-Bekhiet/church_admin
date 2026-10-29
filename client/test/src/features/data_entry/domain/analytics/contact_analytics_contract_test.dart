import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final person = Person(id: 'person-1', name: 'مينا');
  const family = Family(id: 'family-1', name: 'عائلة');

  final contracts = <({AnalyticsEvent event, String name, Json properties})>[
    (
      event: PhoneCallFinish(
        person,
        callPromptChoice: ContactCallPromptChoice.call,
        isRecordingAccepted: true,
        isFamilyNumber: false,
      ),
      name: 'contact:phone_call_finish',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'is_family_number': false,
        'call_prompt_choice': 'call',
        'is_recording_accepted': true,
      },
    ),
    (
      event: PhoneCallFinish(
        family,
        callPromptChoice: ContactCallPromptChoice.dialerOnly,
        isRecordingAccepted: null,
        isFamilyNumber: true,
      ),
      name: 'contact:phone_call_finish',
      properties: {
        'entity_type': 'family',
        'family_id': family.id,
        'is_family_number': true,
        'call_prompt_choice': 'dialerOnly',
        'is_recording_accepted': null,
      },
    ),
    (
      event: PhoneCallFinish(
        person,
        callPromptChoice: ContactCallPromptChoice.cancel,
        isRecordingAccepted: null,
        isFamilyNumber: false,
      ),
      name: 'contact:phone_call_finish',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'is_family_number': false,
        'call_prompt_choice': 'cancel',
        'is_recording_accepted': null,
      },
    ),
    (
      event: ContactDialerOpen(person, isFamilyNumber: true),
      name: 'contact:dialer_open',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'is_family_number': true,
      },
    ),
    (
      event: WhatsappChatOpen(family, isFamilyNumber: true),
      name: 'contact:whatsapp_open',
      properties: {
        'entity_type': 'family',
        'family_id': family.id,
        'is_family_number': true,
      },
    ),
    (
      event: SmsChatOpen(person, isFamilyNumber: false),
      name: 'contact:sms_open',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'is_family_number': false,
      },
    ),
    (
      event: NumberCopy(person, isFamilyNumber: false),
      name: 'contact:number_copy',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'is_family_number': false,
      },
    ),
    (
      event: DeviceContactCreateAttempt(
        person,
        outcome: DeviceContactCreateOutcome.created,
        hasPhoto: true,
      ),
      name: 'contact:device_contact_create_attempt',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'outcome': 'created',
        'has_photo': true,
      },
    ),
    (
      event: DeviceContactCreateAttempt(
        family,
        outcome: DeviceContactCreateOutcome.permissionDenied,
      ),
      name: 'contact:device_contact_create_attempt',
      properties: {
        'entity_type': 'family',
        'family_id': family.id,
        'outcome': 'permissionDenied',
        'has_photo': false,
      },
    ),
    (
      event: DeviceContactCreateAttempt(
        person,
        outcome: DeviceContactCreateOutcome.cancelled,
      ),
      name: 'contact:device_contact_create_attempt',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'outcome': 'cancelled',
        'has_photo': false,
      },
    ),
    (
      event: DeviceContactCreateAttempt(
        person,
        outcome: DeviceContactCreateOutcome.failed,
      ),
      name: 'contact:device_contact_create_attempt',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'outcome': 'failed',
        'has_photo': false,
      },
    ),
    (
      event: const DeviceContactsImportAttempt(
        DeviceContactsImportOutcome.imported,
        importedNumberCount: 2,
        isNameUsed: true,
      ),
      name: 'contact:device_contacts_import_attempt',
      properties: {
        'outcome': 'imported',
        'imported_number_count': 2,
        'is_name_used': true,
      },
    ),
    (
      event: const DeviceContactsImportAttempt(
        DeviceContactsImportOutcome.permissionDenied,
      ),
      name: 'contact:device_contacts_import_attempt',
      properties: {
        'outcome': 'permissionDenied',
        'imported_number_count': 0,
        'is_name_used': false,
      },
    ),
    (
      event: const DeviceContactsImportAttempt(
        DeviceContactsImportOutcome.pickCancelled,
      ),
      name: 'contact:device_contacts_import_attempt',
      properties: {
        'outcome': 'pickCancelled',
        'imported_number_count': 0,
        'is_name_used': false,
      },
    ),
    (
      event: const DeviceContactsImportAttempt(
        DeviceContactsImportOutcome.dialogCancelled,
      ),
      name: 'contact:device_contacts_import_attempt',
      properties: {
        'outcome': 'dialogCancelled',
        'imported_number_count': 0,
        'is_name_used': false,
      },
    ),
  ];

  for (final (:event, :name, :properties) in contracts) {
    test('$name sends $properties', () {
      expect(event.name, name);
      expect(event.properties, properties);
    });
  }
}
