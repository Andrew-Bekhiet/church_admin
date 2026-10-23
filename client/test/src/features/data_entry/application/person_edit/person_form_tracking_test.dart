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

  test('a created person is tracked as a saved creation of them', () async {
    final controller = fixture.controllerFor(
      const CreatePersonInFamily(
        family: Family(id: 'f', name: 'عائلة', address: shubraAddress),
      ),
    );
    controller.identity.name.setValue('مينا');

    await controller.submit();

    expect(
      fixture.analytics.singleTrackedPropertiesOf<ObjectSaveAttempt>(),
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
        fixture.analytics.singleTrackedPropertiesOf<ObjectSaveAttempt>(),
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
      fixture.analytics.singleTrackedPropertiesOf<ObjectSaveAttempt>(),
      containsPair('outcome', ObjectSaveResult.membershipsNotLoadedYet.name),
    );
  });

  test('deleting a stored person is tracked as a successful delete', () async {
    final controller = await fixture.controllerOfLoadedUpdate(storedPerson);

    await controller.deletePerson();

    expect(
      fixture.analytics.singleTrackedPropertiesOf<ObjectDelete>(),
      {
        'entity_type': AnalyticsEntityType.person.key,
        'person_id': storedPerson.id,
        'is_success': true,
      },
    );
  });

  test(
    'a failed delete of a stored person is tracked as unsuccessful',
    () async {
      final controller = await fixture.controllerOfLoadedUpdate(storedPerson);
      fixture.persons.deleteError = Exception('offline');

      await controller.deletePerson().catchError((Object _) {});

      expect(fixture.analytics.singleTrackedPropertiesOf<ObjectDelete>(), {
        'entity_type': AnalyticsEntityType.person.key,
        'person_id': storedPerson.id,
        'is_success': false,
      });
    },
  );

  group('a declined move out of sight', () {
    test('is tracked as showing the warning for that person', () async {
      final controller = await fixture.controllerOfServantMovingOutOfSight(
        storedPerson,
      );

      await controller.submit(confirmMoveOutOfSight: () async => false);

      expect(
        fixture.analytics.singleTrackedPropertiesOf<OutOfSightWarningShow>(),
        {
          'entity_type': AnalyticsEntityType.person.key,
          'person_id': storedPerson.id,
        },
      );
    });

    test('is tracked as answering the warning with no', () async {
      final controller = await fixture.controllerOfServantMovingOutOfSight(
        storedPerson,
      );

      await controller.submit(confirmMoveOutOfSight: () async => false);

      expect(
        fixture.analytics.singleTrackedPropertiesOf<OutOfSightWarningAnswer>(),
        containsPair('is_confirmed', false),
      );
    });
  });

  group('choosing a family', () {
    const maadiAddress = Address(area: PersonFormControllerFixture.maadi);

    test('with an address is tracked as filling the address from it', () {
      const maadiFamily = Family(id: 'm', name: 'عائلة', address: maadiAddress);
      final controller = fixture.controllerFor(const CreateBlankPerson());

      controller.household.family.setValue(maadiFamily);

      expect(fixture.analytics.singleTrackedPropertiesOf<FamilyAddressFill>(), {
        'family_id': maadiFamily.id,
      });
    });

    test('without an address is not tracked as filling the address', () {
      final controller = fixture.controllerFor(const CreateBlankPerson());

      controller.household.family.setValue(const Family(id: 'f', name: 'ع'));

      expect(fixture.analytics.trackedEventsOf<FamilyAddressFill>(), isEmpty);
    });

    test('whose address the form already shows is not tracked', () {
      final controller = fixture.controllerFor(
        const CreatePersonInFamily(
          family: Family(id: 'f', name: 'عائلة', address: maadiAddress),
        ),
      );

      controller.household.family.setValue(
        const Family(id: 'm', name: 'عائلة', address: maadiAddress),
      );

      expect(fixture.analytics.trackedEventsOf<FamilyAddressFill>(), isEmpty);
    });
  });
}
