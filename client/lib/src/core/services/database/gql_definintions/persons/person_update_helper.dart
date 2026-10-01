import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/helpers.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/mutations.gql.dart';
import 'package:collection/collection.dart';
import 'package:uuid/enums.dart';

class PersonUpdateHelper {
  final Person newPerson;
  final Person oldPerson;

  final Map<String, dynamic> _personDelta;

  late final IterableDifferenceResult<ID> _servicesDiff;
  late final IterableDifferenceResult<ID> _groupsDiff;
  late final IterableDifferenceResult<ID> _hobbiesDiff;
  late final IterableDifferenceResult<ID> _tagsDiff;

  late final PhoneContactChanges _contactChanges = PhoneContactChanges.between(
    initialOwn: oldPerson.contacts,
    desiredOwn: newPerson.contacts,
    initialFamily: newPerson.family?.id == oldPerson.family?.id
        ? oldPerson.familyContacts
        : const [],
    desiredFamily: newPerson.familyContacts,
  );

  bool get _updatePersonsByPk => _personDelta.keys
      .where(
        (k) =>
            k != 'address' &&
            k != 'services' &&
            k != 'groups' &&
            k != 'hobbies' &&
            k != 'tags' &&
            k != 'contacts' &&
            k != 'familyContacts',
      )
      .isNotEmpty;

  bool get _insertPersonsGroups => _groupsDiff.added.isNotEmpty;
  bool get _insertPersonsServices => _servicesDiff.added.isNotEmpty;
  bool get _insertPersonsHobbies => _hobbiesDiff.added.isNotEmpty;
  bool get _insertPersonsTags => _tagsDiff.added.isNotEmpty;

  bool get _deletePersonsGroups => _groupsDiff.removed.isNotEmpty;
  bool get _deletePersonsServices => _servicesDiff.removed.isNotEmpty;
  bool get _deletePersonsHobbies => _hobbiesDiff.removed.isNotEmpty;
  bool get _deletePersonsTags => _tagsDiff.removed.isNotEmpty;

  bool get _insertHistoryConfessionHistoryOne =>
      _personDelta['lastConfession'] != null;
  bool get _insertHistoryKodasHistoryOne => _personDelta['lastKodas'] != null;
  bool get _insertHistoryCallHistoryOne => _personDelta['lastCall'] != null;
  bool get _insertHistoryVisitHistoryOne => _personDelta['lastVisit'] != null;

  List<UuidValue> get _deleteServices =>
      _servicesDiff.removed.map((s) => s.id.toUuid()).toList();
  List<Input_PersonsServicesInsertInput> get _newServices => _servicesDiff.added
      .map(
        (e) => Input_PersonsServicesInsertInput(
          personId: newPerson.id.toUuid(),
          serviceId: e.id.toUuid(),
        ),
      )
      .toList();

  List<UuidValue> get _deleteGroups =>
      _groupsDiff.removed.map((g) => g.id.toUuid()).toList();
  List<Input_PersonsGroupsInsertInput> get _newGroups => _groupsDiff.added
      .map(
        (g) => Input_PersonsGroupsInsertInput(
          personId: newPerson.id.toUuid(),
          groupId: g.id.toUuid(),
        ),
      )
      .toList();

  List<UuidValue> get _deleteHobbies =>
      _hobbiesDiff.removed.map((t) => t.id.toUuid()).toList();
  List<Input_PersonsHobbiesInsertInput> get _newHobbies => _hobbiesDiff.added
      .map(
        (h) => Input_PersonsHobbiesInsertInput(
          personId: newPerson.id.toUuid(),
          hobbyId: h.id.toUuid(),
        ),
      )
      .toList();

  List<UuidValue> get _deleteTags =>
      _tagsDiff.removed.map((t) => t.id.toUuid()).toList();
  List<Input_PersonsTagsInsertInput> get _newTags => _tagsDiff.added
      .map(
        (t) => Input_PersonsTagsInsertInput(
          personId: newPerson.id.toUuid(),
          tagId: t.id.toUuid(),
        ),
      )
      .toList();

