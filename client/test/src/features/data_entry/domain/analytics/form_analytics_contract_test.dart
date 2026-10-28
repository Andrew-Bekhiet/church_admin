import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final person = Person(id: 'person-1', name: 'مينا');
  const service = Service(id: 'service-1', name: 'خدمة');
  const otherService = Service(id: 'service-2', name: 'خدمة أخرى');
  const group = Group(id: 'group-1', name: 'مجموعة');
  const otherGroup = Group(id: 'group-2', name: 'مجموعة أخرى');

  final contracts = <({AnalyticsEvent event, String name, Json properties})>[
    (
      event: FirstInvalidFieldFocus(person, invalidFieldCount: 2),
      name: 'form:first_invalid_field_focus',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'invalid_field_count': 2,
      },
    ),
    (
      event: DiscardPromptShow(service),
      name: 'form:discard_prompt_show',
      properties: {'entity_type': 'service', 'service_id': service.id},
    ),
    (
      event: DiscardPromptAnswer(person, isDiscarded: true),
      name: 'form:discard_prompt_answer',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'is_discarded': true,
      },
    ),
    (
      event: OutOfSightWarningShow(group),
      name: 'form:out_of_sight_warning_show',
      properties: {'entity_type': 'group', 'group_id': group.id},
    ),
    (
      event: OutOfSightWarningAnswer(person, isConfirmed: false),
      name: 'form:out_of_sight_warning_answer',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'is_confirmed': false,
      },
    ),
    (
      event: MembershipServiceSelect(
        PersonMemberships(
          services: {service},
          groups: {group, otherGroup},
        ),
      ),
      name: 'form:membership_service_select',
      properties: {
        'service_count': 1,
        'auto_selected_group_count': 2,
        'service_id': service.id,
      },
    ),
    (
      event: MembershipServiceSelect(
        PersonMemberships(
          services: {service, otherService},
          groups: {group},
        ),
      ),
      name: 'form:membership_service_select',
      properties: {'service_count': 2, 'auto_selected_group_count': 1},
    ),
    (
      event: MembershipServiceSelect(
        const PersonMemberships(services: {}, groups: {}),
      ),
      name: 'form:membership_service_select',
      properties: {'service_count': 0, 'auto_selected_group_count': 0},
    ),
  ];

  for (final (:event, :name, :properties) in contracts) {
    test('$name sends $properties', () {
      expect(event.name, name);
      expect(event.properties, properties);
    });
  }
}
