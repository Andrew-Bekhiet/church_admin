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

    expect(fixture.analytics.trackedEventsOf<ObjectSaveAttempt>(), [
      isA<PersonSaveAttempt>()
          .having(
            (event) => event.entityProperties,
            'entityProperties',
            AnalyticsEntityType.propertiesOf(
              fixture.persons.createdPeople.single,
            ),
          )
          .having((event) => event.isCreate, 'isCreate', true)
          .having((event) => event.outcome, 'outcome', isA<PersonSaved>()),
    ]);
  });

  test(
    'a save blocked by the person rules is tracked with the broken rules',
    () async {
      final controller = fixture.controllerFor(const CreateBlankPerson());
      controller.identity.name.setValue('مينا');

      await controller.submit();

      expect(fixture.analytics.trackedEventsOf<ObjectSaveAttempt>(), [
        isA<PersonSaveAttempt>()
            .having((event) => event.outcome, 'outcome', isA<InvalidPerson>())
            .having(
              (event) => event.shownRuleViolations,
              'shownRuleViolations',
              [isA<NothingPlacesThePerson>()],
            ),
      ]);
    },
  );

  test('a save before the memberships load is tracked as waiting', () async {
    final controller = fixture.controllerOfUpdate(storedPerson);

    await controller.submit();

    expect(fixture.analytics.trackedEventsOf<ObjectSaveAttempt>(), [
      isA<PersonSaveAttempt>().having(
        (event) => event.outcome,
        'outcome',
        isA<MembershipsNotLoadedYet>(),
      ),
    ]);
  });

  test('deleting a stored person is tracked as a successful delete', () async {
    final controller = await fixture.controllerOfLoadedUpdate(storedPerson);

    await controller.deletePerson();

    expect(fixture.analytics.trackedEventsOf<ObjectDelete>(), [
      isA<ObjectDelete>()
          .having(
            (event) => event.entityProperties,
            'entityProperties',
            AnalyticsEntityType.propertiesOf(storedPerson),
          )
          .having((event) => event.isSuccess, 'isSuccess', true),
    ]);
  });

  test(
    'a failed delete of a stored person is tracked as unsuccessful',
    () async {
      final controller = await fixture.controllerOfLoadedUpdate(storedPerson);
      fixture.persons.deleteError = Exception('offline');

      await controller.deletePerson().catchError((Object _) {});

      expect(fixture.analytics.trackedEventsOf<ObjectDelete>(), [
        isA<ObjectDelete>()
            .having(
              (event) => event.entityProperties,
              'entityProperties',
              AnalyticsEntityType.propertiesOf(storedPerson),
            )
            .having((event) => event.isSuccess, 'isSuccess', false),
      ]);
    },
  );

  group('a declined move out of sight', () {
    test('is tracked as showing the warning for that person', () async {
      final controller = await fixture.controllerOfServantMovingOutOfSight(
        storedPerson,
      );

      await controller.submit(confirmMoveOutOfSight: () async => false);

      expect(fixture.analytics.trackedEventsOf<OutOfSightWarningShow>(), [
        isA<OutOfSightWarningShow>().having(
          (event) => event.entityProperties,
          'entityProperties',
          AnalyticsEntityType.propertiesOf(storedPerson),
        ),
      ]);
    });

    test('is tracked as answering the warning with no', () async {
      final controller = await fixture.controllerOfServantMovingOutOfSight(
        storedPerson,
      );

      await controller.submit(confirmMoveOutOfSight: () async => false);

      expect(fixture.analytics.trackedEventsOf<OutOfSightWarningAnswer>(), [
        isA<OutOfSightWarningAnswer>().having(
          (event) => event.isConfirmed,
          'isConfirmed',
          false,
        ),
      ]);
    });
  });

  group('choosing a family', () {
    const maadiAddress = Address(area: PersonFormControllerFixture.maadi);

    test('with an address is tracked as filling the address from it', () {
      const maadiFamily = Family(id: 'm', name: 'عائلة', address: maadiAddress);
      final controller = fixture.controllerFor(const CreateBlankPerson());

      controller.household.family.setValue(maadiFamily);

      expect(fixture.analytics.trackedEventsOf<PersonAddressFromFamilyFill>(), [
        isA<PersonAddressFromFamilyFill>().having(
          (event) => event.familyId,
          'familyId',
          maadiFamily.id,
        ),
      ]);
    });

    test('without an address is not tracked as filling the address', () {
      final controller = fixture.controllerFor(const CreateBlankPerson());

      controller.household.family.setValue(const Family(id: 'f', name: 'ع'));

      expect(
        fixture.analytics.trackedEventsOf<PersonAddressFromFamilyFill>(),
        isEmpty,
      );
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

      expect(
        fixture.analytics.trackedEventsOf<PersonAddressFromFamilyFill>(),
        isEmpty,
      );
    });
  });

  test('choosing the services already selected is not tracked again', () {
    final controller = fixture.controllerFor(const CreateBlankPerson());

    controller.memberships
      ..selectServices({PersonFormControllerFixture.kindergarten})
      ..selectServices({PersonFormControllerFixture.kindergarten});

    expect(
      fixture.analytics.trackedEventsOf<MembershipServiceSelect>(),
      hasLength(1),
    );
  });
}
