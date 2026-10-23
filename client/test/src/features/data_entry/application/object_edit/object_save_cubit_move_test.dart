import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_address_form_services.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/fake_photo_uploader.dart';
import '../../../../fakes/in_memory_families_dao.dart';
import '../../../../fakes/recording_analytics_provider.dart';

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
  late RecordingAnalyticsProvider analytics;

  ObjectSaveCubit<Family> cubitMovingFamilyToMaadi() {
    form = FamilyFormController(
      intent: const UpdateFamily(family: storedFamily),
      familiesDAO: families,
      addressServices: FakeAddressFormServices.withNothingToSuggest(),
      currentUserId: shubraServant.uid,
    );
    addTearDown(form.dispose);
    form.address.area.setValue(maadi);

    return ObjectSaveCubit<Family>(
      form: form,
      dao: families,
      photoUploader: FakePhotoUploader(),
      analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      outOfSight: const OutOfSightAfterSave(shubraServant),
    );
  }

  setUp(() {
    families = InMemoryFamiliesDAO();
    analytics = RecordingAnalyticsProvider();
  });

  blocTest<ObjectSaveCubit<Family>, ObjectSaveProgress>(
    'moving a family out of sight waits for confirmation before saving',
    build: cubitMovingFamilyToMaadi,
    act: (cubit) async {
      final confirmation = Completer<bool>();
      final saving = cubit.submit(
        confirmMoveOutOfSight: () => confirmation.future,
      );
      await pumpEventQueue();
      expect(families.updates, isEmpty);
      confirmation.complete(true);
      outcome = await saving;
    },
    expect: () => const [
      SavingObject(),
      AwaitingObjectMoveConfirmation(),
      SavingObject(),
      NotSavingObject(),
    ],
  );

  blocTest<ObjectSaveCubit<Family>, ObjectSaveProgress>(
    'a confirmed move is saved and reported as moved',
    build: cubitMovingFamilyToMaadi,
    act: (cubit) async => outcome = await cubit.submit(
      confirmMoveOutOfSight: () async => true,
    ),
    verify: (_) {
      expect((outcome as ObjectSaved<Family>).movedOutOfSight, isTrue);
      expect(families.updates.single.editedObject.address?.area, maadi);
    },
  );

  blocTest<ObjectSaveCubit<Family>, ObjectSaveProgress>(
    'a declined move saves nothing and lets the user save again',
    build: cubitMovingFamilyToMaadi,
    act: (cubit) async => outcome = await cubit.submit(
      confirmMoveOutOfSight: () async => false,
    ),
    expect: () => const [
      SavingObject(),
      AwaitingObjectMoveConfirmation(),
      NotSavingObject(),
    ],
    verify: (_) {
      expect(outcome, isA<ObjectMoveOutOfSightDeclined<Family>>());
      expect(families.updates, isEmpty);
    },
  );

  blocTest<ObjectSaveCubit<Family>, ObjectSaveProgress>(
    'a move nobody can confirm is declined',
    build: cubitMovingFamilyToMaadi,
    act: (cubit) async => outcome = await cubit.submit(),
    verify: (_) {
      expect(outcome, isA<ObjectMoveOutOfSightDeclined<Family>>());
      expect(families.updates, isEmpty);
    },
  );

  blocTest<ObjectSaveCubit<Family>, ObjectSaveProgress>(
    'a declined move is tracked as a shown warning answered with no',
    build: cubitMovingFamilyToMaadi,
    act: (cubit) => cubit.submit(confirmMoveOutOfSight: () async => false),
    verify: (_) => expect(
      analytics.trackedEvents.whereType<FormAnalyticsEvent>().map(
        (event) => [event.name, event.properties],
      ),
      [
        [
          'form:out_of_sight_warning_show',
          {'entity_type': 'family', 'family_id': storedFamily.id},
        ],
        [
          'form:out_of_sight_warning_answer',
          {
            'entity_type': 'family',
            'family_id': storedFamily.id,
            'is_confirmed': false,
          },
        ],
      ],
    ),
  );
}
