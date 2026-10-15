import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'person_form_controller_fixture.dart';

void main() {
  const shubra = PersonFormControllerFixture.shubra;
  const maadi = PersonFormControllerFixture.maadi;
  const nileStreet = PersonFormControllerFixture.nileStreet;
  const primary = Service(
    id: 'primary',
    name: 'ابتدائي',
    userCanEdit: true,
  );
  const kindergarten = Service(id: 'kg', name: 'حضانة');
  const shubraAddress = Address(area: shubra, street: nileStreet);

  late PersonFormControllerFixture fixture;

  setUp(() => fixture = PersonFormControllerFixture());

  group('nothing places the person', () {
    test('is not shown before the first validation', () {
      final controller = fixture.controllerFor(const CreateBlankPerson());

      expect(controller.shownViolations.value, isEmpty);
    });

    test('is shown by the first validation of an unplaced person', () async {
      final controller = fixture.controllerFor(const CreateBlankPerson());

      await controller.validate();

      expect(controller.shownViolations.value, {
        const NothingPlacesThePerson(),
      });
    });

    test('clears live once a service places the person', () async {
      final controller = fixture.controllerFor(const CreateBlankPerson());
      await controller.validate();

      controller.memberships.selectServices({kindergarten});

      expect(controller.shownViolations.value, isEmpty);
    });

    test('does not stop a person from being valid once placed', () async {
      final controller = fixture.controllerFor(
        const CreatePersonInFamily(
          family: Family(id: 'f', name: 'عائلة'),
        ),
      );
      controller.identity.name.setValue('مينا');

      expect(await controller.validate(), isTrue);
    });
  });

  group('family or address required', () {
    test('asks a new person for a family or an address', () async {
      final controller = fixture.controllerFor(const CreateBlankPerson());

      await controller.validate();

      expect(
        controller.household.family.value.error,
        PersonEditError.familyOrAddressRequired,
      );
    });

    test('asks an existing person for a family', () async {
      final controller = fixture.controllerOfUpdate(
        Person(id: 'p', name: 'مينا'),
      );

      await controller.validate();

      expect(
        controller.household.family.value.error,
        PersonEditError.familyRequired,
      );
    });

    test('is satisfied by an address alone', () async {
      final controller = fixture.controllerOfUpdate(
        Person(id: 'p', name: 'مينا', address: shubraAddress),
      );

      await controller.validate();

      expect(controller.household.family.value.error, isNull);
    });

    test('is satisfied by a family alone', () async {
      final controller = fixture.controllerOfUpdate(
        Person(
          id: 'p',
          name: 'مينا',
          family: const Family(id: 'f', name: 'عائلة'),
        ),
      );

      await controller.validate();

      expect(controller.household.family.value.error, isNull);
    });
  });

  group('address change blocked by a move', () {
    const family = Family(id: 'family', name: 'عائلة', address: shubraAddress);
    final servedPerson = Person(
      id: 'p',
      name: 'مينا',
      family: family,
      address: shubraAddress,
      services: const [primary],
    );

    PersonFormController controllerOfServantOf(Service service) {
      fixture.currentUser = User(
        uid: 'me',
        name: 'خادم',
        adminOn: [AdminOnData(permissionId: 'grant', service: service)],
      );

      return fixture.controllerOfUpdate(servedPerson);
    }

    test('is not violated by an address edit alone', () async {
      final controller = controllerOfServantOf(primary);

      controller.household.address.area.setValue(maadi);

      expect(controller.ruleViolations, isEmpty);
    });

    test('is not violated by a move alone', () async {
      final controller = controllerOfServantOf(primary);

      controller.memberships.selectServices({kindergarten});

      expect(controller.ruleViolations, isEmpty);
    });

    test('is violated by an address edit together with a move', () async {
      final controller = controllerOfServantOf(primary);

      controller.household.address.area.setValue(maadi);
      controller.memberships.selectServices({kindergarten});

      expect(controller.ruleViolations, {const AddressChangeBlockedByMove()});
    });

    test('is not shown before the first validation', () async {
      final controller = controllerOfServantOf(primary);

      controller.household.address.area.setValue(maadi);
      controller.memberships.selectServices({kindergarten});

      expect(controller.shownViolations.value, isEmpty);
    });

    test(
      'is shown by validation and clears live once the edit is undone',
      () async {
        final controller = controllerOfServantOf(primary);
        controller.household.address.area.setValue(maadi);
        controller.memberships.selectServices({kindergarten});
        await controller.validate();
        expect(controller.shownViolations.value, isNotEmpty);

        controller.household.address.area.setValue(shubra);

        expect(controller.shownViolations.value, isEmpty);
      },
    );
  });

  group('services outside the study year', () {
    final studyYearFiveToSix = StudyYear(order: 5, name: 'الخامسة');
    final upperPrimary = Service(
      id: 'upper',
      name: 'ابتدائي عليا',
      studyYearFrom: StudyYear(order: 1, name: 'الأولى'),
      studyYearTo: StudyYear(order: 3, name: 'الثالثة'),
    );

    PersonFormController controllerOfStudent() => fixture.controllerOfUpdate(
      Person(
        id: 'p',
        name: 'مينا',
        address: shubraAddress,
        workStatus: WorkStatus.student,
        studyYear: studyYearFiveToSix,
      ),
    );

    test('is violated by a service that does not fit the study year', () {
      final controller = controllerOfStudent();

      controller.memberships.selectServices({upperPrimary});

      expect(controller.ruleViolations, {const ServicesOutsideStudyYear()});
    });

    test('follows the study year as it is edited', () {
      final controller = controllerOfStudent();
      controller.memberships.selectServices({upperPrimary});

      controller.work.studyYear.setValue(StudyYear(order: 2, name: 'الثانية'));

      expect(controller.ruleViolations, isEmpty);
    });

    test('makes an otherwise valid form invalid', () async {
      final controller = fixture.controllerOfUpdate(
        Person(
          id: 'p',
          name: 'مينا',
          family: const Family(id: 'f', name: 'عائلة', userCanEdit: true),
          address: shubraAddress,
          workStatus: WorkStatus.student,
          studyYear: StudyYear(order: 5, name: 'الخامسة'),
        ),
      );
      controller.memberships.selectServices({
        Service(
          id: 'upper',
          name: 'عليا',
          studyYearTo: StudyYear(order: 3, name: 'الثالثة'),
        ),
      });

      expect(await controller.validate(), isFalse);
    });

    test('is ignored once the person is no longer a student', () {
      final controller = controllerOfStudent();
      controller.memberships.selectServices({upperPrimary});

      controller.work.workStatus.setValue(WorkStatus.employed);

      expect(controller.ruleViolations, isEmpty);
    });
  });

  group('a service or group to keep the person editable', () {
    final person = Person(
      id: 'p',
      name: 'مينا',
      family: const Family(id: 'f', name: 'عائلة'),
      address: shubraAddress,
    );

    test('is demanded when the user can edit neither family nor address', () {
      final controller = fixture.controllerOfUpdate(person);

      expect(controller.ruleViolations, {
        const NoServiceOrGroupToKeepPersonEditable(),
      });
    });

    test('is satisfied by choosing a service', () {
      final controller = fixture.controllerOfUpdate(person);

      controller.memberships.selectServices({kindergarten});

      expect(controller.ruleViolations, isEmpty);
    });

    test('is not demanded of a user who can write all data', () {
      fixture.currentUser = const User(
        uid: 'me',
        name: 'خادم',
        permissions: PermissionsSet.fromSet({UserPermission.writeAllData}),
      );
      final controller = fixture.controllerOfUpdate(person);

      expect(controller.ruleViolations, isEmpty);
    });

    test('is not demanded of a user who can edit the family', () {
      fixture.currentUser = const User(uid: 'me', name: 'خادم');
      final controller = fixture.controllerOfUpdate(
        person.copyWith(
          family: const Family(id: 'f', name: 'عائلة', userCanEdit: true),
        ),
      );

      expect(controller.ruleViolations, isEmpty);
    });
  });
}
