import 'dart:async';

import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart' show Color;
import 'package:uuid/uuid.dart' show Uuid;

class PersonFormController extends AdvancedFormController {
  final PersonEditIntent intent;
  final PersonsDAO _persons;
  final PhotoUploader _photoUploader;
  final User? _currentUser;
  final OutOfSightAfterSave _outOfSight;
  final Person _startingPerson;
  final AnalyticsService _analyticsService;
  final Stopwatch _sinceFormOpened = Stopwatch()..start();

  final ValueNotifier<PersonSaveProgress> _saveProgress = ValueNotifier(
    const NotSaving(),
  );
  late final ValueListenable<PersonSaveProgress> saveProgress = _saveProgress;
  final ValueNotifier<Set<PersonRuleViolation>> _shownViolations =
      ValueNotifier(const {});
  late final ValueListenable<Set<PersonRuleViolation>> shownViolations =
      _shownViolations;

  bool _violationsAreShown = false;
  bool _familyNumbersWereAllowed = false;

  late final photo = AdvancedFieldController<PhotoChange, PersonEditError>(
    initialValue: const KeepPhoto(),
  );
  late final color = AdvancedFieldController<Color?, PersonEditError>(
    initialValue: _startingPerson.color,
  );
  late final identity = PersonIdentityFormController(person: _startingPerson);
  late final phones = PersonPhoneContactsFormController(
    own: _startingPerson.contacts,
    family: _startingPerson.visibleFamilyContacts,
    canHaveFamilyNumbers: () => household.canHaveFamilyNumbers,
  );
  late final PersonHouseholdFormController household;
  late final PersonMembershipsFormController memberships;
  late final work = PersonWorkFormController(person: _startingPerson);
  late final maritalStatusAndType = PersonMaritalStatusAndTypeFormController(
    person: _startingPerson,
  );
  late final churchAndSpiritual = PersonChurchAndSpiritualFormController(
    person: _startingPerson,
  );
  late final hobbiesTagsAndNotes = PersonHobbiesTagsAndNotesFormController(
    person: _startingPerson,
  );
  late final pastoralDates = PersonPastoralDatesFormController(
    person: _startingPerson,
    recordedByUserId: _currentUser?.uid,
  );

  bool get isCreate => intent is CreatePerson;

  bool get wasModified => value.wasModified;

  Person? get savedPerson => isCreate ? null : memberships.loadedPerson;

  Person get personForPhotoPreview => identity.editedVersionOf(
    _startingPerson.copyWith(color: color.fieldValue),
  );

  Set<PersonRuleViolation> get ruleViolations => {
    if (_nothingPlacesThePerson) const NothingPlacesThePerson(),
    if (_addressChangeIsBlockedByMove) const AddressChangeBlockedByMove(),
    if (_servicesAreOutsideStudyYear) const ServicesOutsideStudyYear(),
    if (_noServiceOrGroupKeepsPersonEditable)
      const NoServiceOrGroupToKeepPersonEditable(),
  };

  PersonSaveOutcome? get _membershipsBlockingSave => isCreate
      ? null
      : switch (memberships.loadState.value) {
          MembershipsLoaded() => null,
          MembershipsLoading() => const MembershipsNotLoadedYet(),
          MembershipsLoadFailed() => const MembershipsFailedToLoad(),
        };

  bool get _nothingPlacesThePerson =>
      household.hasNoAddress &&
      household.family.fieldValue == null &&
      memberships.memberships.fieldValue.servicesAndGroups.isEmpty;

  bool get _addressChangeIsBlockedByMove {
    final saved = savedPerson;
    if (saved == null) return false;

    final addressWasChangedInPlace =
        household.family.fieldValue?.id == saved.family?.id &&
        household.editedAddress != saved.address;

    return addressWasChangedInPlace &&
        _outOfSight.isMovedOutOfSightIgnoringAddress(saved, toPerson());
  }

  bool get _servicesAreOutsideStudyYear => switch (work.studyYear.fieldValue) {
    StudyYear(:final order) when work.isStudent =>
      memberships.memberships.fieldValue.services.any(
        (service) => service.isOutsideStudyYearRangeOf(order),
      ),
    _ => false,
  };

