import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:collection/collection.dart';
import 'package:uuid/uuid.dart';

import '../../iterable_difference_result.dart';
import '../helpers.dart';
import '__generated__/mutations.gql.dart';

class PersonInsertHelper {
  static final _mutationNonExistentVars = {
    'id',
    'church',
    'college',
    'family',
    'father',
    'job',
    'personType',
    'qualification',
    'school',
    'shammasLevel',
    'studyYear',
    'state',
  };

  final Person newPerson;

  final Map<String, dynamic> _personDelta;

  PersonInsertHelper({
    required this.newPerson,
    Person? oldPerson,
  }) : _personDelta = computeObjectDelta(
          newPerson.toJson(),
          (oldPerson ?? Person(id: '', name: '')).toJson(),
        )..removeWhere((k, v) => _mutationNonExistentVars.contains(k));

  List<Input_PersonsServicesInsertInput> get _newServices =>
      (newPerson.services ?? [])
          .map(
            (e) => Input_PersonsServicesInsertInput(
              serviceId: e.id.toUuid(),
            ),
          )
          .toList();

  List<Input_PersonsGroupsInsertInput> get _newGroups =>
      (newPerson.groups ?? [])
          .map(
            (e) => Input_PersonsGroupsInsertInput(
              groupId: e.id.toUuid(),
            ),
          )
          .toList();

  List<Input_PersonsHobbiesInsertInput> get _newHobbies =>
      (newPerson.hobbies ?? [])
          .map(
            (e) => Input_PersonsHobbiesInsertInput(
              hobbyId: e.id.toUuid(),
            ),
          )
          .toList();

  List<Input_PersonsTagsInsertInput> get _newTags => (newPerson.tags ?? [])
      .map(
        (e) => Input_PersonsTagsInsertInput(
          tagId: e.id.toUuid(),
        ),
      )
      .toList();

  Variables_Mutation_insertPerson get variables =>
      Variables_Mutation_insertPerson(
        newPerson: Input_PersonsInsertInput.fromJson(
          {
            ..._personDelta,
            'services':
                Input_PersonsServicesArrRelInsertInput(data: _newServices)
                    .toJson(),
            'groups':
                Input_PersonsGroupsArrRelInsertInput(data: _newGroups).toJson(),
            'hobbies': Input_PersonsHobbiesArrRelInsertInput(data: _newHobbies)
                .toJson(),
            'tags': Input_PersonsTagsArrRelInsertInput(data: _newTags).toJson(),
          },
        ),
      );
}

class PersonUpdateHelper {
  final Person newPerson;
  final Person oldPerson;

  final Map<String, dynamic> _personDelta;

  late final IterableDifferenceResult<ID> _servicesDiff;
  late final IterableDifferenceResult<ID> _groupsDiff;
  late final IterableDifferenceResult<ID> _hobbiesDiff;
  late final IterableDifferenceResult<ID> _tagsDiff;

  PersonUpdateHelper({
    required this.newPerson,
    required this.oldPerson,
  }) : _personDelta =
            computeObjectDelta(newPerson.toJson(), oldPerson.toJson()) {
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

  bool get _updatePersonsByPk => _personDelta.isNotEmpty;

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

  Variables_Mutation_updatePerson get variables =>
      Variables_Mutation_updatePerson(
        personId: newPerson.id.toUuid(),
        newPerson: Input_PersonsSetInput.fromJson(_personDelta),
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
      );

  DateTime? _getLast(String name) => _personDelta['last' + name] != null
      ? LastRecordedByInfo.fromJson(_personDelta['last' + name]).time
      : null;
}
