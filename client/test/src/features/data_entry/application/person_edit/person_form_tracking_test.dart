import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'person_form_controller_fixture.dart';

void main() {
  const shubraAddress = Address(
    area: PersonFormControllerFixture.shubra,
    street: PersonFormControllerFixture.nileStreet,
  );
  final storedPerson = Person(id: 'p', name: 'مينا', address: shubraAddress);

  late PersonFormControllerFixture fixture;

  setUp(() => fixture = PersonFormControllerFixture());

  Json trackedSave() =>
      fixture.analytics.trackedEvents.whereType<ObjectSave>().single.properties;

  test('a created person is tracked as a saved creation of them', () async {
    final controller = fixture.controllerFor(
      const CreatePersonInFamily(
        family: Family(id: 'f', name: 'عائلة', address: shubraAddress),
      ),
    );
    controller.identity.name.setValue('مينا');

    await controller.submit();

    expect(
      trackedSave(),
      allOf(
        containsPair('entity_type', AnalyticsEntityType.person.key),
        containsPair('person_id', fixture.persons.createdPeople.single.id),
        containsPair('is_create', true),
        containsPair('outcome', ObjectSaveResult.saved.name),
      ),
    );
  });

  test(
    'a save blocked by the person rules is tracked with the broken rules',
    () async {
      final controller = fixture.controllerFor(const CreateBlankPerson());
      controller.identity.name.setValue('مينا');

      await controller.submit();

      expect(
        trackedSave(),
        allOf(
          containsPair('outcome', ObjectSaveResult.invalid.name),
          containsPair('rule_violations', [
            PersonRuleViolationKind.nothingPlacesThePerson.name,
          ]),
        ),
      );
    },
  );

  test('a save before the memberships load is tracked as waiting', () async {
    final controller = fixture.controllerOfUpdate(storedPerson);

    await controller.submit();

    expect(
      trackedSave(),
      containsPair('outcome', ObjectSaveResult.membershipsNotLoadedYet.name),
    );
  });

  test('deleting a stored person is tracked as a successful delete', () async {
    final controller = await fixture.controllerOfLoadedUpdate(storedPerson);

    await controller.deletePerson();

    expect(
      fixture.analytics.trackedEvents
          .whereType<ObjectDelete>()
          .single
          .properties,
      {
        'entity_type': AnalyticsEntityType.person.key,
        'person_id': storedPerson.id,
        'is_success': true,
      },
    );
  });
}
