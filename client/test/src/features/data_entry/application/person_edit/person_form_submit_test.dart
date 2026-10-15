import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart' show XFile;

import 'person_form_controller_fixture.dart';

void main() {
  const shubra = PersonFormControllerFixture.shubra;
  const nileStreet = PersonFormControllerFixture.nileStreet;
  const shubraAddress = Address(area: shubra, street: nileStreet);
  const kindergarten = PersonFormControllerFixture.kindergarten;
  const primary = Service(id: 'primary', name: 'ابتدائي', userCanEdit: true);
  final storedPerson = Person(
    id: 'p',
    name: 'مينا',
    address: shubraAddress,
    services: const [kindergarten],
  );

  late PersonFormControllerFixture fixture;

  setUp(() => fixture = PersonFormControllerFixture());

  Future<PersonFormController> validNewPerson() async {
    final controller = fixture.controllerFor(
      const CreatePersonInFamily(
        family: Family(id: 'f', name: 'عائلة', address: shubraAddress),
      ),
    );
    controller.identity.name.setValue('مينا');

    return controller;
  }

  Future<PersonFormController> servantMovingPersonOutOfSight() async {
    fixture.currentUser = const User(
      uid: 'me',
      name: 'خادم',
      adminOn: [AdminOnData(permissionId: 'grant', service: primary)],
    );
    final controller = await fixture.controllerOfLoadedUpdate(
      storedPerson.copyWith(services: const [primary]),
    );
    controller.memberships.selectServices({kindergarten});

    return controller;
  }

  group('submitting', () {
    test('an invalid form saves nothing', () async {
      final controller = fixture.controllerFor(const CreateBlankPerson());

      final outcome = await controller.submit();

      expect(outcome, isA<InvalidPerson>());
      expect(fixture.persons.createdPeople, isEmpty);
    });

    test('an update waits for the saved memberships to load', () async {
      final controller = fixture.controllerOfUpdate(storedPerson);
      controller.identity.name.setValue('مينا جرجس');

      final outcome = await controller.submit();

      expect(outcome, isA<MembershipsNotLoadedYet>());
      expect(fixture.persons.updatedPeople, isEmpty);
    });

    test(
      'an update is refused when the saved memberships failed to load',
      () async {
        final controller = fixture.controllerOfUpdate(storedPerson);
        fixture.persons.savedMembershipsResponse.completeError(
          Exception('offline'),
        );
        await pumpEventQueue();

        final outcome = await controller.submit();

        expect(outcome, isA<MembershipsFailedToLoad>());
        expect(fixture.persons.updatedPeople, isEmpty);
      },
    );

    test('a new person is created', () async {
      final controller = await validNewPerson();

      final outcome = await controller.submit();

      expect(fixture.persons.createdPeople.single.name, 'مينا');
      expect(fixture.persons.updatedPeople, isEmpty);
      expect(
        outcome,
        isA<PersonSaved>()
            .having((saved) => saved.movedOutOfSight, 'movedOutOfSight', false)
            .having((saved) => saved.person.name, 'name', 'مينا'),
      );
    });

    test('an existing person is updated', () async {
      final controller = await fixture.controllerOfLoadedUpdate(storedPerson);
      controller.identity.name.setValue('مينا جرجس');

      final outcome = await controller.submit();

      expect(fixture.persons.updatedPeople.single.name, 'مينا جرجس');
      expect(fixture.persons.createdPeople, isEmpty);
      expect(outcome, isA<PersonSaved>());
    });

    test(
      'moving the person out of sight asks for confirmation first',
      () async {
        final controller = await servantMovingPersonOutOfSight();

        final outcome = await controller.submit();

        expect(outcome, isA<NeedsMoveConfirmation>());
        expect(fixture.persons.updatedPeople, isEmpty);
      },
    );

    test('a confirmed move is saved and reported as moved', () async {
      final controller = await servantMovingPersonOutOfSight();

      final outcome = await controller.submit(confirmedMove: true);

      expect(fixture.persons.updatedPeople, hasLength(1));
      expect(
        outcome,
        isA<PersonSaved>().having(
          (saved) => saved.movedOutOfSight,
          'movedOutOfSight',
          true,
        ),
      );
    });

    test('a failing save carries the error and the attempted person', () async {
      final controller = await validNewPerson();
      fixture.persons.saveError = Exception('offline');

      final outcome = await controller.submit();

      expect(
        outcome,
        isA<PersonSaveFailed>()
            .having((failed) => failed.error, 'error', isA<Exception>())
            .having(
              (failed) => failed.attemptedPerson,
              'attemptedPerson',
              controller.toPerson(),
            ),
      );
    });

    test('the form can be submitted again after a failure', () async {
      final controller = await validNewPerson();
      fixture.persons.saveError = Exception('offline');
      await controller.submit();

      fixture.persons.saveError = null;
      final outcome = await controller.submit();

      expect(outcome, isA<PersonSaved>());
    });

    test('a second submit while saving is turned away', () async {
      final controller = await validNewPerson();
      fixture.persons.saveGate = Completer<void>();
      final firstSubmit = controller.submit();
      await pumpEventQueue();

      final secondOutcome = await controller.submit();
      fixture.persons.saveGate?.complete();
      await firstSubmit;

      expect(secondOutcome, isA<SaveAlreadyInProgress>());
      expect(fixture.persons.createdPeople, hasLength(1));
    });

    test('progress shows saving while the person is being saved', () async {
      final controller = await validNewPerson();
      fixture.persons.saveGate = Completer<void>();

      final submit = controller.submit();
      await pumpEventQueue();
      expect(controller.saveProgress.value, isA<SavingPerson>());

      fixture.persons.saveGate?.complete();
      await submit;
      expect(controller.saveProgress.value, isA<NotSaving>());
    });

    test('disposing the form during the save abandons it quietly', () async {
      final controller = await validNewPerson();
      fixture.persons.saveGate = Completer<void>();
      final submit = controller.submit();
      await pumpEventQueue();

      controller.dispose();
      fixture.persons.saveGate?.complete();

      expect(await submit, isA<SaveAbandonedBecauseFormWasDisposed>());
    });
  });

  group('the photo', () {
    final newPhoto = XFile('/photos/new.jpg');

    test('is left alone when it was not changed', () async {
      final controller = await validNewPerson();

      await controller.submit();

      expect(fixture.photos.uploadedPhotos, isEmpty);
      expect(fixture.photos.peopleWhosePhotoWasDeleted, isEmpty);
    });

    test('is deleted from the saved person', () async {
      final controller = await validNewPerson();
      controller.photo.setValue(const DeletePhoto());

      final outcome = await controller.submit();

      expect(fixture.photos.peopleWhosePhotoWasDeleted, [
        (outcome as PersonSaved).person,
      ]);
    });

    test('is uploaded after the person is saved', () async {
      final controller = await validNewPerson();
      controller.photo.setValue(ReplacePhoto(newPhoto));
      fixture.photos.uploadFinished.complete();

      final outcome = await controller.submit();

      expect(fixture.photos.uploadedPhotos, [newPhoto]);
      expect(outcome, isA<PersonSaved>());
    });

    test('upload progress flows into the save progress', () async {
      final controller = await validNewPerson();
      controller.photo.setValue(ReplacePhoto(newPhoto));
      final seen = <PersonSaveProgress>[];
      controller.saveProgress.addListener(
        () => seen.add(controller.saveProgress.value),
      );

      final submit = controller.submit();
      await pumpEventQueue();
      fixture.photos.reportProgress?.call(0.5);
      fixture.photos.uploadFinished.complete();
      await submit;

      expect(
        seen.whereType<UploadingPhoto>().map((upload) => upload.progress),
        [null, 0.5],
      );
      expect(seen.last, isA<NotSaving>());
    });

    test('a failed upload still reports the person as saved', () async {
      final controller = await validNewPerson();
      controller.photo.setValue(ReplacePhoto(newPhoto));
      fixture.photos.uploadError = Exception('network');
      fixture.photos.uploadFinished.complete();

      final outcome = await controller.submit();

      expect(
        outcome,
        isA<PersonSavedButPhotoFailed>().having(
          (failed) => failed.person.name,
          'person name',
          'مينا',
        ),
      );
    });
  });

  group('deleting', () {
    test('removes the existing person', () async {
      final controller = await fixture.controllerOfLoadedUpdate(storedPerson);

      await controller.deletePerson();

      expect(fixture.persons.deletedPersonIds, ['p']);
    });

    test('is impossible for a person that was never created', () {
      final controller = fixture.controllerFor(const CreateBlankPerson());

      expect(controller.deletePerson, throwsStateError);
    });
  });
}
