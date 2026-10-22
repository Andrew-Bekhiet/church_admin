import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_address_form_services.dart';
import '../../../../fakes/fake_photo_uploader.dart';
import '../../../../fakes/in_memory_families_dao.dart';

void main() {
  const shubra = Area(id: 'shubra', name: 'شبرا');
  const maadi = Area(id: 'maadi', name: 'المعادي');
  const nile = Street(id: 'nile', name: 'شارع النيل');
  const storedFamily = Family(
    id: 'family',
    name: 'عائلة',
    address: Address(id: 'address', area: shubra, street: nile),
  );
  const shubraServant = User(
    uid: 'me',
    name: 'خادم',
    adminOn: [AdminOnData(permissionId: 'grant', area: shubra)],
  );

  late InMemoryFamiliesDAO families;
  late FamilyFormController form;
  late ObjectSaveOutcome<Family> outcome;

  ObjectSaveCubit<Family> cubitMovingFamilyToMaadi() {
    form = FamilyFormController(
      intent: const UpdateFamily(family: storedFamily),
      families: families,
      addressServices: FakeAddressFormServices.withNothingToSuggest(),
      recordedByUserId: shubraServant.uid,
    );
    addTearDown(form.dispose);
    form.address.area.setValue(maadi);

    return ObjectSaveCubit<Family>(
      form: form,
      dao: families,
      photoUploader: FakePhotoUploader(),
      outOfSight: const OutOfSightAfterSave(shubraServant),
    );
  }

  setUp(() => families = InMemoryFamiliesDAO());

  blocTest<ObjectSaveCubit<Family>, ObjectSaveProgress>(
    'moving a family out of sight waits for confirmation before saving',
    build: cubitMovingFamilyToMaadi,
    act: (cubit) async => outcome = await cubit.submit(),
    expect: () => const [SavingObject(), AwaitingObjectMoveConfirmation()],
    verify: (_) {
      expect(outcome, isA<ObjectNeedsMoveConfirmation<Family>>());
      expect(families.updates, isEmpty);
    },
  );

  blocTest<ObjectSaveCubit<Family>, ObjectSaveProgress>(
    'a confirmed move is saved and reported as moved',
    build: cubitMovingFamilyToMaadi,
    act: (cubit) async {
      await cubit.submit();
      outcome = await cubit.submit(confirmedMove: true);
    },
    verify: (_) {
      expect((outcome as ObjectSaved<Family>).movedOutOfSight, isTrue);
      expect(families.updates.single.editedObject.address?.area, maadi);
    },
  );

  blocTest<ObjectSaveCubit<Family>, ObjectSaveProgress>(
    'a declined move lets the user save again',
    build: cubitMovingFamilyToMaadi,
    act: (cubit) async {
      await cubit.submit();
      cubit.declineMove();
    },
    skip: 2,
    expect: () => const [NotSavingObject()],
  );
}
