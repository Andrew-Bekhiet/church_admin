import 'dart:async';

import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart' show Uuid;

class PersonFormController extends AdvancedFormController {
  final PersonEditIntent intent;
  final PersonsDAO _persons;
  final PersonPhotoUploader _photoUploader;
  final User? _currentUser;
  final OutOfSightAfterSave _outOfSight;
  final Person _startingPerson;

  final ValueNotifier<PersonSaveProgress> _saveProgress = ValueNotifier(
    const NotSaving(),
  );
  late final ValueListenable<PersonSaveProgress> saveProgress = _saveProgress;
  final ValueNotifier<Set<PersonRuleViolation>> _shownViolations =
      ValueNotifier(const {});
  late final ValueListenable<Set<PersonRuleViolation>> shownViolations =
      _shownViolations;

  bool _violationsAreShown = false;
  late List<PhoneContact> _ownContacts = _startingPerson.contacts;
  late List<FamilyPhoneContact> _familyContacts =
      _startingPerson.familyContacts;

  late final photo = AdvancedFieldController<PhotoChange, PersonEditError>(
    initialValue: const KeepPhoto(),
  );
  late final identity = PersonIdentityFormController(person: _startingPerson);
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

  Set<PersonRuleViolation> get ruleViolations => {
    if (_nothingPlacesThePerson) const NothingPlacesThePerson(),
    if (_addressChangeIsBlockedByMove) const AddressChangeBlockedByMove(),
    if (_servicesAreOutsideStudyYear) const ServicesOutsideStudyYear(),
    if (_noServiceOrGroupKeepsPersonEditable)
      const NoServiceOrGroupToKeepPersonEditable(),
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
    bool canEdit(ViewableWithID object) =>
        _currentUser?.canEditObject(object) ?? false;

    final family = household.family.fieldValue;
    final address = household.editedAddress;
    final area = address?.area;
    final canEditFamily = family == null || canEdit(family);
    final canEditAddress =
        area == null || address?.street == null || canEdit(area);

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
    );

    registerFields([photo]);
    addSubform(identity);
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
    onValuesChanged.addListener(_showRuleViolationsIfAlreadyShown);
    memberships.loadState.addListener(_showRuleViolationsIfAlreadyShown);

    if (!isCreate) unawaited(memberships.loadSavedMemberships());
  }

  void phoneContactsChanged({
    required List<PhoneContact> own,
    required List<FamilyPhoneContact> family,
  }) {
    _ownContacts = own;
    _familyContacts = family;
  }

  Person get personForPhotoPreview => identity.editedVersionOf(
    hobbiesTagsAndNotes.editedVersionOf(_startingPerson),
  );

  Person toPerson() =>
      <PersonFormSection>[
        identity,
        household,
        memberships,
        work,
        maritalStatusAndType,
        churchAndSpiritual,
        hobbiesTagsAndNotes,
        pastoralDates,
      ].fold(
        _startingPerson.copyWith(
          contacts: _ownContacts,
          familyContacts: _familyContacts,
        ),
        (person, section) => section.editedVersionOf(person),
      );

  @override
  Future<bool> validate() async {
    final fieldsAreValid = await super.validate();
    if (isDisposed) return false;

    _violationsAreShown = true;
    _showRuleViolationsIfAlreadyShown();

    return fieldsAreValid && ruleViolations.isEmpty;
  }

  Future<PersonSaveOutcome> submit({bool confirmedMove = false}) async {
    final canStart = switch (_saveProgress.value) {
      NotSaving() => true,
      AwaitingMoveConfirmation() => confirmedMove,
      SavingPerson() || UploadingPhoto() => false,
    };
    if (!canStart) return const SaveAlreadyInProgress();

    _saveProgress.value = const SavingPerson();
    var stayAwaitingMoveConfirmation = false;
    try {
      final isValid = await validate();
      if (isDisposed) return const SaveAbandonedBecauseFormWasDisposed();
      if (!isValid) return const InvalidPerson();

      final person = toPerson();
      final initial = savedPerson;
      final movesOutOfSight =
          initial != null && _outOfSight.isMovedOutOfSight(initial, person);
      if (movesOutOfSight && !confirmedMove) {
        stayAwaitingMoveConfirmation = true;
        _saveProgress.value = const AwaitingMoveConfirmation();

        return const NeedsMoveConfirmation();
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
      return PersonSaveFailed(
        error: error,
        stackTrace: stackTrace,
        attemptedPerson: toPerson(),
      );
    } finally {
      if (!isDisposed && !stayAwaitingMoveConfirmation) {
        _saveProgress.value = const NotSaving();
      }
    }
  }

  void declineMove() {
    if (_saveProgress.value is AwaitingMoveConfirmation) {
      _saveProgress.value = const NotSaving();
    }
  }

  Future<void> deletePerson() async {
    if (isCreate) {
      throw StateError('Cannot delete a person that has not been created');
    }

    await _persons.deleteById(id: _startingPerson.id);
  }

  @override
  void dispose() {
    _saveProgress.dispose();
    _shownViolations.dispose();
    super.dispose();
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

  void _clearShammasWhenFemale(bool isMale) {
    if (isMale) return;

    churchAndSpiritual.isShammas.prefill(false);
  }

  void _showRuleViolationsIfAlreadyShown() {
    if (!_violationsAreShown || isDisposed) return;

    final violations = ruleViolations;
    if (!setEquals(violations, _shownViolations.value)) {
      _shownViolations.value = violations;
    }
  }
}
