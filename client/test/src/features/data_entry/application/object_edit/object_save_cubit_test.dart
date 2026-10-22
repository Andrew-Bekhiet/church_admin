import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart' show XFile;

import '../../../../fakes/fake_areas_dao.dart';
import '../../../../fakes/fake_photo_uploader.dart';

void main() {
  const storedArea = Area(id: 'shubra', name: 'شبرا');
  final newPhoto = XFile('new-photo.jpg');

  late FakeAreasDAO areas;
  late FakePhotoUploader photos;
  late AreaFormController form;
  late ObjectSaveOutcome<Area> outcome;

  ObjectSaveCubit<Area> cubitEditing(AreaEditIntent intent) {
    form = AreaFormController(intent: intent, currentUserId: 'me');
    addTearDown(() {
      if (!form.isDisposed) form.dispose();
    });

    return ObjectSaveCubit<Area>(
      form: form,
      dao: areas,
      photoUploader: photos,
    );
  }

  ObjectSaveCubit<Area> cubitEditingStoredArea() =>
      cubitEditing(const UpdateArea(area: storedArea));

  setUp(() {
    areas = FakeAreasDAO();
    photos = FakePhotoUploader();
  });

  blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
    'an invalid form saves nothing',
    build: () => cubitEditing(const CreateBlankArea()),
    act: (cubit) async => outcome = await cubit.submit(),
    verify: (_) {
      expect(outcome, isA<InvalidObject<Area>>());
      expect(areas.createdObjects, isEmpty);
    },
  );

  blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
    'a new area is created with the entered values',
    build: () => cubitEditing(const CreateBlankArea()),
    act: (cubit) async {
      form.name.setValue('المعادي');
      outcome = await cubit.submit();
    },
    verify: (_) {
      final created = areas.createdObjects.single;
      expect(created.name, 'المعادي');
      expect((outcome as ObjectSaved<Area>).object, created);
    },
  );

  blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
    'an existing area is updated from what was stored',
    build: cubitEditingStoredArea,
    act: (cubit) async {
      form.name.setValue('شبرا الخيمة');
      outcome = await cubit.submit();
    },
    verify: (_) {
      final update = areas.updates.single;
      expect(update.savedObject, storedArea);
      expect(update.editedObject.name, 'شبرا الخيمة');
    },
  );

  blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
    'saving shows progress and then stops',
    build: cubitEditingStoredArea,
    act: (cubit) => cubit.submit(),
    expect: () => const [SavingObject(), NotSavingObject()],
  );

  blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
    'a failed save carries the area it tried to save',
    build: () {
      areas.saveError = Exception('offline');

      return cubitEditingStoredArea();
    },
    act: (cubit) async {
      form.name.setValue('شبرا الخيمة');
      outcome = await cubit.submit();
    },
    verify: (_) => expect(
      (outcome as ObjectSaveFailed<Area>).attemptedObject.name,
      'شبرا الخيمة',
    ),
  );

  blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
    'a second save while one is running is refused',
    build: () {
      areas.saveGate = Completer<void>();

      return cubitEditingStoredArea();
    },
    act: (cubit) async {
      unawaited(cubit.submit());
      outcome = await cubit.submit();
      areas.saveGate?.complete();
    },
    verify: (_) => expect(outcome, isA<ObjectSaveAlreadyInProgress<Area>>()),
  );

  blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
    'closing the editor during a save abandons it',
    build: () {
      areas.saveGate = Completer<void>();

      return cubitEditingStoredArea();
    },
    act: (cubit) async {
      final saving = cubit.submit();
      form.dispose();
      areas.saveGate?.complete();
      outcome = await saving;
    },
    verify: (_) => expect(
      outcome,
      isA<ObjectSaveAbandonedBecauseEditorClosed<Area>>(),
    ),
  );

  group('the photo', () {
    blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
      'is uploaded after the area is saved',
      build: () {
        photos.uploadFinished.complete();

        return cubitEditingStoredArea();
      },
      act: (cubit) async {
        form.photo.setValue(ReplacePhoto(newPhoto));
        outcome = await cubit.submit();
      },
      verify: (_) => expect(photos.uploadedPhotos, [newPhoto]),
    );

    blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
      'reports upload progress while uploading',
      build: cubitEditingStoredArea,
      act: (cubit) async {
        form.photo.setValue(ReplacePhoto(newPhoto));
        final saving = cubit.submit();
        await pumpEventQueue();
        photos.reportProgress?.call(0.5);
        photos.uploadFinished.complete();
        await saving;
      },
      expect: () => const [
        SavingObject(),
        UploadingObjectPhoto(),
        UploadingObjectPhoto(progress: 0.5),
        NotSavingObject(),
      ],
    );

    blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
      'is deleted from the saved area',
      build: cubitEditingStoredArea,
      act: (cubit) async {
        form.photo.setValue(const DeletePhoto());
        outcome = await cubit.submit();
      },
      verify: (_) => expect(photos.objectsWhosePhotoWasDeleted, [storedArea]),
    );

    blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
      'failing to upload still reports the area as saved',
      build: () {
        photos
          ..uploadError = Exception('upload failed')
          ..uploadFinished.complete();

        return cubitEditingStoredArea();
      },
      act: (cubit) async {
        form.photo.setValue(ReplacePhoto(newPhoto));
        outcome = await cubit.submit();
      },
      verify: (_) => expect(
        (outcome as ObjectSavedButPhotoFailed<Area>).object,
        storedArea,
      ),
    );
  });

  group('deleting', () {
    blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
      'removes the stored area',
      build: cubitEditingStoredArea,
      act: (cubit) => cubit.tryDeleteSavedObject(),
      verify: (_) => expect(areas.deletedIds, [storedArea.id]),
    );

    blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
      'is refused while a save is running',
      build: () {
        areas.saveGate = Completer<void>();

        return cubitEditingStoredArea();
      },
      act: (cubit) async {
        final saving = cubit.submit();
        await cubit.tryDeleteSavedObject();
        areas.saveGate?.complete();
        await saving;
      },
      verify: (_) => expect(areas.deletedIds, isEmpty),
    );

    blocTest<ObjectSaveCubit<Area>, ObjectSaveProgress>(
      'keeps a save from starting until it finishes',
      build: cubitEditingStoredArea,
      act: (cubit) async {
        final deleting = cubit.tryDeleteSavedObject();
        outcome = await cubit.submit();
        await deleting;
      },
      verify: (_) => expect(outcome, isA<ObjectSaveAlreadyInProgress<Area>>()),
    );
  });
}