  List<Input_ContactsInsertInput> get _newContacts => [
    ..._contactChanges.ownInserts.map(
      (c) => c.toInsertInput().copyWith(personId: newPerson.id.toUuid()),
    ),
    ..._contactChanges.familyInserts.map(
      (f) => f.toInsertInput(familyId: newPerson.family?.id),
    ),
  ];

  bool get _updateAddressByPk =>
      _personDelta.containsKey('address') &&
      !_personDelta.containsKey('familyId');

  Variables_Mutation_updatePerson get variables =>
      Variables_Mutation_updatePerson(
        personId: newPerson.id.toUuid(),
        newPerson: newPerson.toUpdateInput(oldPerson),
        addressId: oldPerson.address?.id?.toUuid() ?? Namespace.nil.uuidValue,
        newAddress: newPerson.address?.toUpdateInput(
          oldPerson.address ?? const Address(),
        ),
        updateAddressByPk: _updateAddressByPk,
        deleteServices: _deleteServices,
        newServices: _newServices,
        deleteGroups: _deleteGroups,
        newGroups: _newGroups,
        deleteHobbies: _deleteHobbies,
        newHobbies: _newHobbies,
        deleteTags: _deleteTags,
        newTags: _newTags,
        lastCall: _getLast('Call'),
        lastConfession: _getLast('Confession'),
        lastKodas: _getLast('Kodas'),
        lastVisit: _getLast('Visit'),
        updatePersonsByPk: _updatePersonsByPk,
        insertPersonsGroups: _insertPersonsGroups,
        insertPersonsServices: _insertPersonsServices,
        insertPersonsHobbies: _insertPersonsHobbies,
        insertPersonsTags: _insertPersonsTags,
        deletePersonsGroups: _deletePersonsGroups,
        deletePersonsServices: _deletePersonsServices,
        deletePersonsHobbies: _deletePersonsHobbies,
        deletePersonsTags: _deletePersonsTags,
        insertHistoryConfessionHistoryOne: _insertHistoryConfessionHistoryOne,
        insertHistoryKodasHistoryOne: _insertHistoryKodasHistoryOne,
        insertHistoryCallHistoryOne: _insertHistoryCallHistoryOne,
        insertHistoryVisitHistoryOne: _insertHistoryVisitHistoryOne,
        deletedContactIds: _contactChanges.deletedIds
            .map((id) => id.toUuid())
            .toList(),
        contactUpdates: _contactChanges.updates
            .map((c) => c.toUpdates())
            .toList(),
        newContacts: _newContacts,
        deleteContacts: _contactChanges.deletedIds.isNotEmpty,
        updateContactsMany: _contactChanges.updates.isNotEmpty,
        insertContacts: _newContacts.isNotEmpty,
      );

  PersonUpdateHelper({required this.newPerson, required this.oldPerson})
    : _personDelta = computeObjectDelta(
        newPerson.toJson(),
        oldPerson.toJson(),
      ) {
    _servicesDiff = _getDifferenceUsing((p) => p.services);
    _groupsDiff = _getDifferenceUsing((p) => p.groups);
    _hobbiesDiff = _getDifferenceUsing((p) => p.hobbies);
    _tagsDiff = _getDifferenceUsing((p) => p.tags);
  }

  IterableDifferenceResult<ID> _getDifferenceUsing(
    Iterable<ID>? Function(Person) selector,
  ) {
    return diff(
      EqualitySet<ID>.from(idEquality, selector(oldPerson) ?? []),
      EqualitySet<ID>.from(idEquality, selector(newPerson) ?? []),
    );
  }

  DateTime? _getLast(String name) => _personDelta['last$name'] != null
      ? LastRecordedByInfo.fromJson(_personDelta['last$name']).time
      : null;
}