  bool get _noServiceOrGroupKeepsPersonEditable {
    final family = household.family.fieldValue;
    final address = household.editedAddress;
    final area = address?.area;
    final canEditFamily = family == null || _currentUserCanEdit(family);
    final canEditAddress =
        area == null || address?.street == null || _currentUserCanEdit(area);

    return !canEditFamily &&
        !canEditAddress &&
        memberships.memberships.fieldValue.servicesAndGroups.isEmpty;
  }

  PersonFormController({
    required this.intent,
    required this._persons,
    required FamiliesDAO families,
    required AddressFormServices addressServices,
    required this._photoUploader,
    required this._currentUser,
    required this._analyticsService,
  }) : _outOfSight = OutOfSightAfterSave(_currentUser),
       _startingPerson = switch (intent) {
         UpdatePerson(:final personWithRelationIds) => personWithRelationIds,
         final CreatePerson create => create.draftPerson(const Uuid().v4()),
       },
       super(
         debugName: 'person',
         validationMode: ValidationMode.onUserInteraction,
       ) {
    household = PersonHouseholdFormController(
      startingPerson: _startingPerson,
      isCreate: isCreate,
      families: families,
      addressServices: addressServices,
    );
    memberships = PersonMembershipsFormController(
      startingPerson: _startingPerson,
      isCreate: isCreate,
      persons: _persons,
      currentUser: _currentUser,
      analyticsService: _analyticsService,
    );

    registerFields([photo, color]);
    addSubform(identity);
    addSubform(phones);
    addSubform(household);
    addSubform(memberships);
    addSubform(work);
    addSubform(maritalStatusAndType);
    addSubform(churchAndSpiritual);
    addSubform(hobbiesTagsAndNotes);
    addSubform(pastoralDates);

    addRelation(
      maritalStatusAndType.gender,
      (isMale) => isMale,
      _clearShammasWhenFemale,
    );
    addRelation(
      household.family,
      (family) => family?.id,
      (_) => phones.followFamily(saved: household.savedFamilyContacts),
    );
    _familyNumbersWereAllowed = household.canHaveFamilyNumbers;
    household.onValuesChanged.addListener(
      _revalidatePhonesWhenFamilyNumbersBecomeAllowedOrNot,
    );
    onValuesChanged.addListener(_showRuleViolationsIfAlreadyShown);
    memberships.loadState.addListener(_showRuleViolationsIfAlreadyShown);

    if (!isCreate) unawaited(memberships.loadSavedMemberships());
  }

  Person toPerson() => value.subforms
      .whereType<PersonFormSection>()
      .fold(
        _startingPerson.copyWith(color: color.fieldValue),
        (person, section) => section.editedVersionOf(person),
      )
      .copyWith(
        contacts: phones.ownContacts,
        familyContacts: phones.familyContacts,
      );

  @override
  Future<bool> validate() async {
    final fieldsAreValid = await super.validate();
    if (isDisposed) return false;

    _violationsAreShown = true;
    _showRuleViolationsIfAlreadyShown();

    return fieldsAreValid && ruleViolations.isEmpty;
  }

  Future<PersonSaveOutcome> submit({
    Future<bool> Function()? confirmMoveOutOfSight,
  }) async {
    final outcome = await _submitOnce(
      confirmMoveOutOfSight: confirmMoveOutOfSight,
    );
    _maybeTrackSaveAttempt(outcome);

    return outcome;
  }

  Future<void> deletePerson() async {
    if (isCreate) {
      throw StateError('Cannot delete a person that has not been created');
    }

    try {
      await _persons.deleteById(id: _startingPerson.id);
      _analyticsService.track(ObjectDelete(_startingPerson, isSuccess: true));
    } on Object {
      _analyticsService.track(ObjectDelete(_startingPerson, isSuccess: false));
      rethrow;
    }
  }

