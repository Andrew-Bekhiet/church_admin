import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'person_form_controller_fixture.dart';

void main() {
  const primary = PersonFormControllerFixture.primary;
  const kindergarten = PersonFormControllerFixture.kindergarten;
  const afternoonGroup = Group(id: 'afternoon', name: 'مجموعة العصر');
  final person = Person(
    id: 'p',
    name: 'مينا',
    address: const Address(
      area: PersonFormControllerFixture.shubra,
      street: PersonFormControllerFixture.nileStreet,
    ),
    services: const [kindergarten],
  );

  late PersonFormControllerFixture fixture;

  setUp(() => fixture = PersonFormControllerFixture());

  group('loading the saved memberships', () {
    test('shows loading until the memberships arrive', () {
      final controller = fixture.controllerOfUpdate(person);

      expect(controller.memberships.loadState.value, isA<MembershipsLoading>());
    });

    test('is already loaded for a new person', () {
      final controller = fixture.controllerFor(const CreateBlankPerson());

      expect(controller.memberships.loadState.value, isA<MembershipsLoaded>());
    });

    test('fills the selection with what was saved', () async {
      final controller = await fixture.controllerOfLoadedUpdate(
        person,
        saved: Person(id: 'p', name: 'مينا', services: const [primary]),
      );

      expect(
        controller.memberships.memberships.fieldValue.services,
        {primary},
      );
    });

    test('hands the saved classes to the loaded state', () async {
      const savedClass = Class(id: 'c', name: 'فصل');
      final controller = await fixture.controllerOfLoadedUpdate(
        person,
        saved: Person(id: 'p', name: 'مينا', classes: const [savedClass]),
      );

      expect(
        controller.memberships.loadState.value,
        isA<MembershipsLoaded>().having(
          (state) => state.classes,
          'classes',
          [savedClass],
        ),
      );
    });

    test('keeps a selection edited before the load finished', () async {
      final controller = fixture.controllerOfUpdate(person);
      controller.memberships.selectServices({primary});

      fixture.persons.respondWithSavedMemberships(
        Person(id: 'p', name: 'مينا', services: const [kindergarten]),
      );
      await pumpEventQueue();

      expect(
        controller.memberships.memberships.fieldValue.services,
        {primary},
      );
    });

    test(
      'still takes the saved memberships as the baseline when skipped',
      () async {
        final controller = fixture.controllerOfUpdate(person);
        controller.memberships.selectServices({primary});

        fixture.persons.respondWithSavedMemberships(
          Person(id: 'p', name: 'مينا', groups: const [afternoonGroup]),
        );
        await pumpEventQueue();

        expect(
          controller.memberships.savedMemberships.groups,
          {afternoonGroup},
        );
      },
    );

    test(
      'falls back to the person memberships when nothing is saved',
      () async {
        final controller = await fixture.controllerOfLoadedUpdate(person);

        expect(
          controller.memberships.memberships.fieldValue.services,
          {kindergarten},
        );
      },
    );

    test('ends in a failed state when loading throws', () async {
      final controller = fixture.controllerOfUpdate(person);

      fixture.persons.savedMembershipsResponse.completeError(
        Exception('offline'),
      );
      await pumpEventQueue();

      expect(
        controller.memberships.loadState.value,
        isA<MembershipsLoadFailed>(),
      );
    });

    test('finishing after the form is disposed raises nothing', () async {
      fixture.controllerOfUpdate(person).dispose();
      fixture.persons.respondWithSavedMemberships(
        Person(id: 'p', name: 'مينا', services: const [primary]),
      );

      await expectLater(pumpEventQueue(), completes);
    });
  });

  group('selecting services', () {
    test('also selects every group of the chosen services', () {
      final controller = fixture.controllerOfUpdate(person);
      final service = primary.copyWith(groups: [afternoonGroup]);

      controller.memberships.selectServices({service});

      expect(controller.memberships.memberships.fieldValue.groups, {
        afternoonGroup.copyWith(service: service),
      });
    });

    test('replaces the previous services', () {
      final controller = fixture.controllerOfUpdate(person);

      controller.memberships.selectServices({primary});

      expect(
        controller.memberships.memberships.fieldValue.services,
        {primary},
      );
    });

    test('offers the chosen groups under their services to the picker', () {
      final controller = fixture.controllerOfUpdate(person);
      final service = primary.copyWith(groups: [afternoonGroup]);
      controller.memberships.selectServices({service});

      final offered = controller.memberships.servicesWithTheirSelectedGroups;

      expect(offered.single.groups, [
        afternoonGroup.copyWith(service: service),
      ]);
    });
  });

  group('removing saved memberships', () {
    test('is refused for a service the user cannot edit', () async {
      final controller = await fixture.controllerOfLoadedUpdate(person);

      controller.memberships.selectServices({primary});
      await controller.validate();

      expect(
        controller.memberships.memberships.value.error,
        PersonEditError.cannotRemoveServicesOrGroups,
      );
    });

    test('is allowed for a service the user can edit', () async {
      fixture.currentUser = const User(uid: 'me', name: 'خادم');
      final editable = kindergarten.copyWith(userCanEdit: true);
      final controller = await fixture.controllerOfLoadedUpdate(
        person.copyWith(services: [editable]),
      );

      controller.memberships.selectServices({primary});
      await controller.validate();

      expect(controller.memberships.memberships.value.error, isNull);
    });
  });
}
