import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

/// The desired state `createPerson` and `updatePerson` take, copied from the
/// edited [person].
///
/// [saved] is the person as the editor loaded it: only the contact ids it
/// holds name rows the server already has, so a contact the editor made up is
/// sent without one and matched by its phone. The family's unclaimed contacts
/// are sent whole: [unclaimedFamilyContacts] are the family's current ones,
/// which the editor never showed unless they were among [saved]'s.
class PersonCommandInputs {
  static const List<String> _columnsTheModelOwns = [
    'name',
    'birthdate',
    'gender',
    'isShammas',
    'shammasLevelId',
    'schoolId',
    'collegeId',
    'churchId',
    'fatherId',
    'jobId',
    'jobDescription',
    'qualificationId',
    'personTypeId',
    'stateId',
    'isServant',
    'notes',
    'familyId',
    'storeId',
    'studyYearId',
    'color',
    'workStatus',
    'martialStatus',
    'servingChurchId',
    'serviceType',
  ];

  final Person person;
  final Person? saved;
  final List<FamilyPhoneContact> unclaimedFamilyContacts;

  /// Whether the family contacts the editor shows differ from those it
  /// loaded, so the family's whole unclaimed set has to be sent.
  bool get familyContactsWereEdited =>
      _familyContactsAreWritable &&
      !const ListEquality<FamilyPhoneContact>().equals(
        person.familyContacts,
        _shownFamilyContacts,
      );

  Input_CreatePersonInput get create => Input_CreatePersonInput(
    name: person.name,
    birthdate: person.birthdate,
    gender: person.gender,
    isShammas: person.isShammas,
    shammasLevelId: person.shammasLevel?.id,
    schoolId: person.school?.id,
    collegeId: person.college?.id,
    churchId: person.church?.id,
    fatherId: person.father?.id,
    jobId: person.job?.id,
    jobDescription: person.jobDescription,
    qualificationId: person.qualification?.id,
    personTypeId: person.personType?.id,
    stateId: person.state?.id,
    isServant: person.isServant,
    notes: person.notes,
    uid: person.uid,
    familyId: person.family?.id,
    storeId: person.store?.id ?? person.storeId,
    studyYearId: person.studyYear?.order,
    color: colorToInt(person.color),
    workStatus: person.workStatus?.name,
    martialStatus: person.martialStatus?.name,
    servingChurchId: person.servingChurch?.id,
    serviceType: person.serviceType,
    services: person.services?.map((s) => s.id).toList(),
    groups: person.groups?.map((g) => g.id).toList(),
    tags: person.tags?.map((t) => t.id).toList(),
    hobbies: person.hobbies?.map((h) => h.id).toList(),
    contacts: _contacts,
    familyContacts: _familyContacts,
    address: person.family == null ? person.address?.toAddressInput() : null,
    lastConfession: person.lastConfession?.time,
    lastKodas: person.lastKodas?.time,
    lastCall: person.lastCall?.time,
    lastVisit: person.lastVisit?.time,
  );

  Input_UpdatePersonInput get update => Input_UpdatePersonInput.fromJson({
    for (final column in _columnsTheModelOwns) column: null,
    ...Input_UpdatePersonInput(
      name: person.name,
      birthdate: person.birthdate,
      gender: person.gender,
      isShammas: person.isShammas,
      shammasLevelId: person.shammasLevel?.id,
      schoolId: person.school?.id,
      collegeId: person.college?.id,
      churchId: person.church?.id,
      fatherId: person.father?.id,
      jobId: person.job?.id,
      jobDescription: person.jobDescription,
      qualificationId: person.qualification?.id,
      personTypeId: person.personType?.id,
      stateId: person.state?.id,
      isServant: person.isServant,
      notes: person.notes,
      familyId: person.family?.id,
      storeId: person.store?.id ?? person.storeId,
      studyYearId: person.studyYear?.order,
      color: colorToInt(person.color),
      workStatus: person.workStatus?.name,
      martialStatus: person.martialStatus?.name,
      servingChurchId: person.servingChurch?.id,
      serviceType: person.serviceType,
      services: person.services?.map((s) => s.id).toList(),
      groups: person.groups?.map((g) => g.id).toList(),
      tags: person.tags?.map((t) => t.id).toList(),
      hobbies: person.hobbies?.map((h) => h.id).toList(),
      contacts: _contacts,
      familyContacts: _familyContacts,
      address: _staysInSavedFamily ? person.address?.toAddressInput() : null,
      lastConfession: person.lastConfession?.time,
      lastKodas: person.lastKodas?.time,
      lastCall: person.lastCall?.time,
      lastVisit: person.lastVisit?.time,
    ).toJson(),
  });

  bool get _staysInSavedFamily =>
      person.family != null && person.family?.id == saved?.family?.id;

  bool get _familyContactsAreWritable =>
      !(person.personType?.isFamilyAdmin ?? false) &&
      (person.family != null || (saved == null && person.address != null));

  List<FamilyPhoneContact> get _shownFamilyContacts =>
      _staysInSavedFamily ? saved?.visibleFamilyContacts ?? const [] : const [];

  List<Input_ContactInput> get _contacts {
    final savedIds = {...?saved?.contacts.map((c) => c.id)};

    return [
      for (final contact in person.contacts)
        Input_ContactInput(
          id: savedIds.contains(contact.id) ? contact.id : null,
          phone: contact.phone,
          label: contact.label,
          isMainPhone: contact.isMainPhone,
        ),
    ];
  }

  List<Input_FamilyContactInput>? get _familyContacts {
    if (!familyContactsWereEdited) return null;

    final shownIds = _shownFamilyContacts.map((f) => f.contact.id).toSet();
    final unclaimedIds = unclaimedFamilyContacts
        .map((f) => f.contact.id)
        .toSet();

    return [
      for (final relative in [
        ...unclaimedFamilyContacts.whereNot(
          (f) => shownIds.contains(f.contact.id),
        ),
        ...person.familyContacts.where((f) => f.personId == null),
      ])
        relative.toFamilyContactInput(
          serverOwnedId: unclaimedIds.lookup(relative.contact.id),
        ),
    ];
  }

  const PersonCommandInputs({
    required this.person,
    this.unclaimedFamilyContacts = const [],
    this.saved,
  });
}