  Future<PersonSaveOutcome> _submitOnce({
    Future<bool> Function()? confirmMoveOutOfSight,
  }) async {
    if (_saveProgress.value is! NotSaving) return const SaveAlreadyInProgress();
    if (_membershipsBlockingSave case final blocked?) return blocked;

    _saveProgress.value = const SavingPerson();
    Person? submittedPerson;
    try {
      final isValid = await validate();
      if (isDisposed) return const SaveAbandonedBecauseFormWasDisposed();
      if (!isValid) return const InvalidPerson();

      final person = submittedPerson = toPerson();
      final initial = savedPerson;
      final movesOutOfSight =
          initial != null && _outOfSight.isMovedOutOfSight(initial, person);
      if (movesOutOfSight) {
        final unconfirmedMove = await _outcomeIfMoveIsNotConfirmed(
          person,
          confirmMoveOutOfSight,
        );
        if (unconfirmedMove != null) return unconfirmedMove;
      }

      final saved = switch (initial) {
        null => await _persons.createObject(newObject: person),
        final initial =>
          await _persons.updateObject(oldObject: initial, newObject: person) ??
              person,
      };
      if (isDisposed) return const SaveAbandonedBecauseFormWasDisposed();

      return await _applyPhotoChangeTo(saved, movedOutOfSight: movesOutOfSight);
    } on Exception catch (error, stackTrace) {
      if (isDisposed) return const SaveAbandonedBecauseFormWasDisposed();

      return PersonSaveFailed(
        error: error,
        stackTrace: stackTrace,
        attemptedPerson: submittedPerson ?? toPerson(),
      );
    } finally {
      if (!isDisposed) _saveProgress.value = const NotSaving();
    }
  }

  Future<PersonSaveOutcome?> _outcomeIfMoveIsNotConfirmed(
    Person person,
    Future<bool> Function()? confirmMoveOutOfSight,
  ) async {
    _saveProgress.value = const AwaitingMoveConfirmation();
    _analyticsService.track(OutOfSightWarningShow(person));
    final moveConfirmed = await confirmMoveOutOfSight?.call() ?? false;
    if (isDisposed) return const SaveAbandonedBecauseFormWasDisposed();

    _analyticsService.track(
      OutOfSightWarningAnswer(person, isConfirmed: moveConfirmed),
    );
    if (!moveConfirmed) return const MoveOutOfSightDeclined();

    _saveProgress.value = const SavingPerson();

    return null;
  }

  Future<PersonSaveOutcome> _applyPhotoChangeTo(
    Person saved, {
    required bool movedOutOfSight,
  }) async {
    try {
      switch (photo.fieldValue) {
        case KeepPhoto():
          break;

        case DeletePhoto():
          await _photoUploader.deletePhotoOf(saved);

        case ReplacePhoto(:final photo):
          _saveProgress.value = const UploadingPhoto();
          await _photoUploader.uploadPhotoOf(
            saved,
            photo,
            onProgress: (progress) {
              if (isDisposed) return;

              _saveProgress.value = UploadingPhoto(progress: progress);
            },
          );
      }
    } on Exception catch (error, stackTrace) {
      return PersonSavedButPhotoFailed(
        person: saved,
        movedOutOfSight: movedOutOfSight,
        error: error,
        stackTrace: stackTrace,
      );
    }
    if (isDisposed) return const SaveAbandonedBecauseFormWasDisposed();

    return PersonSaved(person: saved, movedOutOfSight: movedOutOfSight);
  }

  void _maybeTrackSaveAttempt(PersonSaveOutcome outcome) {
    final result = ObjectSaveResult.ofPersonOutcome(outcome);
    if (result == null) return;

    _analyticsService.track(
      ObjectSaveAttempt(
        entity: _startingPerson,
        isCreate: isCreate,
        result: result,
        sinceFormOpened: _sinceFormOpened.elapsed,
        ruleViolations: isDisposed ? null : _shownViolations.value,
      ),
    );
  }

  void _clearShammasWhenFemale(bool isMale) {
    if (isMale) return;

    churchAndSpiritual.isShammas.prefill(false);
  }

  void _revalidatePhonesWhenFamilyNumbersBecomeAllowedOrNot() {
    final familyNumbersAreAllowed = household.canHaveFamilyNumbers;
    if (familyNumbersAreAllowed == _familyNumbersWereAllowed) return;

    _familyNumbersWereAllowed = familyNumbersAreAllowed;
    phones.revalidateAfterFamilyAvailabilityChanged();
  }

  void _showRuleViolationsIfAlreadyShown() {
    if (!_violationsAreShown || isDisposed) return;

    final violations = ruleViolations;
    if (!setEquals(violations, _shownViolations.value)) {
      _shownViolations.value = violations;
    }
  }

  bool _currentUserCanEdit(ViewableWithID object) =>
      _currentUser?.canEditObject(object) ?? false;

  @override
  void dispose() {
    household.onValuesChanged.removeListener(
      _revalidatePhonesWhenFamilyNumbersBecomeAllowedOrNot,
    );
    _saveProgress.dispose();
    _shownViolations.dispose();
    super.dispose();
  }
}
